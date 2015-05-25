<%-- 
    Document   : admin
    Created on : May 25, 2015, 9:27:38 AM
    Author     : eli88popik@gmail.com
--%>

<%@page import="db.DataBase"%>
<%@page import="java.util.ArrayList"%>
<%@page import="user.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            *{
			margin: 0px;
			padding: 0px;
		}
		
		body{
                        background-image: url(image/bg.jpg);
			text-align: center;
                        font-size: 18;
                        font-family: "Impact";
                        color: white;
		}
                
                .textbox { 
                        background: white; 
                        border: 5px solid white; 
                        border-radius: 5px; 
                        box-shadow: 0 0 5px 3px white; 
                        color:black;
                        outline: none; 
                        height:23px; 
                        width: 275px;
                      }
                      .dropdown { 
                        background: white; 
                        border: 5px solid white; 
                        border-radius: 5px; 
                        box-shadow: 0 0 5px 3px white; 
                        color:black;
                        outline: none; 
                        height:30px; 
                        width: 284px;
                      } 
                      
		#main{
			text-align: center;
			background-color: transparent;
		}
                
                .myButton {
                        -moz-box-shadow:inset 1px 23px 10px -9px #08444d;
                        -webkit-box-shadow:inset 1px 23px 10px -9px #08444d;
                        box-shadow:inset 1px 23px 10px -9px #08444d;
                        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #3c6978), color-stop(1, #027c8f));
                        background:-moz-linear-gradient(top, #3c6978 5%, #027c8f 100%);
                        background:-webkit-linear-gradient(top, #3c6978 5%, #027c8f 100%);
                        background:-o-linear-gradient(top, #3c6978 5%, #027c8f 100%);
                        background:-ms-linear-gradient(top, #3c6978 5%, #027c8f 100%);
                        background:linear-gradient(to bottom, #3c6978 5%, #027c8f 100%);
                        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#3c6978', endColorstr='#027c8f',GradientType=0);
                        background-color:#3c6978;
                        -moz-border-radius:9px;
                        -webkit-border-radius:9px;
                        border-radius:9px;
                        border:3px solid #0a1014;
                        display:inline-block;
                        cursor:pointer;
                        color:#f7f2f7;
                        font-family:Impact;
                        font-size:23px;
                        padding:6px 15px;
                        text-decoration:none;
                        text-shadow:0px 1px 3px #010203;
                }
                .myButton:hover {
                        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #027c8f), color-stop(1, #3c6978));
                        background:-moz-linear-gradient(top, #027c8f 5%, #3c6978 100%);
                        background:-webkit-linear-gradient(top, #027c8f 5%, #3c6978 100%);
                        background:-o-linear-gradient(top, #027c8f 5%, #3c6978 100%);
                        background:-ms-linear-gradient(top, #027c8f 5%, #3c6978 100%);
                        background:linear-gradient(to bottom, #027c8f 5%, #3c6978 100%);
                        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#027c8f', endColorstr='#3c6978',GradientType=0);
                        background-color:#027c8f;
                }
                .myButton:active {
                        position:relative;
                        top:1px;
                }
        </style>
    </head>
    <body>
         <%
            if(((User)session.getAttribute("user")).getDepartment().equals("Admin")){%>           
                    <script>parent.frames['head'].location.reload();</script>
                    <%}

        %>
        <br>
    <center>
        <form action="blockUser">
        <table>
            
            <tr><td>Select user name : <td></td></td>
                <td>
                    
                <select name="userN" class="dropdown" id="userN">
                    
                    <%
                        ArrayList<User> users = DataBase.getAllUsers();
                        if(users.get(0).getValid().equals("Yes"))
                            out.println("<option selected>"+users.get(0).getUserName().toString()+"</option>");
                        for(int i=1;i<users.size();i++)
                        {
                            if(users.get(i).getValid().equals("Yes"))
                                out.println("<option>"+users.get(i).getUserName().toString()+"</option>");
                        }
                    %>
                </select></td><td> 
                    <input href="#" type="submit" class="myButton" value="Block User"/>
                </td></tr> 
        </table>
                 </form>    
                
                <form action="unblockUser">
        <table>
            
            <tr><td>Select user name : <td></td></td>
                <td>
                    
                <select name="userN" class="dropdown" id="userN">
                    
                    <%
                        
                        if(users.get(0).getValid().equals("No"))
                            out.println("<option selected>"+users.get(0).getUserName().toString()+"</option>");
                        for(int i=1;i<users.size();i++)
                        {
                            if(users.get(i).getValid().equals("No"))
                                out.println("<option>"+users.get(i).getUserName().toString()+"</option>");
                        }
                    %>
                </select></td><td> 
                    <input href="#" type="submit" class="myButton" value="Unblock User"/>
                </td></tr> 
        </table>
                 </form>  
    </center>
    </body>
</html>