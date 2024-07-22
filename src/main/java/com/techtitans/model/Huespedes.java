package com.techtitans.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/**
 *
 * @author PC_01
 */
@Entity
@Table(name = "Huespedes")
public class Huespedes {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String nit;
    private String nombreDelHuesped;
    private String apellidoDelHuesped;
    private String email;
    private String telefono;
    private String contraseña;
    
    public Huespedes() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
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
