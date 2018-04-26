package it.accenture.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Utente;

public class Registrazione extends HttpServlet {

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String nome = req.getParameter("nome");
	String cognome = req.getParameter("cognome");
	String username = req.getParameter("username");
	String password = req.getParameter("password");
    Utente utente = new Utente();
    utente.setNome(nome);
    utente.setCognome(cognome);
    utente.setUsername(username);
    utente.setPassword(password);
    System.out.println(utente);
    UtenteDaoImpl utenteService = new UtenteDaoImpl();
    utenteService.registrazione(utente);
    System.out.println("utente registrato");
    utenteService.close();
    RequestDispatcher dispatcher =
    	req.getRequestDispatcher("registrazione.jsp?form=login");
    dispatcher.forward(req, resp);
    
    
}


}
