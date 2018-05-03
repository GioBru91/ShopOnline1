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
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String nome = req.getParameter("nome");
		String cognome = req.getParameter("cognome");
		String indirizzo = req.getParameter("indirizzo");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
	    Utente utente = new Utente();
	    utente.setNome(nome);
	    utente.setCognome(cognome);
	    utente.setIndirizzo(indirizzo);
	    utente.setUsername(username);
	    utente.setPassword(password);
	    System.out.println(utente);
	    UtenteDaoImpl utenteService = new UtenteDaoImpl();
	    Utente controlloUtente = utenteService.controlloUsername(username);
	    if (controlloUtente == null) {
	    	utenteService.updateUtente(utente);
			System.out.println("utente registrato");
			utenteService.close();
		    RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
		    dispatcher.forward(req, resp);
		}else {
		    System.out.println("username gia utilizzato");
	    	req.setAttribute("errore1", true);
	    	RequestDispatcher dispatcher = req.getRequestDispatcher("modificaAccount.jsp");
		    dispatcher.forward(req, resp);
	    }
		
		
		
	}

}
