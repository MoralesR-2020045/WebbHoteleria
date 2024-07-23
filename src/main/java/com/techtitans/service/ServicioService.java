/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.Servicio;
import com.techtitans.util.Jpa;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 *
 * @author Tuchez
 */
public class ServicioService implements InterfaceServicioService {

    private EntityManager em;

    public ServicioService() {
        em = Jpa.getEntityManager();
    }

    @Override
    public void agregarServicio(Servicio metodo) {
        EntityTransaction transction = em.getTransaction();
        try {
            transction.begin();
            em.persist(metodo);
            transction.commit();
        } catch (Exception e) {
            if (transction.isActive()){
            transction.rollback();
            }
        e.printStackTrace();
        }
    }

    @Override
    public List<Servicio> listaServicio() {
            TypedQuery<Servicio> query = em.createQuery("SELECT p FROM Servicio p", Servicio.class);
            return query.getResultList();
    }

}
