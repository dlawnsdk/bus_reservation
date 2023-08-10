package com.example.fluuterspring.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Reservation {
    private Long reservationId;
    private  Customer customer;
    private BusSchedule busSchedule;
    private Long timestamp;
    private String departureDate;
    private int totalSeatBooked;
    private String seatNumbers;
    private String reservationStatus;
    private int totalPrice;
}
