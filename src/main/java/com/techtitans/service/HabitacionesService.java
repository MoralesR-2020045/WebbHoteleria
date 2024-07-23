/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.Habitaciones;
import com.techtitans.util.Jpa;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 *
 * @author gaber
 */
public class HabitacionesService implements InterfaceHabitacionesService{
 
     private EntityManager em;

    public HabitacionesService() {
        em = Jpa.getEntityManager();
    }

    @Override
    public void agregarHabitaciones(Habitaciones metodo) {
      EntityTransaction transction = em.getTransaction();
        try{
            transction.begin();
            em.persist(metodo);
            transction.commit();
        }catch(Exception e){
            if(transction.isActive()){
            transction.rollback();
            }
        e.printStackTrace();
        }
        
    }

    @Override
    public List<Habitaciones> listaHabitaciones(){
            TypedQuery<Habitaciones> query = em.createQuery("select p from Habitaciones p", Habitaciones.class);
            return query.getResultList();
      
    }
    
    
}
