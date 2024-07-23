
package com.techtitans.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

/**
 *
 * @author compu
 */
@Entity
public class Reservaciones {

    /**
     * Identificador único de la reservación.
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idReserva;
    private String fechaDeIngreso;
    private String fechaDeEgreso;
    private boolean estadoDeDisponibilidad;
    private Double precioTotal;
    private int idHuesped;
    private int idHabitacion;
    private int idServicio;

    /**
     * Constructor vacio.
     */
    public Reservaciones() {
    }

    /**
     * Constructor lleno con todos los parametros.
     */
    public Reservaciones(int idReserva, String fechaDeIngreso, String fechaDeEgreso, boolean estadoDeDisponibilidad, Double precioTotal, int idHuesped, int idHabitacion, int idServicio) {
        this.idReserva = idReserva;
        this.fechaDeIngreso = fechaDeIngreso;
        this.fechaDeEgreso = fechaDeEgreso;
        this.estadoDeDisponibilidad = estadoDeDisponibilidad;
        this.precioTotal = precioTotal;
        this.idHuesped = idHuesped;
        this.idHabitacion = idHabitacion;
        this.idServicio = idServicio;
    }

    /**
     * Getters y setter.
     */
    public int getIdReserva() {
        return idReserva;
    }

    public void setIdReserva(int idReserva) {
        this.idReserva = idReserva;
    }

    public String getFechaDeIngreso() {
        return fechaDeIngreso;
    }

    public void setFechaDeIngreso(String fechaDeIngreso) {
        this.fechaDeIngreso = fechaDeIngreso;
    }

    public String getFechaDeEgreso() {
        return fechaDeEgreso;
    }

    public void setFechaDeEgreso(String fechaDeEgreso) {
        this.fechaDeEgreso = fechaDeEgreso;
    }

    public boolean isEstadoDeDisponibilidad() {
        return estadoDeDisponibilidad;
    }

    public void setEstadoDeDisponibilidad(boolean estadoDeDisponibilidad) {
        this.estadoDeDisponibilidad = estadoDeDisponibilidad;
    }

    public Double getPrecioTotal() {
        return precioTotal;
    }

    public void setPrecioTotal(Double precioTotal) {
        this.precioTotal = precioTotal;
    }

    public int getIdHuesped() {
        return idHuesped;
    }

    public void setIdHuesped(int idHuesped) {
        this.idHuesped = idHuesped;
    }

    public int getIdHabitacion() {
        return idHabitacion;
    }

    public void setIdHabitacion(int idHabitacion) {
        this.idHabitacion = idHabitacion;
    }

    public int getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(int idServicio) {
        this.idServicio = idServicio;
    }

}
