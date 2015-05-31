/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package email;


import db.DataBase;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.InternetAddress;
import javax.mail.*;
import javax.mail.internet.AddressException;

/**
 *
 * @author eli88popik@gmail.com
 */
public class AdminContact extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            String selectedUser=request.getParameter("userName");
            String name = "Admin of AcademicFeed";
            String email = DataBase.FindUser(selectedUser).getEmail();
            String message = request.getParameter("cu_message");
            
            String from = "academicfeed@gmail.com";
            String to = email;
            String subject = name + " sent eMail!";
            String login = "academicfeed@gmail.com";
            String password = "Af1234567";
            
            try {
                Properties props = new Properties();
                props.setProperty("mail.host", "smtp.gmail.com");
                props.setProperty("mail.smtp.port", "587");
                props.setProperty("mail.smtp.auth", "true");
                props.setProperty("mail.smtp.starttls.enable", "true");

                Authenticator auth = new SMTPAuthenticator(login, password);

                Session session = Session.getInstance(props, auth);

                MimeMessage msg = new MimeMessage(session);
                msg.setText(message);
                msg.setSubject(subject);
                
                msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                Transport.send(msg);

            }
            catch (AuthenticationFailedException ex) {
                request.setAttribute("ErrorMessage", "Authentication failed");
            }
            catch (AddressException ex) {
                request.setAttribute("ErrorMessage", "Wrong email address");
            }
            catch (MessagingException ex){
                request.setAttribute("ErrorMessage", ex.getMessage());
            }
            RequestDispatcher rd = request.getRequestDispatcher("admin.jsp");
            request.setAttribute("ErrorMessage", "Send eMail to:" + DataBase.FindUser(selectedUser).getfName() +" "+ DataBase.FindUser(selectedUser).getlName() + " successfull!");
            rd.forward(request, response);
        }
       
    }

    
    private class SMTPAuthenticator extends Authenticator {

        private PasswordAuthentication authentication;

        public SMTPAuthenticator(String login, String password) {
            authentication = new PasswordAuthentication(login, password);
        }

        protected PasswordAuthentication getPasswordAuthentication() {
            return authentication;
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

