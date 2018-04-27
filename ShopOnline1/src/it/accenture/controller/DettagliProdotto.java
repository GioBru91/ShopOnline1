package it.accenture.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.model.Prodotto;

public class DettagliProdotto extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Prodotto prodotto = new Prodotto();
		int idProdotto = Integer.parseInt("idProdotto");
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		prodotto = prodottoService.getProdottoById(idProdotto);
		System.out.println(prodotto);
		prodottoService.close();
		req.setAttribute("dettagliProdotto", prodotto);
		RequestDispatcher dispatcher = req.getRequestDispatcher("dettagliProdotto.jsp");
		dispatcher.forward(req, resp);
		
	}

}
