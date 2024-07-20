/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techtitans.servlet;

import com.techtitans.model.Reservaciones;
import com.techtitans.service.ReservacionesService;
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
 * @author compu
 */
@WebServlet(name = "ReservacionesServlet", value = {"/reservaciones-servlet"})
@MultipartConfig
public class ReservacionesServlet extends HttpServlet {
    
    private ReservacionesService reservacionesService = new ReservacionesService();
     @Override
    public void init() throws ServletException {
        super.init();

        this.reservacionesService = new ReservacionesService();
    }

    /*
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<MetodoDePago> metodo = metodoDePagoService.listaMetodoDePago();
        metodo.forEach(p -> System.out.println(p));
        req.setAttribute("MetodoDePago", metodo);
        req.getRequestDispatcher("./met/Lista-MetodoDePago.jsp").forward(req, resp);
    }*/
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Reservaciones> reservas = reservacionesService.listaReservaciones();
        reservas.forEach(p -> System.out.println(p));
        request.setAttribute("Reservaciones", reservas);
        request.getRequestDispatcher("/Lista-Reservaciones/listar-Reservaciones.jsp").forward(request, response);
    }

    private void agregarReservacion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idReserva = 0;
        String fechaDeIngreso = request.getParameter("fechaDeIngreso");
        String fechaDeEgreso = request.getParameter("fechaDeEgreso");
        Boolean estadoDeDisponibilidad = false;
        Double precioTotal = 0.00;
        int idHuesped = 0;
        int idHabitacion = 0;
        int idServicio = 0;
        
        Reservaciones reserva = new Reservaciones(idReserva, fechaDeIngreso, fechaDeEgreso, estadoDeDisponibilidad, precioTotal, idHuesped, idHabitacion, idServicio);
        reservacionesService.agregarReservaciones(reserva);

        response.sendRedirect(request.getContextPath() + "/reservaciones-servlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        if (pathInfo == null || pathInfo.equals("/")) {
            agregarReservacion(request, response);

        } else {
            response.sendError(HttpServletResponse.SC_BAD_GATEWAY);
        }
    }

}
