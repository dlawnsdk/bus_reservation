package com.example.fluuterspring.servies;

import com.example.fluuterspring.entities.Reservation;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ReservationService {
    Reservation addReservation(Reservation reservation);
    List<Reservation> getAllReservations();
    List<Reservation> getReservationsByScheduleAndDepartureDate(Long scheduleId, String departureDate);
    List<Reservation> getReservationsByMobile(String mobile);
}
