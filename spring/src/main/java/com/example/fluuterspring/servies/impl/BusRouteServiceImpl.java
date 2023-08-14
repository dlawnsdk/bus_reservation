package com.example.fluuterspring.servies.impl;

import com.example.fluuterspring.entities.BusRoute;
import com.example.fluuterspring.entities.Reservation;
import com.example.fluuterspring.models.ReservationException;
import com.example.fluuterspring.repos.BusRouteRepository;
import com.example.fluuterspring.servies.BusRouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BusRouteServiceImpl implements BusRouteService {

    @Autowired
    private BusRouteRepository busRouteRepository;

    @Override
    public BusRoute addRoute(BusRoute busRoute) {
        return busRouteRepository.save(busRoute);
    }

    @Override
    public List<BusRoute> getAllBusRoutes() {
        return busRouteRepository.findAll();
    }

    @Override
    public BusRoute getRouteByRouteName(String routeName) {
        return busRouteRepository.findByRouteName(routeName).orElseThrow(() -> new ReservationException(HttpStatus.BAD_REQUEST, "No such route found"));
    }

    @Override
    public BusRoute getRouteByCityFromAndCityTo(String cityFrom, String cityTo) {
        return busRouteRepository.findByCityFromAndCityTo(cityFrom, cityTo).orElseThrow(() -> new ReservationException(HttpStatus.BAD_REQUEST, "No such route found"));
    }
}
