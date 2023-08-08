package com.example.fluuterspring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@SpringBootApplication
@RestController
public class FluuterSpringApplication {

    public static void main(String[] args) {
        SpringApplication.run(FluuterSpringApplication.class, args);
    }

    @GetMapping("/hello/{name}")
    public String hello(@PathVariable("name") String name) {
        return "Hello " + name;
    }

    @GetMapping("/player")
    public Player getPlayer(){
        return new Player("Im jun a", 42);
    }

    @GetMapping("/players")
    public List<Player> getPlayers(){
        final List<Player> players = new ArrayList<>();
        players.add(new Player("Im jun a", 42));
        players.add(new Player("Yoon su bin", 24));

        return players;
    }
}
