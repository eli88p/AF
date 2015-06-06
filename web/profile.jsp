<%-- 
    Document   : profile
    Created on : May 22, 2015, 3:32:06 AM
    Author     : eli88popik@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            h1{
                color: white;
                size: 16px;
                font-family:Impact
            }
            t1{
                color: white;
                size: 14px;
                font-family:Impact
            }
		*{
			margin: 0px;
			padding: 0px;
		}
		
		body{
                        background-image: url(image/bg.jpg);
			text-align: center;
	
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
        <script>
            function goBack(){
               window.history.back(); 
            }
        </script>
    </head>
    <body><t1>
        <form action="updateUser">
           <!-->update user profile<-->
        <h1>Hello ${user.getfName()} ${user.getlName()}</h1><br>
        <center>
        <table>  
            <img src="image/head.png" height="128" width="128"
                 <br>
               <center>
                   <tr>
                       <td>First Name:</td>
                       <td> <input type="text" name="fname" class="textbox" id="fname" value='${user.getfName()}'/></td>
                       <td> </td>
                       <td>Last Name:</td>
                       <td><input type="text" name="lname" class="textbox" id="lname" value='${user.getlName()}'/></td>
                   </tr>
                   <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                   <tr>
                       <td>E-Mail:</td>
                       <td><input type="text" name="emailF" class="textbox" id="emailF" value='${user.getEmail()}' disabled/></td>
                       <td> </td>
                       <td>User name:</td>
                       <td><input type="text" name="userName" class="textbox" id="userName" value='${user.getUserName()}' readonly/></td>
                   </tr>
                   <tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
                   <tr>
                       <td>Year of study:</td>
                       <td><select name="syear" class="dropdown" id="syear">
                                <option selected>${user.getsYear()}</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                        </select></td>
                        <td> </td>
                        <td>Password:</td>
                        <td><input type="text" name="up" class="textbox" id="up" value='${user.getPassword()}' disabled/></td>
                   </tr>
                  
             </center>                    
            </table>
                   <center>
                       <br>
                <input href="#" type="submit" class="myButton" value="Update"/>
                <input href="#" type="button" class="myButton" value="Back" onclick='history.go(-1);return true;'/>
            </form>
        </t1>
    </body>
</html>
