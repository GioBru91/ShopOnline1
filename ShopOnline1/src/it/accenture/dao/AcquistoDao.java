package it.accenture.dao;

import java.util.List;

import it.accenture.model.Acquisto;

public interface AcquistoDao {

	public void insertAcquisto(Acquisto acquisto);
	
	public List<Acquisto> listaAcquisti (int idCliente);
	
	public List<Acquisto> listaOrdini (int idCliente);
	
	public void close();
	
}
