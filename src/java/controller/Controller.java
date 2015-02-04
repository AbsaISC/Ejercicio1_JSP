/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.AlumnoDAO;
import DTO.Alumno;
import Utility.Security_MD5;
import Utility.Session;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author absalom
 */
public class Controller extends HttpServlet {

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
//        request.getRequestDispatcher("principal.jsp").forward(request, response);
        String accion = request.getParameter("accion");

        Session s = new Session();
        if (s.isSession(request)) {
            if (accion.equalsIgnoreCase("signinDone")) {
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
            if (accion.equalsIgnoreCase("iniReg")) {
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }
            if (accion.equalsIgnoreCase("Reg")) {
                request.getRequestDispatcher("principal.jsp?exito=Registro realizado con éxito").forward(request, response);
            }
            if (accion.equalsIgnoreCase("invDelete")) {
                request.getRequestDispatcher("principal.jsp?exito=elemento no encontrado").forward(request, response);
            }
            if (accion.equalsIgnoreCase("valDelete")) {
                request.getRequestDispatcher("principal.jsp?exito=Eliminado correctamente").forward(request, response);
            }
            if (accion.equalsIgnoreCase("valEdit")) {
                request.getRequestDispatcher("principal.jsp?exito=elemento no encontrado").forward(request, response);
            }
            if (accion.equalsIgnoreCase("invEdit")) {
                request.getRequestDispatcher("principal.jsp?exito=elemento no encontrado").forward(request, response);
            }
            if (accion.equalsIgnoreCase("update")) {
                request.getRequestDispatcher("actualiza.jsp").forward(request, response);
            }
            if (accion.equalsIgnoreCase("hecho")) {
                request.getRequestDispatcher("principal.jsp?exito=actualizado con éxito").forward(request, response);
            }
            if (accion.equals("delete")) {
                delete(request, response);
                return;
            }
            if (accion.equals("edit")) {
                update(request, response);
                return;
            }
            return;
        }

        if (accion.equals("signin")) {
            signin(request, response);
            return;
        }
        if (accion.equals("signup")) {
            signup(request, response);
            return;
        }
    }

    /*El update no refresca los datos de la session*/
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

    private void signin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void signup(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("registro.jsp").forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("eliminar.jsp").forward(request, response);
        } catch (IOException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ServletException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher("editar.jsp").forward(request, response);
        } catch (ServletException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
