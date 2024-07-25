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

    // EntityManager para interactuar con el contexto de persistencia
    private EntityManager em;

    // Constructor que inicializa el EntityManager utilizando una fábrica de EntityManager personalizada (Jpa)
    public PagoService() {
        em = Jpa.getEntityManager();
    }

    // Método para agregar un nuevo pago a la base de datos
    @Override
    public void agregarPago(Pago pago) {
        // Obtener la transacción del EntityManager
        EntityTransaction transction = em.getTransaction();
        try {
            // Iniciar la transacción
            transction.begin();
            // Persistir el objeto pago en la base de datos
            em.persist(pago);
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

    // Método para obtener una lista de todos los pagos desde la base de datos
    @Override
    public List<Pago> listarPago() {
        // Crear una consulta para seleccionar todos los pagos
        TypedQuery<Pago> query = em.createQuery("SELECT p FROM Pago p", Pago.class);
        // Ejecutar la consulta y devolver la lista de resultados
        return query.getResultList();
    }

}
