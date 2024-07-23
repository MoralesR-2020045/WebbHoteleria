/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.Reservaciones;
import java.util.List;

/**
 *
 * @author compu
 */
public interface InterfaceReservaciones {

    /**
     * Metod que agrega una nueva reservación.
     *
     */
    public void agregarReservaciones(Reservaciones reserva);

    /**
     * Devuelve una lista de todas las reservaciones.
     *
     */
    public List<Reservaciones> listaReservaciones();
}
