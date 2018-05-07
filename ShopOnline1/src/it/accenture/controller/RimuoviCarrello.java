package it.accenture.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.model.Prodotto;
import it.accenture.model.Utente;

public class RimuoviCarrello extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato");
		
		
		List<Prodotto> l = (List<Prodotto>) session.getAttribute("listaCarrello");
		int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
		for(int i=0; i<l.size();) {
			if(l.get(i).getIdProdotto() == idProdotto) {
				l.remove(i);
				System.out.println("oggetto rimosso, size : " + l.size());
			}else {
				i++;
			}
		}
		List<Prodotto> l1 = (List<Prodotto>) session.getAttribute("listaCarrello");
		System.out.println("nuova size : " + l1.size());
		resp.sendRedirect("listaCarrello.jsp");
	}

}
