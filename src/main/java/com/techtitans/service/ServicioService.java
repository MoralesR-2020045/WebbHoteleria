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

// En esta clase implementamos la interfaz de servicio y proporciona los metodos creados.
public class ServicioService implements InterfaceServicioService {

    // creamos una variable privada Entitymanager para importar el JPA y la persistencia.
    private EntityManager em;


   /*
    * Se utilizo un constructor para incializar la variable em y utilizamos 
    * el metodo get de la clase JPA para establecer la conexion de la base de datos.
    */
    public ServicioService() {
        em = Jpa.getEntityManager();
    }

   /*
    * Este metodo almacena el servicio al momento de agregarlo a la base de datos,
    * e inicia una transaccion y realiza el commit si se agrego el servicio, si
    * se utiliza la excepcion, se realiza un rollback para no realizar los cambios.
    */
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
    
   /*
    * Este metodo obtiene los datos almacenados y se utiliza JPQL para hacer la
    * consulta y selecciones los registros de la entidad de Servicio.
    */
    @Override
    public List<Servicio> listaServicio() {
            TypedQuery<Servicio> query = em.createQuery("SELECT P FROM Servicio p", Servicio.class);
            return query.getResultList();
    }

}
