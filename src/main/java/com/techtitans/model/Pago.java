/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import java.sql.Date;

/**
 *
 * @author Donovan Morales
 */
@Entity
public class Pago {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idPago;
    private double pagoDeReservacion;
    private Date fechaDePago;
    private int idMetodoPago;
    private int idReserva;

    public Pago() {
    }

    public Pago(int idPago, double pagoDeReservacion, Date fechaDePago, int idMetodoPago, int idReserva) {
        this.idPago = idPago;
        this.pagoDeReservacion = pagoDeReservacion;
        this.fechaDePago = fechaDePago;
        this.idMetodoPago = idMetodoPago;
        this.idReserva = idReserva;
    }

    public int getIdPago() {
        return idPago;
    }

    public void setIdPago(int idPago) {
        this.idPago = idPago;
    }

    public double getPagoDeReservacion() {
        return pagoDeReservacion;
    }

    public void setPagoDeReservacion(double pagoDeReservacion) {
        this.pagoDeReservacion = pagoDeReservacion;
    }

    public Date getFechaDePago() {
        return fechaDePago;
    }

    public void setFechaDePago(Date fechaDePago) {
        this.fechaDePago = fechaDePago;
    }

    public int getIdMetodoPago() {
        return idMetodoPago;
    }

    public void setIdMetodoPago(int idMetodoPago) {
        this.idMetodoPago = idMetodoPago;
    }

    public int getIdReserva() {
        return idReserva;
    }

    public void setIdReserva(int idReserva) {
        this.idReserva = idReserva;
    }


}