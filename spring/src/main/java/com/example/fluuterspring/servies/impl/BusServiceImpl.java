package com.example.fluuterspring.servies.impl;

import com.example.fluuterspring.entities.Bus;
import com.example.fluuterspring.repos.BusRepository;
import com.example.fluuterspring.servies.BusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BusServiceImpl implements BusService {
    @Autowired
    private BusRepository busRepository;

    @Override
    public Bus addBus(Bus bus) {
        return busRepository.save(bus);
    }

    @Override
    public List<Bus> getAllBus() {
        return busRepository.findAll();
    }
}
