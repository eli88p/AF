<%@page import="db.DataBase"%>
<%@page import="user.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.apache.commons.io.FilenameUtils"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body{
                        background-image: url(image/bg.jpg);
			font-size: 18;
	
		}
                a:link {
                        color: white;
                    }

                   
                    /* mouse over link */
                    a:hover {
                        color: darkturquoise;
                    }
                    
                    /* selected link */
                    a:active {
                        color: gold;
                    }
                    a:visited {
                        color: white;
                    }
                    a:visited:hover {
                        color: darkturquoise;
                    }
                    a:visited:active {
                        color: gold;
                    }

                t1{
                    color:white;
                }
                t1{
                    color:white;
                }
                t2{
                    color:white;
                    font-size: 110%;
                }
                #courseBar{
                    width: 200px;
                    height: auto;
                    float: right;
                    text-align: center;
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
                        border:2px solid #0a1014;
                        display:inline-block;
                        cursor:pointer;
                        color:#f7f2f7;
                        font-family:Impact;
                        font-size:13px;
                        padding:2px 6px;
                        text-decoration:none;
                        text-shadow:0px 1px 3px #010203;
                }
        </style>
        <%
            String course=FilenameUtils.removeExtension(request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/")+1)).toString();
            session.setAttribute("course", course);
            
        %>
    </head>
    <body>
       <center>
            <br>
                <a href="UploadPage.html">Upload</a>
                <%
                    ArrayList<String> listOfFiles= DataBase.findFiles("Software", course);
                    for(int i=0;i<listOfFiles.size();i++)
                        out.print("<br>"+"<a href='"+listOfFiles.get(i)+"'>"+i+"</a>"+"<br>");
                %>
            <br>
       </center>
    </body>
</html>


