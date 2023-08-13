package com.example.fluuterspring.models;

import org.springframework.http.HttpStatus;

public class ReservationException extends RuntimeException{
    private final HttpStatus status;
    private final String message;

    public ReservationException(HttpStatus status, String message){
        this.status = status;
        this.message = message;
    }

    public HttpStatus getStatus() {
        return status;
    }

    @Override
    public String getMessage() {
        return message;
    }
}
