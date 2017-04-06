/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mykmutt.report.demo.servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mykmutt.report.demo.model.Ticket;

/**
 *
 *
 */
public class AddTicket extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String target = "/login.jsp";
        String code = null;
        String alert = null;
        String message = null;
        HttpSession session = request.getSession(false);
        if (session != null) {
            if (session.getAttribute("member") != null && session.getAttribute("isLoged").equals("yes")) {
                String name = request.getParameter("name");
                String desc = request.getParameter("desc");
                String place = request.getParameter("place");
                Ticket t = new Ticket(name, desc, place);
                if (t.addTicket()) {
                    code = "success";
                    alert = "Success!";
                    message = "Ticket is now opened.";
                    target = "/AddTicket.jsp";
                } else {
                    code = "warning";
                    alert = "Warning!";
                    message = "Cannot open the ticket.";
                }
            } else {
                code = "Error";
                alert = "Error!";
                message = "Re-Login Pleased.";
            }
        } else {
            code = "Error";
            alert = "Error!";
            message = "Re-Login Pleased.";
        }
        
        request.setAttribute("code", code);
        request.setAttribute("alert", alert);
        request.setAttribute("message", message);
        getServletContext().getRequestDispatcher(target).forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
