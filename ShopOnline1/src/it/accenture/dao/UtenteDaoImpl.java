package it.accenture.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import it.accenture.model.Utente;
import it.accenture.utilities.DBUtilityConnection;

public class UtenteDaoImpl implements UtenteDao{

	private Connection connection;
	private PreparedStatement prepared;
	
	public UtenteDaoImpl() {
		connection = DBUtilityConnection.getConnection();
		prepared = null;
	}
	
	@Override
	public void registrazione(Utente utente) {
	
		String query = "insert into utente values "
					 + "(utente_sequence.nextval, ?, ?, ?, ?, ?)";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setString(1, utente.getNome());
			prepared.setString(2, utente.getCognome());
			prepared.setString(3, utente.getUsername());
			prepared.setString(4, utente.getPassword());
			prepared.setString(5, utente.getIndirizzo());
			prepared.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			if (prepared != null){
				try {
					prepared.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}

	@Override
	public Utente login(String username, String password) {
		Utente utente = null;
		ResultSet rs = null;
		String query = "select * from utente where username = ? and password = ?";
		try {
			prepared= connection.prepareStatement(query);
			prepared.setString(1, username);
			prepared.setString(2, password);
			rs = prepared.executeQuery();
			if(rs.next()){
				utente = new Utente();
				utente.setIdUtente(rs.getInt(1));
				utente.setNome(rs.getString(2));
				utente.setCognome(rs.getString(3));
				utente.setUsername(username);
				utente.setPassword(password);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				if(prepared != null){
					prepared.close();
				}
				if (rs != null){
					rs.close();
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}	
		}
		return utente;
	}

	@Override
	public void close() {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}

	@Override
	public Utente controlloUsername(String username) {
		Utente utente = null;
		ResultSet rs = null;
		String query = "select * from utente where username = ?";
		try {
			prepared= connection.prepareStatement(query);
			prepared.setString(1, username);
			rs = prepared.executeQuery();
			if(rs.next()){
				utente = new Utente();
				utente.setIdUtente(rs.getInt(1));
				utente.setNome(rs.getString(2));
				utente.setCognome(rs.getString(3));
				utente.setUsername(username);
				utente.setPassword(rs.getString(5));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				if(prepared != null){
					prepared.close();
				}
				if (rs != null){
					rs.close();
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}	
		}
		return utente;
	}

	@Override
	public void updateUtente(Utente utente) {
		String query = "update utente set nome = ?, cognome = ?, username = ?, password = ?, indirizzo = ?";
		
		try {
			prepared = connection.prepareStatement(query);
			prepared.setString(1, utente.getNome());
			prepared.setString(2, utente.getCognome());
			prepared.setString(3, utente.getUsername());
			prepared.setString(4, utente.getPassword());
			prepared.setString(5, utente.getIndirizzo());
			prepared.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (prepared != null){
				try {
					prepared.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
		}
		
		
		
	}


	
}
