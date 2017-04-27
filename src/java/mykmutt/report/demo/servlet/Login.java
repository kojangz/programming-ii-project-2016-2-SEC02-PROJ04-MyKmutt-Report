/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mykmutt.report.demo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import mykmutt.report.demo.datasource.PasswordUtil;
import mykmutt.report.demo.model.Member;

/**
 *
 * @author Antonymz
 */
public class Login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String target = "/login.jsp";
        HttpSession session = request.getSession();
        String code = null;
        String alert = null;
        String message = null;
        
        if (request.getParameter("submit") != null) {
            String member_username = request.getParameter("username");
            String member_password = request.getParameter("password");
            if (member_username != null && member_password != null) {
                member_password=PasswordUtil.getKeepPassword(member_password);
                if (Member.isMember(member_username, member_password)) {
                    try {
                        String memberId = Member.getIdByUsername(member_username)+"";
                        String memberPos = Member.getPositionByUsername(member_username)+"";
                        session.setAttribute("member_name", member_username);
                        session.setAttribute("member_position", memberPos);
                        session.setAttribute("member_id", memberId);
                        session.setAttribute("isLoged", "yes");                     
                        target = "/Home.jsp";
                    } catch (SQLException ex) {
                        System.err.println(ex);
                    }
                } else {
                    code = "Error";
                    alert = "The username & password didn't match.";
                    message = "Please Try again.";
                }

            } else {
                code = "Error";
                alert = "The username & password didn't match.";
                message = "Please Try again.";
            }

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
