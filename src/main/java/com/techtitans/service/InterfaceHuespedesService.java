/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.Huespedes;
import java.util.List;

/**
 *
 * @author Jessyca Martinez
 */
public interface InterfaceHuespedesService {
    
    public void agregarHuespedes(Huespedes huesped);
    
    public List<Huespedes> listaHuespedes();
}
