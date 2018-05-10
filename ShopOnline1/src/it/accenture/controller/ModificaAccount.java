package it.accenture.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Utente;

public class ModificaAccount extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String nome = req.getParameter("nome");
		String cognome = req.getParameter("cognome");
		String indirizzo = req.getParameter("indirizzo");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		HttpSession sessione = req.getSession();
		Utente utente = (Utente) sessione.getAttribute("utenteLoggato");
	
	    UtenteDaoImpl utenteService = new UtenteDaoImpl();
	    Utente controlloUtente = utenteService.controlloUsername(username);
	    if (controlloUtente == null) {
	    	utente.setNome(nome);
		    utente.setCognome(cognome);
		    utente.setIndirizzo(indirizzo);
		    utente.setUsername(username);
		    utente.setPassword(password);
		    utenteService.updateUtente(utente);
			System.out.println(utente);
			utenteService.close();
			RequestDispatcher dispatcher = req.getRequestDispatcher("myAccount.jsp");
			dispatcher.forward(req, resp);
	    }else {
		    System.out.println("username gia utilizzato");
	    	req.setAttribute("errore1",true);
	    	RequestDispatcher dispatcher = req.getRequestDispatcher("modificaAccount.jsp");
		    dispatcher.forward(req, resp);
	    }	
		
	}

}
