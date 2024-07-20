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

    private MetodoDePagoService metodoDePagoService = new MetodoDePagoService();

    @Override
    public void init() throws ServletException {
        super.init();

        this.metodoDePagoService = new MetodoDePagoService();
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
        List<MetodoDePago> metodos = metodoDePagoService.listaMetodoDePago();
        metodos.forEach(p -> System.out.println(p));
        request.setAttribute("MetodoDePago", metodos);
        request.getRequestDispatcher("/Lista-MetodoPago/listar-MetodoPago.jsp").forward(request, response);
    }

    private void agregarMetodoDePago(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = 0;
        String nombre = request.getParameter("nombreDelMetodo");
        MetodoDePago metodo = new MetodoDePago(id, nombre);
        metodoDePagoService.agregarMetodoDePago(metodo);

        response.sendRedirect(request.getContextPath() + "/metodoDePago-servlet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pathInfo = request.getPathInfo();
        if (pathInfo == null || pathInfo.equals("/")) {
            agregarMetodoDePago(request, response);

        } else {
            response.sendError(HttpServletResponse.SC_BAD_GATEWAY);
        }
    }

}
