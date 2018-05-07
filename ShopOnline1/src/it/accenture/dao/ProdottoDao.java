package it.accenture.dao;

import java.util.List;

import it.accenture.model.Categoria;
import it.accenture.model.Prodotto;

public interface ProdottoDao {

	public List<Prodotto> getAllProdotto();
	
	public List<Prodotto> getProdottoInOfferta();
	
	public List<Prodotto> getProdottoPerCategoria(Categoria categoria);
	
	public Prodotto getProdottoById(int idProdotto);
	
	public List<Prodotto> getProdottoByNome(String nomeProdotto);
	
	public List<Prodotto> prodottiPiuVenduti();
	
	public void updateQuantità (int nuovaQuantita, int idProdotto);
	
	public void close();
	
}
