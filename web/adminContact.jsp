<%@page import="java.util.ArrayList"%>
<%@page import="db.DataBase"%>
<%@page import="user.User"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <style>
            body{
                background-image: url(image/bg.jpg);
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
                        width: 285px;
                      } 
              .textarea { 
                background: white; 
                border: 5px solid white; 
                border-radius: 5px; 
                box-shadow: 0 0 5px 3px white; 
                color:black;
                outline: none; 
                height:200px; 
                width: 275px;
                resize: none;
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
        #main{
                width: 600px;
                margin : 50px auto;
                text-align: center;
                background-color: transparent;
        }
        </style>
    </head>
    <body>
        
        <form action="AdminContact">
            <%
                //get all users from database
                ArrayList<User> users = DataBase.getAllUsers();
            %>
            <div id="main" style="font-family:Impact">
                <section>
                    <center>
                        <table>
                            <tr><p><td></td> </p></tr>
                            <tr><td><br><td><br></tr>
                            <tr><p><td>
                                <font style="color:white">User name: 
                            </td><td>
                                <select name="userName" class="dropdown" id="userName">
                                    <%
                //choose user name from dropdown list.
                                        for(int i=0;i<users.size();i++)
                                        {
                                            out.println("<option>"+users.get(i).getUserName().toString()+"</option>");
                                        }
                                    %>
                                </select>
                            </td></p></tr>
                            <tr><td><br><td><br></tr>
                            
                            
                            <tr><p><td>
                                <font style="color:white">Message: 
                            </td><td>
                                <!--write the message -->
                                <textarea name="cu_message" class="textarea"  rows="4" cols="50"></textarea>
                            </td></p></tr>
                            <tr><td><br><td><br></tr>
                        </table>
                    </center>
                </section>
            <input type="submit" value="Send" class="myButton">
            <input type="reset" value="Clear" class="myButton">
            <input href="#" type="button" class="myButton" value="Back" onclick='history.go(-1);return true;'/>
        </form>
    </body>
</html>
