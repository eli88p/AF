/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import db.DataBase;
import user.User;
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
public class signIn extends HttpServlet {
    public static User user;

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
        /*get the details by user*/
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String un = request.getParameter("username");
            String up = request.getParameter("userpassF");
            String fn = request.getParameter("fname");
            String ln = request.getParameter("lname");
            String email = request.getParameter("emailF");
            String dep = request.getParameter("department");
            int syear = Integer.parseInt(request.getParameter("syear"));
            
            user=new User(fn,ln,un,up,email,dep,syear);
            
            if(user!=null){
                /*error message if user isn't correct*/
                if(DataBase.AddUser(user)==false){
                    RequestDispatcher rd = request.getRequestDispatcher("signin.jsp");
                    request.setAttribute("errormsg", "Can't create user! Please try again!");
                    rd.forward(request, response);
                }
                else
                {
                    /* message if user is correct*/
                    String from = "AcafemicFeed";
                    String to = email;
                    String subject = fn+" "+ln+" wellcom to academicFeed";
                    String message = "Hello "+fn+" "+ln+" welcome to academicFeed<br>Your user name is: "+un+"<br>"+"Your password: "+up+"<br>";
                    String login = "academicfeed@gmail.com";
                    String password = "Af1234567";
                    
                    String link = "<br>For account validation, Please enter: http://academicfeed.ddns.net/AF/emailValidation?username="+un+"&userpass="+up;
                    try {
                        /*send validation message*/
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
                        msg.setFrom(new InternetAddress(from));
                        msg.setContent("<img src=\"http://s23.postimg.org/jbp8vtyej/Icon.png\" style=\"width:85px;height:85px\"><br>" + message + link,"text/html");
                        msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                        Transport.send(msg);

                    } catch (AuthenticationFailedException ex) {
                        /*error message if details isn't correct*/
                        request.setAttribute("ErrorMessage", "Authentication failed");

                       

                    } catch (AddressException ex) {
                        /*error message if mail isn't correct*/
                        request.setAttribute("ErrorMessage", "Wrong email address");

                        

                    } catch (MessagingException ex) {
                        request.setAttribute("ErrorMessage", ex.getMessage());

                       
                    }
                    from = "AcafemicFeed";
                    to = "academicfeed@gmail.com";
                    subject = fn+" "+ln+" new user";
                    message = "new user "+fn+" "+ln+" \nuser name is: "+un+"\n"+"password: "+up;
                    
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
                        msg.setFrom(new InternetAddress(from));
                        msg.setContent("<img src=\"http://s23.postimg.org/jbp8vtyej/Icon.png\" style=\"width:85px;height:85px\">" + message,"text/html");
                        msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                        Transport.send(msg);

                    } catch (AuthenticationFailedException ex) {
                        /*error message if details isn't correct*/
                        request.setAttribute("ErrorMessage", "Authentication failed");

                       

                    } catch (AddressException ex) {
                        /*error message if mail isn't correct*/
                        request.setAttribute("ErrorMessage", "Wrong email address");

                        

                    } catch (MessagingException ex) {
                        request.setAttribute("ErrorMessage", ex.getMessage());

                       
                    }
                    /* message if create user is success*/
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    request.setAttribute("errormsg", "Creating of user successfuly!");
                    rd.forward(request, response);
                }
            }
  
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


