
import db.DataBase;
import user.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
/**
 *
 * @author eli88popik@gmail.com
 */
public class login extends HttpServlet {
    
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
        HttpSession session = request.getSession();
        try (PrintWriter out = response.getWriter()) {
            /*get user name and password*/
            String un = request.getParameter("username");
            String up = request.getParameter("userpass");
            
            user = DataBase.FindUser(un, up);
       /*check if user in database*/
            if(user != null && DataBase.checkValid((User)user)==true)
            {

                RequestDispatcher rd = request.getRequestDispatcher(user.getDepartment()+"Index.jsp");
                request.getSession().setAttribute("user", user);
                session.setAttribute("user", user);
                getServletContext().setAttribute("user", user);
                rd.forward(request, response);
               
                
            }
            else
            {
                /*error message if user name or password isn't correct*/
                if(user == null)
                    request.setAttribute("errormsg", "Wrong Username or Password");
                else if(DataBase.checkValid((User)user)==false)
                    /*request to confrim the account*/
                    request.setAttribute("errormsg", "Please confirm your account from e-Mail");
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            }
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
