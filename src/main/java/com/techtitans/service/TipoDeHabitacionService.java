/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.TipoDeHabitacion;
import com.techtitans.util.Jpa;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 *
 * @author Carlos Morales
 */
public class TipoDeHabitacionService implements InterfaceTipoDeHabitacionService{
    
    private EntityManager em;
    
    public TipoDeHabitacionService(){
        em = Jpa.getEntityManager();
    }

    @Override
    public void agregarTipoDeHabitacion(TipoDeHabitacion habitacion) {
        EntityTransaction transction = em.getTransaction();
        try{
            transction.begin();
            em.persist(habitacion);
            transction.commit();
        }catch(Exception e){
            if(transction.isActive()){
                transction.rollback();
            }
            e.printStackTrace();
        }
    }

    @Override
    public List<TipoDeHabitacion> listaTipoDeHabitacion() {
        TypedQuery<TipoDeHabitacion> query = em.createQuery("SELECT p FROM TipoDeHabitacion p",TipoDeHabitacion.class);
        return query.getResultList();
    }
    

}
