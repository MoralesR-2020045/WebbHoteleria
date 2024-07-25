/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.Huespedes;
import java.util.List;

/**
 *
 * @author Marco Bolaños
 */

// Clase Interfaz Huespedes Servicio
public interface InterfaceHuespedesService {

    //Metodo void agregar huespedes recibe huespedes y la variable la defini como huesped
    public void agregarHuespedes(Huespedes huesped);

    //Un arreglo de tipo lista el cual se llama Huespedes el cual defini como "listaHuespedes"
    public List<Huespedes> listaHuespedes();
}
