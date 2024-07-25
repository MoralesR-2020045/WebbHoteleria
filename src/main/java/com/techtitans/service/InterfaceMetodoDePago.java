
package com.techtitans.service;

import com.techtitans.model.MetodoDePago;
import java.util.List;

public interface InterfaceMetodoDePago {
    
    public void agregarMetodoDePago(MetodoDePago metodo);
    
    public List<MetodoDePago> listaMetodoDePago();
   
}
