package com.example.fluuterspring.controller;

import com.example.fluuterspring.entities.Bus;
import com.example.fluuterspring.servies.BusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@RestController
@RequestMapping("/api/bus")
public class BusController {

    @Autowired
    private BusService busService;

    @PostMapping("/add")
    public Bus add(@RequestBody Bus bus){
        busService.addBus(bus);

        return bus;
    }

    @GetMapping("/all")
    public List<Bus> getAllBus(){
        return busService.getAllBus();
    }
}
