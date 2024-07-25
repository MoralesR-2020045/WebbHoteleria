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


    // Se declara una instancia de PagoService para manejar las operaciones relacionadas con los pagos.
    private PagoService pagoService = new PagoService();

    @Override
    public void init() throws ServletException {
        super.init();
        this.pagoService = new PagoService(); // Inicializa la instancia de PagoService
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Pago> pagos = pagoService.listarPago(); // Llama al servicio para obtener la lista de pagos
        pagos.forEach(p -> System.out.println(p)); // Imprime cada pago en la consola
        request.setAttribute("Pago", pagos); // Agrega la lista de pagos como un atributo de la solicitud
        request.getRequestDispatcher("/Pago-JSP/listar-Pago.jsp").forward(request, response); // Redirige a la JSP para mostrar los pagos
    }

    private void agregarPago(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = 0; // El ID del pago, inicialmente en 0 (asumiendo que será generado por la base de datos)
        double pagoReservacion = Double.parseDouble(request.getParameter("pagoDeReservacion")); // Obtiene y convierte el parámetro "pagoDeReservacion" a double
        Date fecha = Date.valueOf(request.getParameter("fechaDePago")); // Obtiene y convierte el parámetro "fechaDePago" a Date
        int idMetodoPago = Integer.parseInt(request.getParameter("idMetodoPago")); // Obtiene y convierte el parámetro "idMetodoPago" a int
        int idReserva = Integer.parseInt(request.getParameter("idReserva")); // Obtiene y convierte el parámetro "idReserva" a int

        // Crea una nueva instancia de Pago con los valores obtenidos
        Pago metodo = new Pago(id, pagoReservacion, fecha, idMetodoPago, idReserva);

        pagoService.agregarPago(metodo); // Llama al servicio para agregar el nuevo pago
        response.sendRedirect(request.getContextPath() + "/pago-servlet"); // Redirige al cliente a la URL del servlet de pagos
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo(); // Obtiene la información de la ruta de la solicitud
        if (pathInfo == null || pathInfo.equals("/")) { // Verifica si la ruta es nula o es "/"
            agregarPago(request, response); // Llama al método para agregar un pago
        } else {
            response.sendError(HttpServletResponse.SC_BAD_GATEWAY); // Devuelve un error 502 si la ruta es desconocida
        }
    }
}
