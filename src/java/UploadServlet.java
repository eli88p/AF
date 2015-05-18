/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import user.User;
   import java.io.File;
   import java.io.IOException;
import java.io.PrintWriter;
   import java.util.List;
   import javax.servlet.ServletException;
   import javax.servlet.http.HttpServlet;
   import javax.servlet.http.HttpServletRequest;
   import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
   import org.apache.commons.fileupload.FileItem;
   import org.apache.commons.fileupload.disk.DiskFileItemFactory;
   import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

/**
 *
 * @author Shlomota
 */
public class UploadServlet extends HttpServlet {
    private final String UPLOAD_DIRECTORY = "C:\\Users\\Eli Popik\\Documents\\NetBeansProjects\\AF\\uploads";
    boolean resultFlag=false;
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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UploadServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UploadServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
         //process only if its multipart content
        HttpSession session = request.getSession();
        if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest( request);
              
                for(FileItem item : multiparts){
                    if(!item.isFormField() && ValidateFileExtention(item)){
                        resultFlag=true;
                        String name = new File(item.getName()).getName();
                        item.write( new File(UPLOAD_DIRECTORY + "/" + name));
                        DataBase.AddFile(name, UPLOAD_DIRECTORY, (User)getServletContext().getAttribute("user"),(String)session.getAttribute("course"));
                    }
                }
           if(resultFlag==true){
               //File uploaded successfully
               request.setAttribute("message", "File Uploaded Successfully");
               
           }
           else{
                request.setAttribute("message", "File Uploaded: please upload only JPEG or PNG images");

           }
            } catch (Exception ex) {
               request.setAttribute("message", "File Upload Failed due to " + ex);
            }          
         
        }else{
            request.setAttribute("message","Sorry this Servlet only handles file upload request");
        }
    
        request.getRequestDispatcher("Testing.jsp").forward(request, response);
     
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
    
    private boolean ValidateFileExtention(FileItem file){
        /*
            This method should validate that ONLY images with
            the wanted extentions will be uploaded to the current servr.
            Those final string config could or might be replaced with valid configuration file.
        */
        final String DOC="doc",PDF="pdf",DOCX="docx";
        boolean flag=false;
        String strFullFileName= file.getName(),filename="";
        if (strFullFileName != null) {
               filename = FilenameUtils.getName(strFullFileName);
        }
        flag=FilenameUtils.isExtension(filename, new String[]{DOC,PDF,DOCX});
        return flag;
    }
}
