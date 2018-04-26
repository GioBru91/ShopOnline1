package it.accenture.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import it.accenture.model.Categoria;
import it.accenture.model.Prodotto;
import it.accenture.utilities.DBUtilityConnection;

public class ProdottoDaoImpl implements ProdottoDao{

	private Connection connection;
	private PreparedStatement prepared;
	private Statement statement;
	
	public ProdottoDaoImpl() {
		connection = DBUtilityConnection.getConnection();
		prepared = null;
		statement = null;
	}
	
	@Override
	public List<Prodotto> getAllProdotto() {
		List<Prodotto> listaProdotti = new ArrayList<>();
		ResultSet rs = null;
		String query = "select * from prodotto";
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while (rs.next()) {
				Prodotto prodotto = new Prodotto();
				prodotto.setIdProdotto(rs.getInt(1));
				prodotto.setNome(rs.getString(2));
				prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
				prodotto.setMarca(rs.getString(4));
				prodotto.setPrezzo(rs.getDouble(5));
				prodotto.setOfferta(rs.getBoolean(6));
				prodotto.setSconto(rs.getInt(7));
				prodotto.setQuantitaDisponibile(rs.getInt(8));
				prodotto.setImmagine(rs.getString(9));
				listaProdotti.add(prodotto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				if(statement != null){
					statement.close();
				}
				if (rs != null){
					rs.close();
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}	
		return listaProdotti;
	}

	@Override
	public List<Prodotto> getProdottoInOfferta() {
		List<Prodotto> listaProdotti = new ArrayList<>();
		ResultSet rs = null;
		String query = "select * from prodotto where offerta = 'true'";
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while (rs.next()) {
				Prodotto prodotto = new Prodotto();
				prodotto.setIdProdotto(rs.getInt(1));
				prodotto.setNome(rs.getString(2));
				prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
				prodotto.setMarca(rs.getString(4));
				prodotto.setPrezzo(rs.getDouble(5));
				prodotto.setOfferta(rs.getBoolean(6));
				prodotto.setSconto(rs.getInt(7));
				prodotto.setQuantitaDisponibile(rs.getInt(8));
				prodotto.setImmagine(rs.getString(9));
				listaProdotti.add(prodotto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				if(statement != null){
					statement.close();
				}
				if (rs != null){
					rs.close();
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}	
		
		return listaProdotti;
	}

	@Override
	public List<Prodotto> getProdottoPerCategoria(Categoria categoria) {
		String categoria1 = categoria.toString();
		List<Prodotto> listaProdotti = new ArrayList<>();
		ResultSet rs = null;
		switch (categoria1) {
		case "ABBIGLIAMENTO_UOMO":
			String query = "select * from prodotto where categoria = " + categoria1;
			try {
				statement = connection.createStatement();
				rs = statement.executeQuery(query);
				while (rs.next()) {
					Prodotto prodotto = new Prodotto();
					prodotto.setIdProdotto(rs.getInt(1));
					prodotto.setNome(rs.getString(2));
					prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
					prodotto.setMarca(rs.getString(4));
					prodotto.setPrezzo(rs.getDouble(5));
					prodotto.setOfferta(rs.getBoolean(6));
					prodotto.setSconto(rs.getInt(7));
					prodotto.setQuantitaDisponibile(rs.getInt(8));
					prodotto.setImmagine(rs.getString(9));
					listaProdotti.add(prodotto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try{
					if(statement != null){
						statement.close();
					}
					if (rs != null){
						rs.close();
					}
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
			break;
			
		case "ABBIGLIAMENTO_DONNA":
			String query1 = "select * from prodotto where categoria = " + categoria1;
			try {
				statement = connection.createStatement();
				rs = statement.executeQuery(query1);
				while (rs.next()) {
					Prodotto prodotto = new Prodotto();
					prodotto.setIdProdotto(rs.getInt(1));
					prodotto.setNome(rs.getString(2));
					prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
					prodotto.setMarca(rs.getString(4));
					prodotto.setPrezzo(rs.getDouble(5));
					prodotto.setOfferta(rs.getBoolean(6));
					prodotto.setSconto(rs.getInt(7));
					prodotto.setQuantitaDisponibile(rs.getInt(8));
					prodotto.setImmagine(rs.getString(9));
					listaProdotti.add(prodotto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try{
					if(statement != null){
						statement.close();
					}
					if (rs != null){
						rs.close();
					}
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
			break;
			
		case "ABBIGLIAMENTO_BAMBINO":
			String query2 = "select * from prodotto where categoria = " + categoria1;
			try {
				statement = connection.createStatement();
				rs = statement.executeQuery(query2);
				while (rs.next()) {
					Prodotto prodotto = new Prodotto();
					prodotto.setIdProdotto(rs.getInt(1));
					prodotto.setNome(rs.getString(2));
					prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
					prodotto.setMarca(rs.getString(4));
					prodotto.setPrezzo(rs.getDouble(5));
					prodotto.setOfferta(rs.getBoolean(6));
					prodotto.setSconto(rs.getInt(7));
					prodotto.setQuantitaDisponibile(rs.getInt(8));
					prodotto.setImmagine(rs.getString(9));
					listaProdotti.add(prodotto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try{
					if(statement != null){
						statement.close();
					}
					if (rs != null){
						rs.close();
					}
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
			break;
			
		case "CASA":
			String query3 = "select * from prodotto where categoria = " + categoria1;
			try {
				statement = connection.createStatement();
				rs = statement.executeQuery(query3);
				while (rs.next()) {
					Prodotto prodotto = new Prodotto();
					prodotto.setIdProdotto(rs.getInt(1));
					prodotto.setNome(rs.getString(2));
					prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
					prodotto.setMarca(rs.getString(4));
					prodotto.setPrezzo(rs.getDouble(5));
					prodotto.setOfferta(rs.getBoolean(6));
					prodotto.setSconto(rs.getInt(7));
					prodotto.setQuantitaDisponibile(rs.getInt(8));
					prodotto.setImmagine(rs.getString(9));
					listaProdotti.add(prodotto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try{
					if(statement != null){
						statement.close();
					}
					if (rs != null){
						rs.close();
					}
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
			break;
			
		case "ELETTRONICA":
			String query4 = "select * from prodotto where categoria = " + categoria1;
			try {
				statement = connection.createStatement();
				rs = statement.executeQuery(query4);
				while (rs.next()) {
					Prodotto prodotto = new Prodotto();
					prodotto.setIdProdotto(rs.getInt(1));
					prodotto.setNome(rs.getString(2));
					prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
					prodotto.setMarca(rs.getString(4));
					prodotto.setPrezzo(rs.getDouble(5));
					prodotto.setOfferta(rs.getBoolean(6));
					prodotto.setSconto(rs.getInt(7));
					prodotto.setQuantitaDisponibile(rs.getInt(8));
					prodotto.setImmagine(rs.getString(9));
					listaProdotti.add(prodotto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try{
					if(statement != null){
						statement.close();
					}
					if (rs != null){
						rs.close();
					}
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
			break;
		case "LIBRI":
			String query5 = "select * from prodotto where categoria = " + categoria1;
			try {
				statement = connection.createStatement();
				rs = statement.executeQuery(query5);
				while (rs.next()) {
					Prodotto prodotto = new Prodotto();
					prodotto.setIdProdotto(rs.getInt(1));
					prodotto.setNome(rs.getString(2));
					prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
					prodotto.setMarca(rs.getString(4));
					prodotto.setPrezzo(rs.getDouble(5));
					prodotto.setOfferta(rs.getBoolean(6));
					prodotto.setSconto(rs.getInt(7));
					prodotto.setQuantitaDisponibile(rs.getInt(8));
					prodotto.setImmagine(rs.getString(9));
					listaProdotti.add(prodotto);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				try{
					if(statement != null){
						statement.close();
					}
					if (rs != null){
						rs.close();
					}
				}catch (SQLException e) {
					e.printStackTrace();
				}
			}
			break;
		}
		return listaProdotti;
	}

	@Override
	public Prodotto getProdottoById(int idProdotto) {
		Prodotto prodotto = new Prodotto();
		ResultSet rs = null;
		String query = "select * from prodotto where = " + idProdotto;
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			if(rs.next()) {
				prodotto.setIdProdotto(idProdotto);
				prodotto.setNome(rs.getString(2));
				prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
				prodotto.setMarca(rs.getString(4));
				prodotto.setPrezzo(rs.getDouble(5));
				prodotto.setOfferta(rs.getBoolean(6));
				prodotto.setSconto(rs.getInt(7));
				prodotto.setQuantitaDisponibile(rs.getInt(8));
				prodotto.setImmagine(rs.getString(9));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try{
				if(statement != null){
					statement.close();
				}
				if (rs != null){
					rs.close();
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return prodotto;
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