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
 * @author Marco Bolaños
 */
@Entity
public class Huespedes {
    @Id
    /*Generar un valor de tipo estrategia sea igual a la propiedad GenerationType de la persistencia
    s ls cual le asignamos la propiedad IDENTITY de EntityManager
    */
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    // Atributos del objeto(Clase)
    private int idHuesped;
    private String nit;
    private int dpi;
    private String nombreDelHuesped;
    private String apellidoDelHuesped;
    private String email;
    private String telefono;
    private String contraseña;
    //Contructor vacio de la clase Huespedes
    public Huespedes() {
    }
    //Constructor lleno de la clase Huespedes
    public Huespedes(int idHuesped, String nit, int dpi, String nombreDelHuesped, String apellidoDelHuesped, String email, String telefono, String contraseña) {
        this.idHuesped = idHuesped;
        this.nit = nit;
        this.dpi = dpi;
        this.nombreDelHuesped = nombreDelHuesped;
        this.apellidoDelHuesped = apellidoDelHuesped;
        this.email = email;
        this.telefono = telefono;
        this.contraseña = contraseña;
    }
    //Getters y Setters

    public int getIdHuesped() {
        return idHuesped;
    }

    public void setIdHuesped(int idHuesped) {
        this.idHuesped = idHuesped;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public int getDpi() {
        return dpi;
    }

    public void setDpi(int dpi) {
        this.dpi = dpi;
    }

    public String getNombreDelHuesped() {
        return nombreDelHuesped;
    }

    public void setNombreDelHuesped(String nombreDelHuesped) {
        this.nombreDelHuesped = nombreDelHuesped;
    }

    public String getApellidoDelHuesped() {
        return apellidoDelHuesped;
    }

    public void setApellidoDelHuesped(String apellidoDelHuesped) {
        this.apellidoDelHuesped = apellidoDelHuesped;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }   
}


