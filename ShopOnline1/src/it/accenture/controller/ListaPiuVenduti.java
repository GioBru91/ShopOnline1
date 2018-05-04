package it.accenture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.model.Prodotto;

public class ListaPiuVenduti extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Prodotto> listaPiuVenduti = new ArrayList<>();
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		listaPiuVenduti = prodottoService.prodottiPiuVenduti();
		System.out.println("i prodotti più venduti sono : " + listaPiuVenduti.size());
		for (Prodotto prodotto : listaPiuVenduti) {
			System.out.println(prodotto);
		}
		prodottoService.close();
		req.getSession().setAttribute("listaPiuVenduti", listaPiuVenduti);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
		dispatcher.forward(req, resp);
		
		
	}

}
