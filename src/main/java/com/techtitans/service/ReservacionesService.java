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
 * @author compu
 */
public class ReservacionesService implements InterfaceReservaciones {

    private EntityManager em;
    
    public ReservacionesService(){
        this.em = Jpa.getEntityManager();
    }
    @Override
    public void agregarReservaciones(Reservaciones reserva) {
         EntityTransaction transction = em.getTransaction();
        try{
            transction.begin();
            em.persist(reserva);
            transction.commit();
        }catch(Exception e){
            if(transction.isActive()){
            transction.rollback();
            }
        e.printStackTrace();
        }
    }

    @Override
    public List<Reservaciones> listaReservaciones() {
       TypedQuery<Reservaciones> query = em.createQuery("select m from Reservaciones m", Reservaciones.class);
        return query.getResultList();
    }
    
}
