package com.teamproject.flightcheckin.integration;

import com.teamproject.flightcheckin.integration.dto.Reservation;
import com.teamproject.flightcheckin.integration.dto.ReservationUpdateRequest;

public interface ReservationResClient {
	
	public Reservation findReservation(Long id);
	
	public Reservation updateReservation(ReservationUpdateRequest request);
	
	
	

}
