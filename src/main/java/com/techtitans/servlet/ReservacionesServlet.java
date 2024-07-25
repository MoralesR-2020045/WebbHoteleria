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
import java.sql.Date;
import java.util.List;

/**
 *
 * @author compu
 */
@WebServlet(name = "ReservacionesServlet", value = {"/reservaciones-servlet"})
@MultipartConfig
public class ReservacionesServlet extends HttpServlet {

    private ReservacionesService reservacionesService = new ReservacionesService();

    /**
     * Método de inicialización del servlet. Se ejecuta una vez cuando el
     * servlet es cargado por primera vez.
     */

    @Override
    public void init() throws ServletException {
        super.init();

        this.reservacionesService = new ReservacionesService();
    }

    /**
     * Maneja las solicitudes GET. Obtiene una lista de reservaciones y las
     * envía al JSP para su visualización.
     *
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Reservaciones> reservas = reservacionesService.listaReservaciones();
        reservas.forEach(p -> System.out.println(p));
        request.setAttribute("Reservaciones", reservas);
        request.getRequestDispatcher("/Reservaciones-JSP/Lista-Reservaciones.jsp").forward(request, response);
    }

    /**
     * Método privado para agregar una nueva reservación. Recibe los parámetros
     * de la solicitud, crea un objeto Reservaciones y lo guarda.
     *
     */
    private void agregarReservacion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = 0;
        Date fechaDeIngreso = Date.valueOf(request.getParameter("fechaDeIngreso"));
        Date fechaDeEgreso = Date.valueOf(request.getParameter("fechaDeEgreso"));
        Boolean estadoDeDisponibilidad = Boolean.parseBoolean(request.getParameter("estadoDeDisponibilidad"));
        Double precioTotal = Double.parseDouble(request.getParameter("precioTotal"));
        int idHuesped = Integer.parseInt(request.getParameter("idHuesped"));
        int idHabitacion = Integer.parseInt(request.getParameter("idHabitacion"));
        int idServicio = Integer.parseInt(request.getParameter("idServicio"));

        Reservaciones reserva = new Reservaciones(id, fechaDeIngreso, fechaDeEgreso, estadoDeDisponibilidad, precioTotal, idHuesped, idHabitacion, idServicio);
        reservacionesService.agregarReservaciones(reserva);

        response.sendRedirect(request.getContextPath() + "/reservaciones-servlet");
    }

    /**
     * Maneja las solicitudes POST. Valida la informacion y en vase a eso llama
     * o no al metodo para agregar una reservacion.
     *
     */
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