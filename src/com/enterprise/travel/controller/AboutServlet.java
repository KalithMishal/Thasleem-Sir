package com.enterprise.travel.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AboutServlet", urlPatterns = { "/about" })
public class AboutServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("pageTitle", "About");
        request.setAttribute("activeNav", "about");
        request.getRequestDispatcher("/WEB-INF/views/about.jsp").forward(request, response);
    }
}
