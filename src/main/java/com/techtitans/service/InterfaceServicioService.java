/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.Servicio;
import java.util.List;

/**
 *
 * @author Tuchez
 */
public interface InterfaceServicioService {
    
   /*
    * Este método nos permite agregar un servicio al sistema e
    * importamos la clase Servicio para usar este método.
    */
    public void agregarServicio(Servicio metodo);
    
   /*
    * Creamos un metodo que nos permite listar los datos de la clase servicio y
    * utilizamos un List para almacenar y retornar los datos.
    */
    public List<Servicio> listaServicio();
    
}
