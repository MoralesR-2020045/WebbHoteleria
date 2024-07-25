package com.techtitans.servlet;

import com.techtitans.model.MetodoDePago;
import com.techtitans.service.MetodoDePagoService;
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
 * @author Donovan Morales
 */
@WebServlet(name = "MetodoDePagoServlet", value = {"/metodoDePago-servlet"})
@MultipartConfig
public class MetodoDePagoServlet extends HttpServlet {

    // Instancia del servicio MetodoDePagoService
    private MetodoDePagoService metodoDePagoService = new MetodoDePagoService();

    // Método de inicialización del servlet
    @Override
    public void init() throws ServletException {
        super.init();
        // Inicializar MetodoDePagoService
        this.metodoDePagoService = new MetodoDePagoService();
    }

    // Método doGet para manejar solicitudes GET
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener la lista de métodos de pago
        List<MetodoDePago> metodos = metodoDePagoService.listaMetodoDePago();
        // Imprimir cada método de pago en la consola
        metodos.forEach(p -> System.out.println(p));
        // Establecer la lista de métodos de pago como un atributo de la solicitud
        request.setAttribute("MetodoDePago", metodos);
        // Redirigir a la página JSP para mostrar los métodos de pago
        request.getRequestDispatcher("/MetodoDePago-JSP/listar-MetodoPago.jsp").forward(request, response);
    }

    // Método privado para agregar un nuevo método de pago
    private void agregarMetodoDePago(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los parámetros del formulario
        int id = 0; // El ID se establecerá automáticamente en la base de datos
        String nombre = request.getParameter("nombreDelMetodo");
        // Crear una nueva instancia de MetodoDePago
        MetodoDePago metodo = new MetodoDePago(id, nombre);
        // Llamar al servicio para agregar el método de pago
        metodoDePagoService.agregarMetodoDePago(metodo);
        // Redirigir a la página de listado de métodos de pago
        response.sendRedirect(request.getContextPath() + "/metodoDePago-servlet");
    }

    // Método doPost para manejar solicitudes POST
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener la información del path de la solicitud
        String pathInfo = request.getPathInfo();
        // Si la ruta es nula o es la raíz, agregar el método de pago
        if (pathInfo == null || pathInfo.equals("/")) {
            agregarMetodoDePago(request, response);
        } else {
            // Enviar un error si la ruta no es válida
            response.sendError(HttpServletResponse.SC_BAD_GATEWAY);
        }
    }


}
