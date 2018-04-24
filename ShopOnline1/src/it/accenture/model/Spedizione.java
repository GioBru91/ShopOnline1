package it.accenture.model;

public enum Spedizione {

	PRIME(40),
	PRIORITARIA(20),
	ORDINARIA(0);
	
	private int percentualeIncrementoPrezzo;
		
		private Spedizione(int percentualeIncrementoPrezzo) {
			this.percentualeIncrementoPrezzo = percentualeIncrementoPrezzo;
		}
	
		public int getPercentualeIncrementoPrezzo() {
			return percentualeIncrementoPrezzo;
		}
	
		public void setPercentualeIncrementoPrezzo(int percentualeIncrementoPrezzo) {
			this.percentualeIncrementoPrezzo = percentualeIncrementoPrezzo;
		}
}
