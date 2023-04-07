package com.multi.mvc200;

public class MapVO {
	private double lati;
	private double longi;
	public double getLati() {
		return lati;
	}
	public void setLati(double lati) {
		this.lati = lati;
	}
	public double getLongi() {
		return longi;
	}
	public void setLongi(double longi) {
		this.longi = longi;
	}
	@Override
	public String toString() {
		return "MapVO [lati=" + lati + ", longi=" + longi + "]";
	}
	
	
}
