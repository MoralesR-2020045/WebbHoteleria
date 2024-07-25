/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.service;

import com.techtitans.model.Empleados;
import java.util.List;

// @author Diego Bercian

public interface InterfaceEmpleadosService {
    
    /*
       Metodo agregar Empleados
    */
    
    public void agregarEmpleados(Empleados metodo);
    
    /* Metodo para listar */
    
    public List<Empleados> listaEmpleados();
    
}
