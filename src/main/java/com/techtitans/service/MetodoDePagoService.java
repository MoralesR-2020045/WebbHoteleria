/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.MetodoDePago;
import com.techtitans.util.Jpa;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 *
 * @author Donovan Morales
 */
public class MetodoDePagoService implements InterfaceMetodoDePago{
    
    // EntityManager para interactuar con el contexto de persistencia
    private EntityManager em;

    // Constructor que inicializa el EntityManager utilizando una fábrica de EntityManager personalizada (Jpa)
    public MetodoDePagoService() {
        em = Jpa.getEntityManager();
    }

    // Método para agregar un nuevo método de pago a la base de datos
    @Override
    public void agregarMetodoDePago(MetodoDePago metodo) {
        // Obtener la transacción del EntityManager
        EntityTransaction transction = em.getTransaction();
        try {
            // Iniciar la transacción
            transction.begin();
            // Persistir el objeto metodo en la base de datos
            em.persist(metodo);
            // Confirmar la transacción
            transction.commit();
        } catch (Exception e) {
            // Si hay una excepción, hacer rollback de la transacción si está activa
            if (transction.isActive()) {
                transction.rollback();
            }
            // Imprimir el stack trace de la excepción para depuración
            e.printStackTrace();
        }
    }

    // Método para obtener una lista de todos los métodos de pago desde la base de datos
    @Override
    public List<MetodoDePago> listaMetodoDePago() {
        // Crear una consulta para seleccionar todos los métodos de pago
        TypedQuery<MetodoDePago> query = em.createQuery("SELECT p FROM MetodoDePago p", MetodoDePago.class);
        // Ejecutar la consulta y devolver la lista de resultados
        return query.getResultList();
    }
}
