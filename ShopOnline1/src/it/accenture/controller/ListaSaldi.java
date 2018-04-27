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

public class ListaSaldi extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		List<Prodotto> listaSaldi = new ArrayList<>();
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		listaSaldi = prodottoService.getProdottoInOfferta();
		System.out.println("i prodotti sono : " + listaSaldi.size());
		prodottoService.close();
		req.setAttribute("listaSaldi", listaSaldi);
		RequestDispatcher dispatcher = req.getRequestDispatcher("listaSaldi.jsp");
		dispatcher.forward(req, resp);
	}
}
