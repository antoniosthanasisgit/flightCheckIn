package com.teamproject.flightcheckin.integration;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import com.teamproject.flightcheckin.integration.dto.Reservation;
import com.teamproject.flightcheckin.integration.dto.ReservationUpdateRequest;


@Component
public class reservationRestClientImpl implements ReservationResClient {

	private static final String RESERVATION_REST_URL = "http://127.0.0.1:8081/flightreservation/reservations/";

	@Override
	public Reservation findReservation(Long id) {
		RestTemplate restTemplate = new RestTemplate();
		Reservation reservation = restTemplate.getForObject(RESERVATION_REST_URL+id, Reservation.class);
		return reservation;
	}

	@Override
	public Reservation updateReservation(ReservationUpdateRequest request) {
		RestTemplate restTemplate = new RestTemplate();
		Reservation reservation=restTemplate.postForObject(RESERVATION_REST_URL, request, Reservation.class);
		return reservation;
	}

}
