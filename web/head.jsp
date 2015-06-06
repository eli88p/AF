
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
    //get user attribute
        User user=(User)session.getAttribute("user");
        if(user==null){//if not user go to home page
            out.println("<a href='body.html' target='body'>Home</a></li>");
        }
        else if(user.getDepartment().equals("Admin"))
        {//if user is admin go to admin page
            out.println("<a href='admin.jsp' target='body'>Home</a></li>");
        }
        else{//if user exist open his page by department
            out.println("<a href='"+user.getDepartment()+"Index.jsp' target='body'>Home</a>");
            
        }
    %>
<li><a href="about.html" target="body">About</a></li>
<li>
   
    <%//change button if user login or not.
        if(user==null){
            out.println("<a href='login.jsp' target='body'>Log In</a>");
        }
        else {
            out.println("<a href='/AF/Logout' accsskey='1' target='body'>Log Out</a>");
            
        }
    %>
</li>
<li><a href="signin.jsp" target="body">Sign In</a></li>
<li><a href="contactUs.jsp" target="body">Contact us</a></li>
</ul>
</body>
</html>
