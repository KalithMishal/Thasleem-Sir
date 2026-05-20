package com.enterprise.travel.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ExperiencesServlet", urlPatterns = { "/experiences" })
public class ExperiencesServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("pageTitle", "Experiences");
        request.setAttribute("activeNav", "experiences");
        request.getRequestDispatcher("/WEB-INF/views/experiences.jsp").forward(request, response);
    }
}
