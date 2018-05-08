package it.accenture.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.model.Prodotto;
import it.accenture.model.Utente;

public class RimuoviCarrelloAcquisto extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato");
		List<Prodotto> l = (List<Prodotto>) session.getAttribute("listaCarrello");
		int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
		boolean controllo = true;
		if(l != null && l.size() != 0) {
			for(int i=0; i<l.size(); i++) {
				if(l.get(i).getIdProdotto() == idProdotto) {
				    controllo = false;
				}
			}
			if(controllo) {
				resp.sendRedirect("ListaOrdini");
			}else {
				RequestDispatcher dispatcher = req.getRequestDispatcher("RimuoviCarrello");
			    dispatcher.forward(req, resp);
			}
			
		}else {
			resp.sendRedirect("ListaOrdini");
		}
		
	}
	
}

