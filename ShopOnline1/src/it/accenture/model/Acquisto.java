package it.accenture.model;

import java.util.Date;

public class Acquisto {

	private int idAcquisto;
	private Spedizione tipoSpedizione;
	private Date dataInizio;
	private Date dataFine;
	private double prezzoDiSpedizione; //con aumento in base al tipo di spedizione
	private int quantitaAcquistata;
	private int idUtente;
	private int idProdotto;
	
	
	
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
	public int getIdAcquisto() {
		return idAcquisto;
	}
	public void setIdAcquisto(int idAcquisto) {
		this.idAcquisto = idAcquisto;
	}
	public Spedizione getTipoSpedizione() {
		return tipoSpedizione;
	}
	public void setTipoSpedizione(Spedizione tipoSpedizione) {
		this.tipoSpedizione = tipoSpedizione;
	}
	public Date getDataInizio() {
		return dataInizio;
	}
	public void setDataInizio(Date dataInizio) {
		this.dataInizio = dataInizio;
	}
	public Date getDataFine() {
		return dataFine;
	}
	public void setDataFine(Date dataFine) {
		this.dataFine = dataFine;
	}
	public double getPrezzoDiSpedizione() {
		return prezzoDiSpedizione;
	}
	public void setPrezzoDiSpedizione(double prezzoDiSpedizione) {
		this.prezzoDiSpedizione = prezzoDiSpedizione;
	}
	public int getQuantitaAcquistata() {
		return quantitaAcquistata;
	}
	public void setQuantitaAcquistata(int quantitaAcquistata) {
		this.quantitaAcquistata = quantitaAcquistata;
	}
	
	@Override
	public String toString() {
		return "Acquisto [idAcquisto=" + idAcquisto + ", tipoSpedizione=" + tipoSpedizione + ", dataInizio="
				+ dataInizio + ", dataFine=" + dataFine + ", prezzoDiSpedizione=" + prezzoDiSpedizione
				+ ", quantitaAcquistata=" + quantitaAcquistata + ", idUtente=" + idUtente + ", idProdotto=" + idProdotto
				+ "]";
	}
	

	

	
	
	
}
