/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.Empleados;
import com.techtitans.util.Jpa;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 *
 * @author Donovan Morales
 */


public class EmpleadosService implements InterfaceEmpleados{
    
    private EntityManager em;

    public EmpleadosService() {
        em = Jpa.getEntityManager();
    }

    @Override
    public void agregarEmpleados(Empleados metodo) {
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
    public List<Empleados> listaEmpleados(){
            TypedQuery<Empleados> query = em.createQuery("SELECT p FROM Empleados p", Empleados.class);
            return query.getResultList();
      
    }
    
}

