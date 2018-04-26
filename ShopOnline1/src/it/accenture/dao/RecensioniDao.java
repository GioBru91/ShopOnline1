package it.accenture.dao;

import java.util.List;

import it.accenture.model.Recensioni;

public interface RecensioniDao {

	public void insertRecensioni(Recensioni recensioni);
	
	public List<Recensioni> getRecensioniByProdotto(int idProdotto);
	
	public void close();
	
}
