/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.Huespedes;
import com.techtitans.util.Jpa;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 *
 * @author Donovan Morales
 */
public class LoginService implements InterfaceLogin {
    private EntityManager em;

    public LoginService() {
        em = Jpa.getEntityManager();

    }

    @Override
    public Huespedes loginHuespedes(String email) {
          List<Huespedes> cuenta = null;
        try {
            TypedQuery<Huespedes> query = em.createQuery("SELECT p FROM Huespedes p WHERE p.email = :email", Huespedes.class);
            query.setParameter("email", email);
            cuenta = query.getResultList();
        } catch (NoResultException e) {
            // Usuario no encontrado
            e.printStackTrace();
        }
        return cuenta != null && !cuenta.isEmpty() ? cuenta.get(0) : null;
    }
}
