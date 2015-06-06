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
                        font-family: "Impact";
                        
	
		}
                a:link {
                        color: white;
                        float: left;
                        margin: 3px;
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
                h1{
                    text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
                    -moz-text-shadow: 0 0 5px #000;
                    -webkit-text-shadow: 0 0 5px #000;
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
                h1{
                    color: white;
                    
                }
        </style>
 
        <%
            
            String course=FilenameUtils.removeExtension(request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/")+1)).toString();
            session.setAttribute("course", course);
            
        %>
    </head>
    <body>
        <form action="UploadPage.jsp">
         
            <h1><center>Course Name: <%out.println(course); %></center></h1>
            <p align="right">
            <input href="#" type="submit" class="myButton" value="Upload File"/>
            </p>
            <br><br>
            <center>
                <%
            //check if there any message and print it.
                    if(request.getAttribute("message")!=null){
                        String msg=request.getAttribute("message").toString();

                    if(!msg.equals(""))
                        out.print("<script>alert('"+msg+"');</script>");
                    }

    //check which type of file is pdf or doc and show it on screen.
                    ArrayList<String> listOfFiles= DataBase.findFiles("Electrical", course);
                    for(int i=0;i<listOfFiles.size();i++){
                        out.print("<div>");
                        if(listOfFiles.get(i).split("\\.")[1].equals("pdf"))
                            out.print("<a href='"+listOfFiles.get(i)+"'><img src='image/pdf.png' style='width:48px;height:48px'><br>"+listOfFiles.get(i).split("\\//")[1]+"</a>");
                        if(listOfFiles.get(i).split("\\.")[1].equals("doc") || listOfFiles.get(i).split("\\.")[1].equals("docx"))
                            out.print("<a href='"+listOfFiles.get(i)+"'><img src='image/doc.png' style='width:48px;height:48px'><br>"+listOfFiles.get(i).split("\\//")[1]+"</a>");
                        out.print("</div>");
                        out.print(" ");
                    }
                        
                %>
            <br>
            </center>
      </form>
    </body>
</html>


