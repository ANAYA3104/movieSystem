package com.infosys.movieSystem.service;

import org.springframework.stereotype.Service;

@Service
public class ShowTimeService {
	
	public Double createRoyalPrice(Double premierPrice) {
		double royalPrice=premierPrice+(premierPrice*0.25);
		return royalPrice;
	}
	
	public Integer generateShowTimeId() {
        // TODO: Implement ID generation logic
        return null;  
    }	

}
