/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.servlet;

import com.techtitans.model.Habitaciones;
import com.techtitans.service.HabitacionesService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

// @author Diego Bercian

@WebServlet(name = "HabitacionesServlet", value = {"/habitaciones-servlet"})
@MultipartConfig
public class HabitacionesServlet extends HttpServlet {
    
    private HabitacionesService habitacionesService = new HabitacionesService();

    @Override
    public void init() throws ServletException {
        super.init();

        this.habitacionesService = new HabitacionesService();
    }

    
    /* Metodo to get*/
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Habitaciones> metodos = habitacionesService.listaHabitaciones();
        metodos.forEach(p -> System.out.println(p));
        request.setAttribute("Habitaciones", metodos);
        // Linea de conexion al jsp
        request.getRequestDispatcher("/HabitacionesFront/Lista-Habitaciones.jsp").forward(request, response);
    }

    private void agregarHabitaciones(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idHabitacion = 0;
        String numero= request.getParameter("numeroHabitacion");
        Double precio = Double.parseDouble(request.getParameter("precioPorNoche")); 
        int tipoDeHabitacion = Integer.parseInt(request.getParameter("idTipoDeHabitacion"));
        
        Habitaciones metodo = new Habitaciones(idHabitacion, numero, precio, tipoDeHabitacion);
        habitacionesService.agregarHabitaciones(metodo);

        response.sendRedirect(request.getContextPath() + "/empleados-servlet");
    }

     /* Metodo doPost */
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        if (pathInfo == null || pathInfo.equals("/")) {
            agregarHabitaciones(request, response);

        } else {
            response.sendError(HttpServletResponse.SC_BAD_GATEWAY);
        }
    }

    
}
