package it.accenture.controller;

import java.io.IOException;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Date;

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
import it.accenture.model.Spedizione;
import it.accenture.model.Utente;

public class EffettuaAcquisto extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Prodotto prodotto = new Prodotto();
		int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		prodotto = prodottoService.getProdottoById(idProdotto);
		System.out.println(prodotto);
		prodottoService.close();
		req.setAttribute("prodotto", prodotto);
		RequestDispatcher dispatcher = req.getRequestDispatcher("effettuaAcquisto.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String dateInizioString = req.getParameter("dataInizio");
		String tipoSpedizione = req.getParameter("tipoSpedizione");
		LocalDate dataInizio = LocalDate.parse(dateInizioString);
		Spedizione tipoSpedizione1 = Spedizione.valueOf(tipoSpedizione);
		Calendar inizio = Calendar.getInstance();
		Calendar fine = Calendar.getInstance();
		inizio.set(dataInizio.getYear(), dataInizio.getMonthValue(), dataInizio.getDayOfMonth());
		fine.set(dataInizio.getYear(), dataInizio.getMonthValue(), (dataInizio.getDayOfMonth() + tipoSpedizione1.getGiorni()));
		Date dataInizio1 = inizio.getTime();
		Date dataFine1 = fine.getTime();
		
		System.out.println(dataInizio1 + " - " + dataFine1);
		
		double prezzoProdotto = Double.parseDouble(req.getParameter("prezzoProdotto"));
		int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
		boolean offerta = Boolean.parseBoolean(req.getParameter("offerta"));
		int percSconto = Integer.parseInt(req.getParameter("sconto"));
		int quantitaAcquistata = Integer.parseInt(req.getParameter("quantitaAcquistata"));
		
		HttpSession sessione = req.getSession();
		Utente utenteLoggato = (Utente) sessione.getAttribute("utenteLoggato");
		
		
		double prezzoTotale = (prezzoProdotto * quantitaAcquistata) + tipoSpedizione1.getPrezzoSpedizione(); 
		double sconto = 0;
		double prezzoScontato = 0;
		
		if(offerta) {
			sconto =  (prezzoProdotto + tipoSpedizione1.getPrezzoSpedizione()) * percSconto/100;
			prezzoScontato = prezzoTotale - sconto;
			Acquisto acquisto = new Acquisto();
			acquisto.setTipoSpedizione(tipoSpedizione1);
			acquisto.setDataInizio(dataInizio);
			acquisto.setDataFine(dataFine1.toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
			acquisto.setPrezzoDiSpedizione(tipoSpedizione1.getPrezzoSpedizione());
			acquisto.setQuantitaAcquistata(quantitaAcquistata);
			acquisto.setIdUtente(utenteLoggato.getIdUtente());
			acquisto.setIdProdotto(idProdotto);
			acquisto.setPrezzoTotale(prezzoScontato);
			
			System.out.println(acquisto);
			
			AcquistoDaoImpl acquistoService = new AcquistoDaoImpl();
			acquistoService.insertAcquisto(acquisto);
			resp.sendRedirect("ListaAcquisti");
				
		}else {
			Acquisto acquisto = new Acquisto();
			acquisto.setTipoSpedizione(tipoSpedizione1);
			acquisto.setDataInizio(dataInizio);
			acquisto.setDataFine(dataFine1.toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
			acquisto.setPrezzoDiSpedizione(tipoSpedizione1.getPrezzoSpedizione());
			acquisto.setQuantitaAcquistata(quantitaAcquistata);
			acquisto.setIdUtente(utenteLoggato.getIdUtente());
			acquisto.setIdProdotto(idProdotto);
			acquisto.setPrezzoTotale(prezzoTotale);
			
			System.out.println(acquisto);
			
			AcquistoDaoImpl acquistoService = new AcquistoDaoImpl();
			acquistoService.insertAcquisto(acquisto);
			resp.sendRedirect("ListaAcquisti");
		}
	}

}
