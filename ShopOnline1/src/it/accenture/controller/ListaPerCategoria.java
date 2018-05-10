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
import it.accenture.model.Categoria;
import it.accenture.model.Prodotto;

public class ListaPerCategoria extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Categoria categoria = Categoria.valueOf(req.getParameter("categoria"));
		List<Prodotto> listaPerCategoria = new ArrayList<>();
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		listaPerCategoria = prodottoService.getProdottoPerCategoria(categoria);
		System.out.println("i prodotti per categoria sono : " + listaPerCategoria.size());
		prodottoService.close();
		req.setAttribute("listaPerCategoria", listaPerCategoria);
		req.setAttribute("categoria", categoria);
		RequestDispatcher dispatcher = req.getRequestDispatcher("listaPerCategoria.jsp");
		dispatcher.forward(req, resp);
	}

}
