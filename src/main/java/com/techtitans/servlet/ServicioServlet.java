/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.servlet;

import com.techtitans.model.Servicio;
import com.techtitans.service.ServicioService;
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
 * @author Tuchez
 */

@WebServlet(name = "ServicioServlet", value = {"/servicio-servlet"})
@MultipartConfig

public class ServicioServlet extends HttpServlet{
    
    private ServicioService servicioService = new ServicioService();
    
    @Override
    public void init() throws ServletException {
        super.init();

        this.servicioService = new ServicioService();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Servicio> metodos = servicioService.listaServicio();
        metodos.forEach(p -> System.out.println(p));
        request.setAttribute("Servicio", metodos);
        request.getRequestDispatcher("/Lista-Servicio/listar-Servicio.jsp").forward(request, response);
    }

    private void agregarServicio(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int idServicio = 0; 
    String nombreServicio = request.getParameter("nombreDelServicio");
    double precioServicio = Double.parseDouble(request.getParameter("PrecioDelServicio"));
    Servicio metodo = new Servicio(idServicio, nombreServicio, precioServicio);
    servicioService.agregarServicio(metodo);

    response.sendRedirect(request.getContextPath() + "/servicio-servlet");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        if (pathInfo == null || pathInfo.equals("/")) {
            agregarServicio(request, response);

        } else {
            response.sendError(HttpServletResponse.SC_BAD_GATEWAY);
        }
    }

    
}
