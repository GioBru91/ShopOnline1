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

import it.accenture.dao.AcquistoDaoImpl;
import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.model.Acquisto;
import it.accenture.model.Prodotto;
import it.accenture.model.Utente;

public class ListaOrdini extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sessione = req.getSession();
		Utente utenteLoggato = (Utente) sessione.getAttribute("utenteLoggato");
		
		List<Prodotto> listaProdottiOrdini = new ArrayList<>();
		List<Acquisto> listaOrdini = new ArrayList<>();
		AcquistoDaoImpl acquistiService = new AcquistoDaoImpl();
		listaOrdini = acquistiService.getListaOrdiniByUtente(utenteLoggato.getIdUtente());
		System.out.println("Gli ordini sono : " + listaOrdini.size());
		acquistiService.close();
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		int idProdotto = 0;
		Prodotto prodotto = new Prodotto();
		for (Acquisto acquisto : listaOrdini) {
			idProdotto = acquisto.getIdProdotto();
			prodotto = prodottoService.getProdottoById(idProdotto);
			
			listaProdottiOrdini.add(prodotto);
		}	
		prodottoService.close();
		System.out.println("la size é " + listaProdottiOrdini.size());
		req.setAttribute("listaProdottiOrdini", listaProdottiOrdini);
		req.setAttribute("listaOrdini", listaOrdini);
		RequestDispatcher dispatcher = req.getRequestDispatcher("listaOrdini.jsp");
		dispatcher.forward(req, resp);
	}

}
