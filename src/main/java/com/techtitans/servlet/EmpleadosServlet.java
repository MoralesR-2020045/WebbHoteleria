/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.servlet;

import com.techtitans.model.Empleados;
import com.techtitans.service.EmpleadosService;
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
 * @author Diego Bercian
 */



@WebServlet(name = "EmpleadosServlet", value = {"/empleados-servlet"})
@MultipartConfig
public class EmpleadosServlet extends HttpServlet{
    
    private EmpleadosService empleadosService = new EmpleadosService();

    @Override
    public void init() throws ServletException {
        super.init();

        this.empleadosService = new EmpleadosService();
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Empleados> metodos = empleadosService.listaEmpleados();
        metodos.forEach(p -> System.out.println(p));
        request.setAttribute("Empleados", metodos);
        request.getRequestDispatcher("/EmpleadosFront/Lista-Empleados.jsp").forward(request, response);
    }

    private void agregarEmpleado(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idEmpleado = 0;
        String nombre= request.getParameter("nombreEmpleado");
        String apellido = request.getParameter("apellidoEmpleado");
        String contraseña = request.getParameter("contraseña");
        
        Empleados metodo = new Empleados(idEmpleado, nombre, apellido, contraseña);
        empleadosService.agregarEmpleados(metodo);

        response.sendRedirect(request.getContextPath() + "/empleados-servlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        if (pathInfo == null || pathInfo.equals("/")) {
            agregarEmpleado(request, response);

        } else {
            response.sendError(HttpServletResponse.SC_BAD_GATEWAY);
        }
    }

    
}
