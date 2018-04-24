package it.accenture.dao;

import it.accenture.model.Utente;

public interface UtenteDao {

	public void registrazione(Utente utente);
	
	public Utente login(String username, String password);
	
	public void close();
	
}
