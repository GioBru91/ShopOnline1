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

public class InserisciRecensione extends HttpServlet{
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sessione = req.getSession();
		Utente utenteLoggato = (Utente) sessione.getAttribute("utenteLoggato");
		
		
		int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		Prodotto prodotto = new Prodotto();
		prodotto = prodottoService.getProdottoById(idProdotto);
		prodottoService.close();
		String titolo = req.getParameter("titolo");
		String contenuto = req.getParameter("recensione");

		req.setAttribute("prodotto", prodotto);		
		Recensioni recensioni = new Recensioni();
		recensioni.setIdUtente(utenteLoggato.getIdUtente());
		recensioni.setIdProdotto(idProdotto);
		recensioni.setTitolo(titolo);
		recensioni.setContenuto(contenuto);
		
		System.out.println(recensioni);
		System.out.println(prodotto);
		
		RecensioniDaoImpl recensioniService = new RecensioniDaoImpl();
		
		recensioniService.insertRecensioni(recensioni);
		recensioniService.close();
		
		//RequestDispatcher dispatcher = req.getRequestDispatcher("DettagliProdotto");
		//dispatcher.forward(req, resp);
		
		resp.sendRedirect("DettagliProdotto?idProdotto=" + idProdotto);
	    
		
	}
	
	

}
