
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author eli88popik@gmail.com
 */
public class login extends HttpServlet {
    
    public static SystemUser user;

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
            String un = request.getParameter("username");
            String up = request.getParameter("userpass");
            
            user = DataBase.FindUser(un, up);
            
            if(user == null)
                user = DataBase.FindAdmin(un, up);
            
            if(user != null && DataBase.checkValid((User)user)==true)
            {
                /* TODO output your page here. You may use following sample code. */
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("</head>");
                out.println("<body style=background-image: url(\"http://cdn.elegantthemes.com/blog/wp-content/uploads/2013/09/bg-2-full.jpg\");>");
                out.println("<h1>Hello " + user.getfName() +" "+ user.getlName()+ "</h1>");
                out.println("</body>");
                out.println("</html>");
            }
            else
            {
                if(user == null)
                    request.setAttribute("errormsg", "Wrong Username or Password");
                else if(DataBase.checkValid((User)user)==false)
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
