
<%@page import="java.util.ArrayList"%>
<html>
    <head>
        <script>
            function logout()
            {
                parent.frames['head'].location.reload();
            }
        </script>
        <style>
            body{
                        background-image: url(image/bg.jpg);
			font-size: 18;
                        font-family: "Impact";
	
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
                    font-size: 110%;
                    
                }
                t2{
                    color:white;
                    font-size: 80%;
                    
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
                .textbox { 
                        background: white; 
                        border: 5px solid white; 
                        border-radius: 5px; 
                        box-shadow: 0 0 5px 3px white; 
                        color:black;
                        outline: none; 
                        height:29px; 
                        width: 100px;
                      } 
        </style>
       
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="electricalServlet">
            <!--show user details-->
            <t1>Hello ${user.getfName()} ${user.getlName()}<br>
                Department: ${user.getDepartment()} <br> Year: ${user.getsYear()}
                <P align="right"><a href="profile.jsp" target="bodyCourse">Profile</a></P></t1>
                        <t2>
                            <!--choose year from dropdown list-->
                            Select Year :
                            <select name="stYear" id="dropdown" onchange="submit()" class="textbox">
                                <option value="dropdown">Select one</option>
                                <option value="1">First year</option>
                                <option value="2">Second year</option>
                                <option value="3">Third year</option>
                                <option value="4">Fourth year</option>
                            </select></t2>
                            
                        

                <div id="courseBar"><br><br>
                        <t1>
                            <%
                                //show courses of department
                                if(request.getAttribute("msg")!=null){
                                       if(!(request.getAttribute("msg").equals("dropdown")))
                                       {
                                        if(request.getAttribute("msg")!="dropdown"){
                                            ArrayList<String> msg=(ArrayList<String>)request.getAttribute("msg");
                                            if(msg.size()!=0)
                                            {
                                               int i=0;
                                               for(i=0;i<msg.size();i++)
                                                   out.println("<a href='"+msg.get(i).toString()+".jsp'"+"target="+"bodyCourse"+">"+msg.get(i).toString()+"</a><br>");
                                            }

                                        }
                                       }
                                }
                                %>

                        </t1>
                    </div>

                </form>

    </body>
</html>
 