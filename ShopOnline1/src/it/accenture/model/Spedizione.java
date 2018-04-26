package it.accenture.model;

public enum Spedizione {

	PRIME(40, 1),
	PRIORITARIA(20, 3),
	ORDINARIA(1, 7);
	
	private int percentualeIncrementoPrezzo;
	private int giorni;
		
		private Spedizione(int percentualeIncrementoPrezzo, int giorni) {
			this.percentualeIncrementoPrezzo = percentualeIncrementoPrezzo;
			this.giorni = giorni;
		}
		
		
	
		public int getGiorni() {
			return giorni;
		}



		public void setGiorni(int giorni) {
			this.giorni = giorni;
		}



		public int getPercentualeIncrementoPrezzo() {
			return percentualeIncrementoPrezzo;
		}
	
		public void setPercentualeIncrementoPrezzo(int percentualeIncrementoPrezzo) {
			this.percentualeIncrementoPrezzo = percentualeIncrementoPrezzo;
		}
}
