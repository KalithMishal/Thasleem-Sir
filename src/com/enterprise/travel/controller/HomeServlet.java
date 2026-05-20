package com.enterprise.travel.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "HomeServlet", urlPatterns = { "/home" }, loadOnStartup = 1)
public class HomeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    public void init() throws ServletException {
        super.init();
        System.out.println("======================================================================");
        System.out.println("[TravelMVC] Web app deployed. Open the site in your browser, for example:");
        System.out.println("[TravelMVC]   http://localhost:8888/TravelMVC/home   (port = your Tomcat HTTP port)");
        System.out.println("[TravelMVC] Each page visit prints another line here (servlet output).");
        System.out.println("======================================================================");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("pageTitle", "Home");
        request.setAttribute("activeNav", "home");
        System.out.println("[TravelMVC] HomeServlet GET /home -> home.jsp");
        request.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(request, response);
    }
}
