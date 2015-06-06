/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user;

import db.DataBase;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static user.AdminLoginServelt.user;

/**
 *
 * @author eli88popik@gmail.com
 */
public class updateUser extends HttpServlet {

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
        HttpSession session = request.getSession();
        try (PrintWriter out = response.getWriter()) {
            /* check the user details and change it and send relevant message*/ 
            String fName=request.getParameter("fname");
            String lName=request.getParameter("lname");
            String userName=request.getParameter("userName");
            int sYear=Integer.parseInt(request.getParameter("syear"));
            boolean resUpdate = DataBase.UpdateUser(userName, fName, lName, sYear);
            
          
            request.getSession().setAttribute("user", user);
            session.setAttribute("user", user);
            getServletContext().setAttribute("user", user);
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<style>");
            out.println("h1{color: white;size: 16px;font-family:Impact}t1{color: white;size: 14px;font-family:Impact;}body{background-image: url(image/bg.jpg);text-align: center;}");
            out.println("</style>");
            out.println("</head>");
            out.println("<body>");
            out.println("<br><br><br><br><br><center>");
            if(resUpdate=true)
                out.println("<h1>Update complete!</h1>");
            else
                out.println("<h1>Some error in update!</h1>");
            out.println("<h1>Please login again!</h1>");
            out.println("</body>");
            out.println("</html>");
            out.println("<!DOCTYPE html>");
            
            
                
                
              
            
            
        }
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
