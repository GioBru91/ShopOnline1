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
import it.accenture.model.Prodotto;
import it.accenture.model.Utente;

public class Carrello extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato");
		
		int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
		
		List<Prodotto> listaCarrello = (List<Prodotto>) session.getAttribute("listaCarrello");
		
		if(listaCarrello == null) {
			listaCarrello = new ArrayList<>();
		}
		double prezzoTotale = 0;
		double sconto = 0;
		double prezzoFinale= 0;
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		Prodotto prodotto = new Prodotto();
		prodotto = prodottoService.getProdottoById(idProdotto);
		prodottoService.close();
		boolean controllo = false;
		if(listaCarrello.size() >0) {
			for (Prodotto p : listaCarrello) {
				if(p.getIdProdotto() == idProdotto) {
					System.out.println("Prodotto gi� inserito nel carrello");
					controllo= true;
				}
			}
			if(controllo) {
				req.setAttribute("errore1", true);
		    	RequestDispatcher dispatcher = req.getRequestDispatcher("ListaProdotti");
			    dispatcher.forward(req, resp);
			}else {
				listaCarrello.add(prodotto);
				for (Prodotto prodotto2 : listaCarrello) {
					if(prodotto2.isOfferta()) {
						sconto = prodotto2.getPrezzo() * prodotto2.getSconto()/100;
						prezzoFinale = prodotto2.getPrezzo() - sconto;
						
					}else {
						prezzoFinale = prodotto2.getPrezzo();
					}
					prezzoTotale += prezzoFinale;
					System.out.println(prezzoTotale);
				}
				session.setAttribute("listaCarrello", listaCarrello);
				session.setAttribute("prezzoTotale", prezzoTotale);
				resp.sendRedirect("ListaProdotti");
			}
			
		}else {
			listaCarrello.add(prodotto);
			for (Prodotto prodotto2 : listaCarrello) {
				if(prodotto2.isOfferta()) {
					sconto = prodotto2.getPrezzo() * prodotto2.getSconto()/100;
					prezzoFinale = prodotto2.getPrezzo() - sconto;
					
				}else {
					prezzoFinale = prodotto2.getPrezzo();
				}
				prezzoTotale += prezzoFinale;
				System.out.println(prezzoTotale);
			}
			
			session.setAttribute("listaCarrello", listaCarrello);
			session.setAttribute("prezzoTotale", prezzoTotale);
			
			resp.sendRedirect("ListaProdotti");
			
		}
		
		
		
	}

}
