package it.accenture.model;

public class Recensioni {

	private int idRecensioni;
	private String titolo;
	private String contenuto;
	private int idUtente;
	private int idProdotto;
	
	public int getIdRecensioni() {
		return idRecensioni;
	}
	public void setIdRecensioni(int idRecensioni) {
		this.idRecensioni = idRecensioni;
	}
	public String getTitolo() {
		return titolo;
	}
	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}
	public String getContenuto() {
		return contenuto;
	}
	public void setContenuto(String contenuto) {
		this.contenuto = contenuto;
	}
	public int getIdUtente() {
		return idUtente;
	}
	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}
	public int getIdProdotto() {
		return idProdotto;
	}
	public void setIdProdotto(int idProdotto) {
		this.idProdotto = idProdotto;
	}
	
	@Override
	public String toString() {
		return "Recensioni [idRecensioni=" + idRecensioni + ", titolo=" + titolo + ", contenuto=" + contenuto
				+ ", idUtente=" + idUtente + ", idProdotto=" + idProdotto + "]";
	}
	
	
}
