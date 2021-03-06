package com.app.model;

import lombok.Data;

import javax.persistence.*;

@Entity
@Data
@Table(name = "MAPS")
public class Map {
    @Id
    @GeneratedValue
    @Column(name = "ID_CITY", nullable = false)
    private int idCity;

    @Column(name = "CITY")
    private String city;

    @Column(name = "LATITUDE")
    private double latitude;

    @Column(name = "LONGITUDE")
    private double longitude;

    @OneToOne(mappedBy = "map", fetch = FetchType.EAGER)
    private WayPoint wayPoint;

    @OneToOne(mappedBy = "map")
    private Driver driver;

    @OneToOne(mappedBy = "map")
    private Waggon waggon;

    public Map(String city, double latitude, double longitude) {
        this.city = city;
        this.latitude = latitude;
        this.longitude = longitude;
    }

}
