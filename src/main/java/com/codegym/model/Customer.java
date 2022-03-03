package com.codegym.model;

public class Customer {
    private String name;
    private String dateOfBird;
    private String address;
    private String image;

    public Customer() {
    }

    public Customer(String name, String dateOfBird, String address, String image) {
        this.name = name;
        this.dateOfBird = dateOfBird;
        this.address = address;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBird() {
        return dateOfBird;
    }

    public void setDateOfBird(String dateOfBird) {
        this.dateOfBird = dateOfBird;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
