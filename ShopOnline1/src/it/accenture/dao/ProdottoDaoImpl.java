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
		List<Prodotto> listaPerCategoria = new ArrayList<>();
		ResultSet rs = null;
		String query = "select * from prodotto where categoria = '" + categoria + "'";
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
				listaPerCategoria.add(prodotto);
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
		return listaPerCategoria;
	}
			

	@Override
	public Prodotto getProdottoById(int idProdotto) {
		Prodotto prodotto = new Prodotto();
		ResultSet rs = null;
		String query = "select * from prodotto where id_prodotto = " + idProdotto;
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

	@Override
	public List<Prodotto> getProdottoByCerca(String keyword) {
		List<Prodotto> listaCerca = new ArrayList<>();
		ResultSet rs = null;
		String query = "select * from prodotto where upper(nome) like upper('%" + keyword + "%') or upper(marca) like upper('%" + keyword + "%') or upper(categoria) like upper('%" + keyword + "%')"; 
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while(rs.next()) {
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
				listaCerca.add(prodotto);
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
		return listaCerca;
	}
	
	@Override
	public List<Prodotto> prodottiPiuVenduti() {
		List<Prodotto> listaPiuVenduti = new ArrayList<>();
		ResultSet rs = null;
		String query = "select * from prodotto p, "
					 + "(select id_prodotto, count(id_prodotto) as venduti "
					 + "from acquisto group by id_prodotto order by venduti desc fetch first 3 rows only) a "
					 + "where p.id_prodotto = a.id_prodotto";
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
				listaPiuVenduti.add(prodotto);
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
		
		return listaPiuVenduti;
	}

	@Override
	public void updateQuantità(int nuovaQuantita, int idProdotto) {
		String query = "update prodotto set quantita_disponibile = ? where id_prodotto = " + idProdotto;
		Prodotto prodotto = null;
		try {
			prepared = connection.prepareStatement(query);
			prodotto = new Prodotto();
			prepared.setInt(1, nuovaQuantita);
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

}
