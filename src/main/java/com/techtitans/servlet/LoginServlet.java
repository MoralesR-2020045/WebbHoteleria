/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.techtitans.servlet;

import com.techtitans.model.Huespedes;
import com.techtitans.service.LoginService;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Donovan Morales
 */
@WebServlet(name = "LoginServlet", value = {"/login-servlet"})
public class LoginServlet extends HttpServlet {
    
    private LoginService login = new LoginService();
    
     public boolean autenticacion(String email, String contraseña) {
        Huespedes user = login.loginHuespedes(email);
        return user != null && user.getContraseña().equals(contraseña);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 2. Obtención de parámetros
        String email = request.getParameter("email");
        String contraseña = request.getParameter("contraseña");

        // 4. Validación de contraseña
        if (autenticacion(email, contraseña)) {
            // 5. Manejo de la autenticación exitosa
            request.getSession().setAttribute("user", email);
            response.sendRedirect("");
        } else {
            // 5. Manejo de la autenticación fallida
            response.sendRedirect("Reservaciones-JSP/formulario-Reservaciones.jsp");
        }

    }
}