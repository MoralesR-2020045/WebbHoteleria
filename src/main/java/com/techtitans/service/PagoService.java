/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.Pago;
import com.techtitans.util.Jpa;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 *
 * @author Donovan Morales
 */
public class PagoService implements InterfacePago {
    
    private EntityManager em;

    public PagoService() {
        em = Jpa.getEntityManager();
    }

    @Override
    public void agregarPago(Pago pago) {
      EntityTransaction transction = em.getTransaction();
        try{
            transction.begin();
            em.persist(pago);
            transction.commit();
        }catch(Exception e){
            if(transction.isActive()){
            transction.rollback();
            }
        e.printStackTrace();
        }
        
    }

    @Override
    public List<Pago> listarPago() {
            TypedQuery<Pago> query = em.createQuery("SELECT p FROM Pago p", Pago.class);
            return query.getResultList();
      
    }
    
}
