package it.accenture.dao;

import java.util.List;

import it.accenture.model.Acquisto;
import it.accenture.model.Prodotto;

public interface AcquistoDao {

	public void insertAcquisto(Acquisto acquisto);
	
	public List<Acquisto> getlListaAcquistiByUtente(int idUtente);
	
	public List<Acquisto> getListaOrdiniByUtente (int idUtente);
	
	
	public void close();

	
}
