package com.techtitans.servlet;

import com.techtitans.model.TipoDeHabitacion;
import com.techtitans.service.TipoDeHabitacionService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author Carlos Morales
 */

@WebServlet(name = "TipoDeHabitacionServlet", value= {"/tipoDeHabitacion-servlet"})
@MultipartConfig
public class TipoDeHabitacionServlet extends HttpServlet {
    
    private TipoDeHabitacionService tipoDeHabitacionService = new TipoDeHabitacionService();
    
    @Override
    public void init() throws ServletException{
        super.init();
        
        this.tipoDeHabitacionService = new TipoDeHabitacionService();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        List<TipoDeHabitacion> habitaciones = tipoDeHabitacionService.listaTipoDeHabitacion();
        habitaciones.forEach(p -> System.out.println(p));
        request.setAttribute("TipoDeHabitacion", habitaciones);
        request.getRequestDispatcher("/TipoHabitacion/listar-TipoDeHabitacion.jsp").forward(request, response);
     }
    
    private void agregarTipoDeHabitacion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int id =0;
        String nombre = request.getParameter("nombreTipoDeHabitacion");
        String descripcion = request.getParameter("descripcion");
        int capacidad = Integer.parseInt(request.getParameter("capacidad"));
        String tamaño = request.getParameter("tamañoEnMetrosCuadrados");
        int camas = Integer.parseInt(request.getParameter("numeroDeCamas"));
        double precio = Double.parseDouble(request.getParameter("precioBase"));
        TipoDeHabitacion habitacion = new TipoDeHabitacion(id,nombre,descripcion,capacidad,tamaño,camas,precio);
        tipoDeHabitacionService.agregarTipoDeHabitacion(habitacion);
        
        response.sendRedirect(request.getContextPath()+"/tipoDeHabitacion-servlet");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String pathInfo = request.getPathInfo();
        if(pathInfo == null || pathInfo.equals("/")){
            agregarTipoDeHabitacion(request,response);
        }else{
            response.sendError(HttpServletResponse.SC_BAD_GATEWAY);
        }
    }
    
}