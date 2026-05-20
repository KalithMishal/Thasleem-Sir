package com.enterprise.travel.model;

import java.io.Serializable;

/**
 * Simple model representing a contact / trip inquiry form submission (MVC Model).
 */
public class Inquiry implements Serializable {

    private static final long serialVersionUID = 1L;

    private String fullName;
    private String email;
    private String destination;
    private String travelMonth;
    private String message;

    public Inquiry() {
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getTravelMonth() {
        return travelMonth;
    }

    public void setTravelMonth(String travelMonth) {
        this.travelMonth = travelMonth;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
