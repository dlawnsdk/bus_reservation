
package com.example.fluuterspring.servies.impl;

import com.example.fluuterspring.entities.BusRoute;
import com.example.fluuterspring.entities.BusSchedule;
import com.example.fluuterspring.models.ReservationException;
import com.example.fluuterspring.repos.BusRouteRepository;
import com.example.fluuterspring.repos.BusScheduleRepository;
import com.example.fluuterspring.servies.BusScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BusScheduleImpl implements BusScheduleService {
    @Autowired
    private BusScheduleRepository busScheduleRepository;

    @Autowired
    private BusRouteRepository busRouteRepository;


    @Override
    public BusSchedule addSchedule(BusSchedule busSchedule) throws ReservationException{
        final boolean exists = busScheduleRepository.existsByBusAndBusRouteAndDepartureTime(
                busSchedule.getBus(),
                busSchedule.getBusRoute(),
                busSchedule.getDepartureTime()
                );
        if(exists){
            throw new ReservationException(HttpStatus.CONFLICT, "Duplicate Schedule");
        }
        return busScheduleRepository.save(busSchedule);
    }

    @Override
    public List<BusSchedule> getAllBusSchedules() {
        return busScheduleRepository.findAll();
    }

    @Override
    public List<BusSchedule> getSchedulesByRoute(String routeName) {
        final BusRoute busRoute = busRouteRepository.findByRouteName(routeName).orElseThrow(() -> new ReservationException(HttpStatus.BAD_REQUEST, "Not Found"));
        return busScheduleRepository.findByBusRoute(busRoute).orElseThrow(() -> new ReservationException(HttpStatus.BAD_REQUEST, "Not Found"));
    }
}
