/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


/**
 *
 * @author Tuchez
 */
@Entity
public class Servicio {
    // Se utiliza un identificador que es unico en la clase servicio.
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    // Generamos las variables de la entidad servicio.
    private int idServicio;
    private String nombreServicio;
    private double PrecioServicio;

    // Constructor vacio de la clase servicio.
    public Servicio() {
    }

    // Constructor lleno de la clase servicio.
    public Servicio(int idServicio, String nombreServicio, double PrecioServicio) {
        this.idServicio = idServicio;
        this.nombreServicio = nombreServicio;
        this.PrecioServicio = PrecioServicio;
    }

   /*
    *
    * Generamos los getters y setters de la clase servicio que lo que hace es
    * colocar los datos por medio del set y luego llamarlos con el get.
    */
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
