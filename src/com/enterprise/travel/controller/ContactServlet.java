package com.enterprise.travel.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.enterprise.travel.model.Inquiry;

@WebServlet(name = "ContactServlet", urlPatterns = { "/contact" })
public class ContactServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("pageTitle", "Plan Your Trip");
        request.setAttribute("activeNav", "contact");
        request.getRequestDispatcher("/WEB-INF/views/contact.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        Inquiry inquiry = new Inquiry();
        inquiry.setFullName(trim(request.getParameter("fullName")));
        inquiry.setEmail(trim(request.getParameter("email")));
        inquiry.setDestination(trim(request.getParameter("destination")));
        inquiry.setTravelMonth(trim(request.getParameter("travelMonth")));
        inquiry.setMessage(trim(request.getParameter("message")));

        request.setAttribute("inquiry", inquiry);
        request.setAttribute("pageTitle", "Thank You");
        request.setAttribute("activeNav", "contact");
        System.out.println("[TravelMVC] ContactServlet POST /contact -> thank-you.jsp for " + inquiry.getFullName());
        request.getRequestDispatcher("/WEB-INF/views/thank-you.jsp").forward(request, response);
    }

    private static String trim(String value) {
        return value == null ? "" : value.trim();
    }
}
