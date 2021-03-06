package com.app.model;


import com.app.model.Enums.DriverStatus;
import lombok.Data;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@Table(name = "DRIVERS")
public class Driver {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    @Column(name = "ID_DRIVER", unique = true)
    private int idDriver;

    @Column(name = "NAME")
    private String name;

    @Column(name = "SECOND_NAME")
    private String secondName;

    @Column(name = "HOURS_WORKED")
    private int hoursWorked;

    @Enumerated(EnumType.STRING)
    @Column(name = "STATUS")
    private DriverStatus status;

    @OneToOne
    @JoinColumn(name = "ID_CITY")
    private Map map;

    @OneToOne(mappedBy = "driver", fetch = FetchType.EAGER)
    private Waggon currentWaggon;

    @ManyToOne
    @JoinColumn(name = "ID_ORDER")
    private Order order;


}