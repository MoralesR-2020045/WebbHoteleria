/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 *
 * @author Tuchez
 */
@Entity
public class Servicio {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idServicio;
    private String nombreServicio;
    private double PrecioServicio;

    public Servicio() {
    }

    public Servicio(int idServicio, String nombreServicio, double PrecioServicio) {
        this.idServicio = idServicio;
        this.nombreServicio = nombreServicio;
        this.PrecioServicio = PrecioServicio;
    }

    public int getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(int idServicio) {
        this.idServicio = idServicio;
    }

    public String getNombreServicio() {
        return nombreServicio;
    }

    public void setNombreServicio(String nombreServicio) {
        this.nombreServicio = nombreServicio;
    }

    public double getPrecioServicio() {
        return PrecioServicio;
    }

    public void setPrecioServicio(double PrecioServicio) {
        this.PrecioServicio = PrecioServicio;
    }
    
    
    
}
