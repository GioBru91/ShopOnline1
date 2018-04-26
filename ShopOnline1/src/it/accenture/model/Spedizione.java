package it.accenture.model;

public enum Spedizione {

	PRIME(40, 1),
	PRIORITARIA(25, 3),
	ORDINARIA(10, 7);
	
	private double prezzoSpedizione;
	private int giorni;
		
		private Spedizione(double prezzoSpedizione, int giorni) {
			this.prezzoSpedizione = prezzoSpedizione;
			this.giorni = giorni;
		}
		
		
	
		public int getGiorni() {
			return giorni;
		}



		public void setGiorni(int giorni) {
			this.giorni = giorni;
		}



		public double getPrezzoSpedizione() {
			return prezzoSpedizione;
		}



		public void setPrezzoSpedizione(double prezzoSpedizione) {
			this.prezzoSpedizione = prezzoSpedizione;
		}

		
}
