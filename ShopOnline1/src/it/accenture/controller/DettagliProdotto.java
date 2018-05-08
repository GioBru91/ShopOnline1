package it.accenture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.dao.RecensioniDaoImpl;
import it.accenture.model.Prodotto;
import it.accenture.model.Recensioni;

public class DettagliProdotto extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		Prodotto prodotto = new Prodotto();
		int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		prodotto = prodottoService.getProdottoById(idProdotto);
		System.out.println(prodotto);
		prodottoService.close();
		req.setAttribute("prodotto", prodotto);
		
		RecensioniDaoImpl recensioniService = new RecensioniDaoImpl();
		List<Recensioni> listaRecensioni = new ArrayList<>();
		listaRecensioni = recensioniService.getRecensioniByProdotto(idProdotto);
		System.out.println("le recensioni sono : " + listaRecensioni.size());
		recensioniService.close();
		req.setAttribute("listaRecensioni", listaRecensioni);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("dettagliProdotto.jsp");
		dispatcher.forward(req, resp);
		
	}

}
