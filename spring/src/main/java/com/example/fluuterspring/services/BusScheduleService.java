package com.example.fluuterspring.services;

import com.example.fluuterspring.entities.BusSchedule;

import java.util.List;

public interface BusScheduleService {
    BusSchedule addSchedule(BusSchedule busSchedule);
    List<BusSchedule> getAllBusSchedules();
    List<BusSchedule> getSchedulesByRoute(String routeName);
}
