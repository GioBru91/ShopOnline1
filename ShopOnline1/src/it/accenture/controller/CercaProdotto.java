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

public class CercaProdotto extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String keyword = req.getParameter("nomeProdotto");
		List<Prodotto> listaCerca = new ArrayList<>();
		
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();	
		listaCerca = prodottoService.getProdottoByCerca(keyword);
		System.out.println("i prodotti sono : " + listaCerca.size());
		prodottoService.close();
		req.setAttribute("listaCerca", listaCerca);
		req.setAttribute("keyword", keyword);
		RequestDispatcher dispatcher = req.getRequestDispatcher("listaCerca.jsp");
		dispatcher.forward(req, resp);
	
	
	}

}
