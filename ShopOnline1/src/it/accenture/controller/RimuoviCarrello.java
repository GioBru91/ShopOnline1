package it.accenture.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.servlet4preview.RequestDispatcher;

import it.accenture.model.Prodotto;
import it.accenture.model.Utente;

public class RimuoviCarrello extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato");
		
		
		double prezzoTotale = 0;
		double sconto = 0;
		double prezzoFinale= 0;
		List<Prodotto> l = (List<Prodotto>) session.getAttribute("listaCarrello");
		int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
		for(int i=0; i<l.size();) {
			if(l.get(i).getIdProdotto() == idProdotto) {
				l.remove(i);
				for (Prodotto prodotto2 : l) {
					//int j = -1;
					if(prodotto2.isOfferta()) {
						sconto = prodotto2.getPrezzo() * prodotto2.getSconto()/100;
						prezzoFinale = prodotto2.getPrezzo() - sconto;
						prezzoTotale = prezzoTotale + prezzoFinale;
						System.out.println(prezzoTotale);
					}else {
						prezzoFinale = prodotto2.getPrezzo();
						prezzoTotale = prezzoTotale + prezzoFinale;
						System.out.println(prezzoTotale);
					}
				}
				
			}else {
				i++;
			}	
		}
		
		System.out.println("oggetto rimosso, size : " + l.size());
		List<Prodotto> l1 = (List<Prodotto>) session.getAttribute("listaCarrello");
		session.setAttribute("prezzoTotale", prezzoTotale);
		System.out.println("nuova size : " + l1.size());
		resp.sendRedirect("listaCarrello.jsp");
	}

}
