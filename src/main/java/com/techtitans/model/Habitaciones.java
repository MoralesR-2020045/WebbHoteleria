/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


// @author Diego Bercian

@Entity
public class Habitaciones {
    
    /*
        Declaración de variables
    */
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idHabitacion;
    private String numeroHabitacion;
    private Double precioPorNoche;
    private int idTipoDeHabitacion;
    
    /*
        Metodo
   
    */

    public Habitaciones() {
        
    }
    
    /*
        Sobrecargar el metodo
    */

    public Habitaciones(int idHabitacion, String numeroHabitacion, Double precioPorNoche, int idTipoDeHabitacion) {
        this.idHabitacion = idHabitacion;
        this.numeroHabitacion = numeroHabitacion;
        this.precioPorNoche = precioPorNoche;
        this.idTipoDeHabitacion = idTipoDeHabitacion;
    }
    
    /*
        Getters y Setters
    */

    public int getIdHabitacion() {
        return idHabitacion;
    }

    public void setIdHabitacion(int idHabitacion) {
        this.idHabitacion = idHabitacion;
    }

    public String getNumeroHabitacion() {
        return numeroHabitacion;
    }

    public void setNumeroHabitacion(String numeroHabitacion) {
        this.numeroHabitacion = numeroHabitacion;
    }

    public Double getPrecioPorNoche() {
        return precioPorNoche;
    }

    public void setPrecioPorNoche(Double precioPorNoche) {
        this.precioPorNoche = precioPorNoche;
    }

    public int getIdTipoDeHabitacion() {
        return idTipoDeHabitacion;
    }

    public void setIdTipoDeHabitacion(int idTipoDeHabitacion) {
        this.idTipoDeHabitacion = idTipoDeHabitacion;
    }
    
    
}
