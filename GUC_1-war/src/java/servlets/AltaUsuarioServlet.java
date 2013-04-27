/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Naoual Amasri
 */
@WebServlet(name = "AltaUsuarioServlet", urlPatterns = {"/AltaUsuario"})
public class AltaUsuarioServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String apellido1 = request.getParameter("apellido1");
        String apellido2 = request.getParameter("apaellido2");
        String dni = request.getParameter("dni");
        String rol = request.getParameter("rol");
        String sexo = request.getParameter("sexo");
        String direccion = request.getParameter("direccion");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        String descripcion = request.getParameter("descripcion");
        
        request.setAttribute("nombre",nombre);
        request.setAttribute("apellido1",apellido1);
        request.setAttribute("apelldio2", apellido2);
        request.setAttribute("dni", dni);
        request.setAttribute("rol",rol);
        request.setAttribute("sexo",sexo);
        request.setAttribute("direccion",direccion);
        request.setAttribute("email",email);
        request.setAttribute("telefono",telefono);
        //request.setAttribute("hobbies",hobbies);
        request.setAttribute("descripcion", descripcion);
        
        PasswordGenerator pwd = null;
        String contrasenya = pwd.getPassword();
        
        EnviarEmail enviar = new EnviarEmail();
        enviar.enviar(email, dni, contrasenya);
        
        RequestDispatcher rd;
        rd = this.getServletContext().getRequestDispatcher("/GestionUsuarios.jsp");
        
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
