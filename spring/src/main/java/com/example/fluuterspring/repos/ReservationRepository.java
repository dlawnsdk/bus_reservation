package com.example.fluuterspring.repos;

import com.example.fluuterspring.entities.BusSchedule;
import com.example.fluuterspring.entities.Customer;
import com.example.fluuterspring.entities.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.swing.text.html.Option;
import java.util.List;
import java.util.Optional;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {
    Optional<List<Reservation>> findByCustomer(Customer customer);
    Optional<List<Reservation>> findByBusScheduleAndDepartureDate(BusSchedule busSchedule, String departureDate);
}
