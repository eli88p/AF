
<%@ page import="user.User" %>
<html>
    <head>
        <style>
            body{
                background-image: url(image/Hader.jpg);
                background-size:   cover;
                background-repeat: no-repeat;
                
                }   
            ul {
                float: left;
                width: 85%;
                padding: 0;
                margin: 0;
                list-style-type: none;
                position: relative;
                left: 15%;
            }

            a {
                float: left;
                width: 6em;
                color: white;
                background-color: transparent;
                font-family: "Impact", Charcoal, sans-serif;
                padding: 1.2em 3.0em;
                border-right: 1px solid white;
            }

            li:hover {
                opacity: 1.0;
                filter: alpha(opacity=100);
            }

            li {
                opacity: 0.4;
                filter: alpha(opacity=40);
            }
        </style>
        <script>
           
        </script>
</head>
<body>
<ul>
<li><%
        User user=(User)session.getAttribute("user");
        if(user==null){
            out.println("<a href='body.html' target='body'>Home</a></li>");
        }
        else{
            
            out.println("<a href='"+user.getDepartment()+"Index.jsp' target='body'>Home</a>");
            
        }
    %>
<li><a href="about.html" target="body">About</a></li>
<li>
   
    <%
        if(user==null){
            out.println("<a href='login.jsp' target='body'>Log In</a>");
        }
        else{
            out.println("<a href='login.jsp' target='body'>Log Out</a>");
            session.invalidate();
        }
    %>
</li>
<li><a href="signin.jsp" target="body">Sign In</a></li>
<li><a href="contact.html" target="body">Contact us</a></li>
</ul>
</body>
</html>
