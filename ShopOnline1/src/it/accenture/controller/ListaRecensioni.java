package it.accenture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.dao.RecensioniDaoImpl;
import it.accenture.model.Prodotto;
import it.accenture.model.Recensioni;
import it.accenture.model.Utente;

public class ListaRecensioni extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sessione = req.getSession();
		Utente utenteLoggato = (Utente) sessione.getAttribute("utenteLoggato");
		
		
		int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
		
		List<Recensioni> listaRecensioni = new ArrayList<>();
		RecensioniDaoImpl recensioniService = new RecensioniDaoImpl();
		listaRecensioni = recensioniService.getRecensioniByProdotto(idProdotto);
		System.out.println("le recensioni sono : " + listaRecensioni.size());
		recensioniService.close();
		req.setAttribute("listaRecensioni", listaRecensioni);
		RequestDispatcher dispatcher = req.getRequestDispatcher("DettagliProdotto");
		dispatcher.forward(req, resp);
	}

}
