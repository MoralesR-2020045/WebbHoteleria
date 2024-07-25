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
@WebServlet(name = "ServicioServlet", value = {"/servicio-Servlet"})
@MultipartConfig
/*
 * Creamos la clase de servcio Servlet y se aplica la herencia para utilizar 
 * la solicitud del HttpServlet y utilizar el metodo doGet y doPost.
 */
public class ServicioServlet extends HttpServlet{
    
    // Instancia la clase ServicioService para utilizar los servicios
    private ServicioService servicioService = new ServicioService();
    
    // En este metodo se inicializa y se crea la instancia del Servlet. 
    @Override
    public void init() throws ServletException {
        super.init();

        this.servicioService = new ServicioService();
    }
    
    /*
     * Se hacen peticiones para recuperar los servicios de la base de datos 
     * y los envia a la pagina para que se puedan mostrar los datos.
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Servicio> metodos = servicioService.listaServicio();
        metodos.forEach(p -> System.out.println(p));
        request.setAttribute("Servicio", metodos);
        request.getRequestDispatcher("/Formulario-Servicio/listar-Servicio.jsp").forward(request, response);
    }

   /*
    * Este metodo crea la solicitud para agregar el servicio y guardar los datos en el servicio,
    * y coloca al usuario en la misma pagina ya con los datos que fueron introducidos.
    */
    private void agregarServicio(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int idServicio = 0; 
    String nombreServicio = request.getParameter("nombreDelServicio");
    double precioServicio = Double.parseDouble(request.getParameter("PrecioDelServicio"));
    Servicio metodo = new Servicio(idServicio, nombreServicio, precioServicio);
    servicioService.agregarServicio(metodo);

    response.sendRedirect(request.getContextPath() + "/servicio-Servlet");
    }

   /*
    * Este metodo doPost nos permite agregar el servicio a la ruta principal que se coloco
    * y llama al metodo agregarServicio si la ruta es correcta y si la ruta es 
    * invalida no se podra completar la solicitud y nos muestra el error 502. 
    */
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
