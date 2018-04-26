package it.accenture.model;

import java.time.LocalDate;
import java.util.Date;

public class Acquisto {

	private int idAcquisto;
	private Spedizione tipoSpedizione;
	private LocalDate dataInizio;
	private LocalDate dataFine;
	private double prezzoDiSpedizione;
	private int quantitaAcquistata;
	private double prezzoTotale;
	private int idUtente;
	private int idProdotto;
	
	
	
	public double getPrezzoTotale() {
		return prezzoTotale;
	}
	public void setPrezzoTotale(double prezzoTotale) {
		this.prezzoTotale = prezzoTotale;
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
	public LocalDate getDataInizio() {
		return dataInizio;
	}
	public void setDataInizio(LocalDate dataInizio) {
		this.dataInizio = dataInizio;
	}
	public LocalDate getDataFine() {
		return dataFine;
	}
	public void setDataFine(LocalDate dataFine) {
		this.dataFine = dataFine;
	}
	public double getPrezzoDiSpedizione() {
		return tipoSpedizione.getPrezzoSpedizione();
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
				+ ", quantitaAcquistata=" + quantitaAcquistata + ", prezzoTotale=" + prezzoTotale + ", idUtente="
				+ idUtente + ", idProdotto=" + idProdotto + "]";
	}
	
	
	

	

	
	
	
}
