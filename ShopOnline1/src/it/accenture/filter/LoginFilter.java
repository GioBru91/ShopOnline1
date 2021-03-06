package it.accenture.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.model.Utente;

public class LoginFilter implements Filter {

	
	@Override
	public void destroy() {

	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		
		
		HttpServletRequest httpReq = (HttpServletRequest) req;
		HttpServletResponse httpResp = (HttpServletResponse) resp;
		HttpSession session = httpReq.getSession();
		Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato");
		String url = httpReq.getRequestURL().toString();
		System.out.println(url);
		if(url.contains("index.jsp")) {
			System.out.println("accesso negato");
			httpResp.sendRedirect("index.html");
		} else if (utenteLoggato == null && url.contains("Logout")) {
			System.out.println("accesso negato");
			httpResp.sendRedirect("index.html");
		}else if (utenteLoggato == null && url.contains("ListaAcquisti")) {
			System.out.println("accesso negato");
			httpResp.sendRedirect("index.html");	
		}else if (utenteLoggato == null && url.contains("myAccount.jsp")) {
			System.out.println("accesso negato");
			httpResp.sendRedirect("index.html");
		}else if (utenteLoggato == null && url.contains("modificaAccount.jsp")) {
			System.out.println("accesso negato");
			httpResp.sendRedirect("index.html");
		}else if (utenteLoggato == null && url.contains("Carrello")) {
			System.out.println("accesso negato");
			httpResp.sendRedirect("index.html");
		} else if (utenteLoggato == null && url.contains("ListaOrdini")) {
			System.out.println("accesso negato");
			httpResp.sendRedirect("index.html");
		} else if (utenteLoggato == null && url.contains("EffettuaAcquisto")) {
			System.out.println("accesso negato");
			httpResp.sendRedirect("index.html");
		} else if (utenteLoggato == null && url.contains("effettuaAcquisto.jsp")) {
			System.out.println("accesso negato");
			httpResp.sendRedirect("index.html");
		} else if (utenteLoggato == null && url.contains("PrendiProdotto")) {
			System.out.println("accesso negato");
			httpResp.sendRedirect("index.html");
		} else if (utenteLoggato == null && url.contains("InserisciRecensione")) {
			System.out.println("accesso negato");
			httpResp.sendRedirect("index.html");
		} else if (utenteLoggato == null && url.contains("inserisciRecensione.jsp")) {
			System.out.println("accesso negato");
			httpResp.sendRedirect("index.html");
		} else {
			chain.doFilter(req, resp);
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}
	
}
	