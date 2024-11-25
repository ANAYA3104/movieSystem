package com.infosys.movieSystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.JpaRepositoryNameSpaceHandler;

import com.infosys.movieSystem.bean.TicketBooking;

public interface TicketBookingRepository extends JpaRepository<TicketBooking,Long> {
	
	@Query("SELECT max(ticketId) from TicketBooking")
	public Long getLastId();
	

}
