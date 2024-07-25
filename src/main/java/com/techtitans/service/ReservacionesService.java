/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.Reservaciones;
import com.techtitans.util.Jpa;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.util.List;
/**
 *
 * @author Daniel Sacol
 */
public class ReservacionesService implements InterfaceReservaciones {

    private EntityManager em;

    /**
     * Se inicializa una variable de tipo EntityManager para realizar la
     * persistencia.
     */
    public ReservacionesService() {
        this.em = Jpa.getEntityManager();
    }

    /**
     * Metodo que se utiliza para agregar un reservacion en la base de datos
     *
     */
    @Override
    public void agregarReservaciones(Reservaciones reserva) {
        EntityTransaction transction = em.getTransaction();
        try {
            transction.begin();
            em.persist(reserva);
            transction.commit();
        } catch (Exception e) {
            if (transction.isActive()) {
                transction.rollback();
            }
            e.printStackTrace();
        }
    }

    /**
     * Metodo que obtiene una lista de las reservaciones guardadas en la base de
     * datos y retorna dicha lista.
     *
     */
    @Override
    public List<Reservaciones> listaReservaciones() {
        TypedQuery<Reservaciones> query = em.createQuery("select m from Reservaciones  m", Reservaciones.class);
        return query.getResultList();
    }

}
