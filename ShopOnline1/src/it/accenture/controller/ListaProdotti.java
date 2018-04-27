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

public class ListaProdotti extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Prodotto> listaProdotti = new ArrayList<>();
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		listaProdotti = prodottoService.getAllProdotto();
		System.out.println("i prodotti sono : " + listaProdotti.size());
		prodottoService.close();
		req.setAttribute("listaProdotti", listaProdotti);
		RequestDispatcher dispatcher = req.getRequestDispatcher("listaProdotti.jsp");
		dispatcher.forward(req, resp);
	}

}
