package com.example.fluuterspring.servies;

import com.example.fluuterspring.entities.Bus;
import java.util.List;

public interface BusService {

    Bus addBus(Bus bus);

    List<Bus> getAllBus();
}
