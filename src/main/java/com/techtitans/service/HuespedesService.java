/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.Huespedes;
import com.techtitans.util.Jpa;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 *
 * @author Jessyca Martinez
 */
//Clase Huespedes Servicios
public class HuespedesService implements InterfaceHuespedesService{
    //Variable tipo EntityManager la cual lleva por nombre "em"
    private EntityManager em;
    
    /*metodo Huespedes Servicio el cual con la variable em de EntityManager es igual a JPA
    con esta accedemos al metodo get de entitymanager.
    */
    public HuespedesService(){
        em = Jpa.getEntityManager();
    }
    
    /*
    Metodo agregar Huespedes el cual nos sirve para la transaccion de los datosa base de la persistencia
    */
    @Override
    public void agregarHuespedes(Huespedes huesped) {
      EntityTransaction transction = em.getTransaction();
        try{
            transction.begin();
            em.persist(huesped);
            transction.commit();
        }catch(Exception e){
            if(transction.isActive()){
            transction.rollback();
            }
        e.printStackTrace();
        }
        
    }
    //Lista de Huespedes la cual lista todos los registros de dicha entidad
    @Override
    public List<Huespedes> listaHuespedes() {
            TypedQuery<Huespedes> query = em.createQuery("SELECT p FROM Huespedes p", Huespedes.class);
            return query.getResultList();
    }
  }  
