package it.accenture.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import it.accenture.model.Acquisto;
import it.accenture.utilities.DBUtilityConnection;

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
					 + "acquisto_sequence.nextval, ?, ?, ?, ?, ?, ?, ?";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, acquisto.getIdAcquisto());
			prepared.setString(2, acquisto.getTipoSpedizione().toString());
			prepared.setDate(3, Date.valueOf(acquisto.getDataInizio()));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public List<Acquisto> listaAcquisti(int idCliente) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Acquisto> listaOrdini(int idCliente) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void close() {
		// TODO Auto-generated method stub
		
	}
	
	

}
