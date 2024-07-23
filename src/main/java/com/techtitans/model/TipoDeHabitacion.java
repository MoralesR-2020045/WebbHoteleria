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
 * @author Carlos Morales
 */

/**
 * En esta clase se definiran los aatributos junto a sus constructores, get y set 
 * El Entity nos permite identificar que esta clase es una entidad
 * El Id indica que aqui se usara un identificador (id)
 * El GeneratedValue nos permite indicarle a JPA que genere el id
 * EL IDENTiTY nos genera los id en una forma similar a SQL
*/

@Entity
public class TipoDeHabitacion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    private int idTipoDeHabitacion;
    private String nombreTipoDeHabitacion;
    private String descripcion;
    private int capacidad;
    private String tamañoEnMetrosCuadrados;
    private int numeroDeCamas;
    private double precioBase;

    public TipoDeHabitacion() {
    }

    public TipoDeHabitacion(int idTipoDeHabitacion, String nombreTipoDeHabitacion, String descripcion, int capacidad, String tamañoEnMetrosCuadrados, int numeroDeCamas, double precioBase) {
        this.idTipoDeHabitacion = idTipoDeHabitacion;
        this.nombreTipoDeHabitacion = nombreTipoDeHabitacion;
        this.descripcion = descripcion;
        this.capacidad = capacidad;
        this.tamañoEnMetrosCuadrados = tamañoEnMetrosCuadrados;
        this.numeroDeCamas = numeroDeCamas;
        this.precioBase = precioBase;
    }

    public int getIdTipoDeHabitacion() {
        return idTipoDeHabitacion;
    }

    public void setIdTipoDeHabitacion(int idTipoDeHabitacion) {
        this.idTipoDeHabitacion = idTipoDeHabitacion;
    }

    public String getNombreTipoDeHabitacion() {
        return nombreTipoDeHabitacion;
    }

    public void setNombreTipoDeHabitacion(String nombreTipoDeHabitacion) {
        this.nombreTipoDeHabitacion = nombreTipoDeHabitacion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public String getTamañoEnMetrosCuadrados() {
        return tamañoEnMetrosCuadrados;
    }

    public void setTamañoEnMetrosCuadrados(String tamañoEnMetrosCuadrados) {
        this.tamañoEnMetrosCuadrados = tamañoEnMetrosCuadrados;
    }

    public int getNumeroDeCamas() {
        return numeroDeCamas;
    }

    public void setNumeroDeCamas(int numeroDeCamas) {
        this.numeroDeCamas = numeroDeCamas;
    }

    public double getPrecioBase() {
        return precioBase;
    }

    public void setPrecioBase(double precioBase) {
        this.precioBase = precioBase;
    }
    
    
}
