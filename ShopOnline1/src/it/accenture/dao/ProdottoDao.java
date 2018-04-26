package it.accenture.dao;

import java.util.List;

import it.accenture.model.Categoria;
import it.accenture.model.Prodotto;

public interface ProdottoDao {

	public List<Prodotto> getAllProdotto();
	
	public List<Prodotto> getProdottoInOfferta();
	
	public List<Prodotto> getProdottoPerCategoria(Categoria categoria);
	
	public Prodotto getProdottoById(int idProdotto);
	
	public Prodotto getProdottoByNome(String nomeProdotto);
	
	public void close();
	
}
