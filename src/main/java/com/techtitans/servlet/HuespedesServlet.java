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
 * @author Marco Bolaños
 */
//componente que se usa para desarrollo web de nombre "HuespedesServlet" su valor es igual a 
// /Huespedes-servlet
@WebServlet(name = "HuespedesServlet", value = {"/huespedes-servlet"})
//propiedad Multipart config
@MultipartConfig
// Clase Huespedes Servlet que hereda HttpServlet
public class HuespedesServlet extends HttpServlet{
    //Variable HuespedesService la cual defini como "huespedesService" 
    private HuespedesService huespedesService = new HuespedesService();
    //Propiedad Override
    @Override
    // Metodo publico que no espera recibir parametro "init"
    public void init() throws ServletException{
      super.init();
      
      this.huespedesService =  new HuespedesService();
    }
    
    //Propiedad Override
    @Override
    // Metodo protegido doGet el cual envia las peticiones
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //arreglo de tipo lista llamado Huespedes difini variable metodos esto es igual a huespedesService
        //y esto retorna la lista de Huespedes
        List<Huespedes> metodos = huespedesService.listaHuespedes();
        //metodos recorre a base de for each este recorrido se almacena en la variable "p" y imprimo dicha variable
        metodos.forEach(p -> System.out.println(p));
        //Arequest le seteamos Huespedes y la variable metodos
        request.setAttribute("Huespedes", metodos);
        // Sirve para darle ombre a la direccion del listar de la entidad
        request.getRequestDispatcher("/Lista-Huespedes/listar-Huespedes.jsp").forward(request, response); 
    }
    //Metodo void agregarHuespedes recibe como prametros la request y response
    private void agregarHuespedes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        //Request para obtener los atributos de la base de datos
        int idHuesped = 0;
        String nit = request.getParameter("nit");
        int Dpi = Integer.parseInt(request.getParameter("dpi"));
        String nombreHuesped = request.getParameter("nombreDelHuesped");
        String apellidoHuesped = request.getParameter("apellidoDelHuesped");
        String Email = request.getParameter("email");
        String telefonoHuesped = request.getParameter("telefono");
        String password = request.getParameter("contraseña");
        Huespedes metodo = new Huespedes(idHuesped, nit, Dpi, nombreHuesped, apellidoHuesped, Email, telefonoHuesped, password);
        //huespedesService mandamos a llamar al metodo agregarHuespedes y lo almacenamos en metodo
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

