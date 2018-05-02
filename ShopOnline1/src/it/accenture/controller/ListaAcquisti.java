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
import it.accenture.model.Acquisto;
import it.accenture.model.Utente;



public class ListaAcquisti extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sessione = req.getSession();
		Utente utenteLoggato = (Utente) sessione.getAttribute("utenteLoggato");
		
		List<Acquisto> listaAcquisti = new ArrayList<>();
		AcquistoDaoImpl acquistiService = new AcquistoDaoImpl();
		listaAcquisti = acquistiService.getlListaAcquistiByUtente(utenteLoggato.getIdUtente());
		System.out.println("Gli acquisti sono : " + listaAcquisti.size());
		acquistiService.close();
		req.setAttribute("listaAcquisti", listaAcquisti);
		RequestDispatcher dispatcher = req.getRequestDispatcher("listaAcquisti.jsp");
		dispatcher.forward(req, resp);
	}

}
