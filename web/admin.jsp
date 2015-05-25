<%-- 
    Document   : admin
    Created on : May 25, 2015, 9:27:38 AM
    Author     : eli88popik@gmail.com
--%>

<%@page import="user.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
             body{
                    background-image: url(image/bg.jpg);
                    background-size:   cover;
                    background-repeat: no-repeat;
                }   
        </style>
    </head>
    <body>
         <%
            
            if(((User)session.getAttribute("user")).getDepartment().equals("Admin")){%>           
                    <script>parent.frames['head'].location.reload();</script>
                    <%}

        %>
    </body>
</html>
