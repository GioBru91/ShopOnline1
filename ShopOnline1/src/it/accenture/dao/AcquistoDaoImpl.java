package it.accenture.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import it.accenture.model.Acquisto;
import it.accenture.model.Spedizione;
import it.accenture.utilities.DBUtilityConnection;
import oracle.net.aso.a;

public class AcquistoDaoImpl implements AcquistoDao {

	private Connection connection;
	private PreparedStatement prepared;
	private Statement statement;
	
	public AcquistoDaoImpl() {
		connection = DBUtilityConnection.getConnection();
		prepared = null;
		statement = null;
	}
	
	
	@Override
	public void insertAcquisto(Acquisto acquisto) {
		String query = "insert into acquisto values ("
					 + "acquisto_sequence.nextval, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setString(1, acquisto.getTipoSpedizione().toString());
			prepared.setDate(2, Date.valueOf(acquisto.getDataInizio()));
			prepared.setDate(3, Date.valueOf(acquisto.getDataFine()));
			prepared.setDouble(4, acquisto.getPrezzoDiSpedizione());
			prepared.setInt(5, acquisto.getQuantitaAcquistata());
			prepared.setInt(6, acquisto.getIdUtente());
			prepared.setInt(7, acquisto.getIdProdotto());
			prepared.setDouble(8, acquisto.getPrezzoTotale());
			prepared.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(prepared != null ){
				try {
					prepared.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}

	@Override
	public List<Acquisto> getlListaAcquistiByUtente(int idUtente) {
		List<Acquisto> listaAcquisti = new ArrayList<>();
		ResultSet rs = null;
		String query = "select * from acquisto where id_utente = " + idUtente;
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while (rs.next()) {
				Acquisto acquisto = new Acquisto();
				acquisto.setIdAcquisto(rs.getInt(1));
				acquisto.setTipoSpedizione(Spedizione.valueOf(rs.getString(2)));
				acquisto.setDataInizio(rs.getDate(3).toLocalDate());
				acquisto.setDataFine(rs.getDate(4).toLocalDate());
				acquisto.setPrezzoDiSpedizione(rs.getDouble(5));
				acquisto.setQuantitaAcquistata(rs.getInt(6));
				acquisto.setIdUtente(idUtente);
				acquisto.setIdProdotto(rs.getInt(8));
				acquisto.setPrezzoTotale(rs.getDouble(9));
				listaAcquisti.add(acquisto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null){
					rs.close();
				}
				if(statement != null){
					statement.close();
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return listaAcquisti;
	}


	@Override
	public List<Acquisto> getListaOrdiniByUtente(int idUtente) {
		List<Acquisto> listaOrdini = new ArrayList<>();
		ResultSet rs = null;
		String query = "select * from acquisto where sysdate < data_fine and id_utente = " + idUtente;
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while (rs.next()) {
				Acquisto acquisto = new Acquisto();
				acquisto.setIdAcquisto(rs.getInt(1));
				acquisto.setTipoSpedizione(Spedizione.valueOf(rs.getString(2)));
				acquisto.setDataInizio(rs.getDate(3).toLocalDate());
				acquisto.setDataFine(rs.getDate(4).toLocalDate());
				acquisto.setPrezzoDiSpedizione(rs.getDouble(5));
				acquisto.setQuantitaAcquistata(rs.getInt(6));
				acquisto.setIdUtente(idUtente);
				acquisto.setIdProdotto(rs.getInt(8));
				acquisto.setPrezzoTotale(rs.getDouble(9));
				listaOrdini.add(acquisto);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if (rs != null){
					rs.close();
				}
				if(statement != null){
					statement.close();
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return listaOrdini;
	}

	@Override
	public void close() {
		try {
			connection.close();
		} catch (SQLException e) {		
			e.printStackTrace();
		}
		
	}


	
	
	

}
