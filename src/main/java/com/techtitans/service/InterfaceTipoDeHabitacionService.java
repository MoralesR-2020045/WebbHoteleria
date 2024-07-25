package com.techtitans.service;

import com.techtitans.model.TipoDeHabitacion;
import java.util.List;


public interface InterfaceTipoDeHabitacionService {
    
    public void agregarTipoDeHabitacion(TipoDeHabitacion habitacion);
    
    public List<TipoDeHabitacion> listaTipoDeHabitacion();
}