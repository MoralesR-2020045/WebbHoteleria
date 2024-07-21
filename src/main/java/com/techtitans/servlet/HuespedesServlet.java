/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.servlet;

import com.techtitans.model.Huespedes;
import com.techtitans.service.HuespedesService;
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
 * @author Jessyca Martinez
 */
@WebServlet(name = "HuespedesServlet", value = {"/huespedes-servlet"})
@MultipartConfig
public class HuespedesServlet extends HttpServlet{
    
    private HuespedesService huespedesService = new HuespedesService();
    
    @Override
    public void init() throws ServletException{
      super.init();
      
      this.huespedesService =  new HuespedesService();
    }
    
    
    @Override 
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        List<Huespedes> metodos = huespedesService.listaHuespedes();
        metodos.forEach(p -> System.out.println(p));
        request.setAttribute("Huespedes", metodos);
        request.getRequestDispatcher("/Lista-Huespedes/listar-Huespedes.jsp").forward(request, response); 
    }
    
    private void agregarHuespedes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int idHuesped = 0;
        String nit = request.getParameter("nit");
        int Dpi = Integer.parseInt(request.getParameter("dpi"));
        String nombreHuesped = request.getParameter("nombreDelHuesped");
        String apellidoHuesped = request.getParameter("apellidoDelHuesped");
        String Email = request.getParameter("email");
        String telefonoHuesped = request.getParameter("telefono");
        String password = request.getParameter("contraseña");
        Huespedes metodo = new Huespedes(idHuesped, nit, Dpi, nombreHuesped, apellidoHuesped, Email, telefonoHuesped, password);
        huespedesService.agregarHuespedes(metodo); 
        
        response.sendRedirect(request.getContextPath() + "/huespedes-servlet");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String pathInfo = request.getPathInfo();
        if (pathInfo == null || pathInfo.equals("/")){
        agregarHuespedes(request, response);    
        }else{
            response.sendError(HttpServletResponse.SC_BAD_GATEWAY);
        }
    }
    
}

