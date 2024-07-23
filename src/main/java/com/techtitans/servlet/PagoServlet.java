/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.servlet;

import com.techtitans.model.Pago;
import com.techtitans.service.PagoService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author Donovan Morales
 */
@WebServlet(name = "PagoServlet", value = {"/pago-servlet"})
@MultipartConfig
public class PagoServlet extends HttpServlet {
    
    private PagoService pagoService = new PagoService(); 
    
    @Override
    public void init()throws ServletException{
        super.init();
        this.pagoService = new PagoService();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pago> pagos = pagoService.listarPago();
        pagos.forEach(p -> System.out.println(p));
        request.setAttribute("Pago", pagos);
        request.getRequestDispatcher("/Pago-JSP/listar-Pago.jsp").forward(request, response);
    }
    
    
        private void agregarPago(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = 0;
        double pagoReservacion = Double.parseDouble(request.getParameter("pagoDeReservacion"));
        Date  fecha  = Date.valueOf(request.getParameter("fechaDePago"));
        int idMetodoPago = Integer.parseInt(request.getParameter("idMetodoPago"));
        int idReserva = Integer.parseInt(request.getParameter("idReserva"));
        Pago metodo = new Pago(id, pagoReservacion, fecha, idMetodoPago, idReserva);
        
        pagoService.agregarPago(metodo);
        response.sendRedirect(request.getContextPath() + "/pago-servlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        if (pathInfo == null || pathInfo.equals("/")) {
            agregarPago(request, response);

        } else {
            response.sendError(HttpServletResponse.SC_BAD_GATEWAY);
        }
    }
    
    
    
   
}
