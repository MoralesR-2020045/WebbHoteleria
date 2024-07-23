/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.Pago;
import java.util.List;

/**
 *
 * @author Donovan Morales
 */
public interface InterfacePago {
    
    
    public void agregarPago(Pago pago);
    
    public List<Pago> listarPago();
    
}
