package com.infosys.movieSystem.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class ShowTime {

	@Id
	private Integer showTimeId;
	private String showTimeName;
	private Double showTimeRoyalPrice;
	private Double showTimePremierePrice;
	
	
	public ShowTime() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public ShowTime(Integer showTimeId) {
		super();
		this.showTimeId = showTimeId;
		this.showTimeName = "";
		this.showTimeRoyalPrice = 0.0;
		this.showTimePremierePrice = 0.0;
	}
	
	public ShowTime(String showTimeName, Double showTimeRoyalPrice, Double showTimePremierePrice) {
		super();
		this.showTimeName = showTimeName;
		this.showTimeRoyalPrice = showTimeRoyalPrice;
		this.showTimePremierePrice = showTimePremierePrice;
	}

	public Integer getShowTimeId() {
		return showTimeId;
	}

	public void setShowTimeId(Integer showTimeId) {
		this.showTimeId = showTimeId;
	}

	public String getShowTimeName() {
		return showTimeName;
	}

	public void setShowTimeName(String showTimeName) {
		this.showTimeName = showTimeName;
	}

	public Double getShowTimeRoyalPrice() {
		return showTimeRoyalPrice;
	}

	public void setShowTimeRoyalPrice(Double showTimeRoyalPrice) {
		this.showTimeRoyalPrice = showTimeRoyalPrice;
	}

	public Double getShowTimePremierePrice() {
		return showTimePremierePrice;
	}

	public void setShowTimePremierePrice(Double showTimePremierePrice) {
		this.showTimePremierePrice = showTimePremierePrice;
	}

	
	
	
}
