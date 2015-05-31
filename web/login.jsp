<%@page import="user.User"%>
<!DOCTYPE html>
<html>

<head>
	<style>
		
	
		*{
			margin: 0;
			padding: 0;
		}
		
		body{
                        background-image: url(image/bg.jpg);
			text-align: center;
                        position: left;
                        
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
		#main{
			width: 600px;
			margin : 50px auto;
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
            $("#submit").click(function(){
            var valid = validateLoginForm();
            if(valid){
              /// Then your rest of process here.
            }
            });
            //Validate text box in form
            function validateLoginForm(){
                var valid = true;
                var validationSiginMessage = 'Please correct the following errors:\r\n';
               
                if ((document.getElementById('username').value.length === 0)||(document.getElementById('userpass').value.length === 0)){
                    if (document.getElementById('username').value.length === 0){
                        validationSiginMessage = validationSiginMessage + '  - User Name is missing!\r\n';
                        //document.getElementById("username").style.borderColor = "#E34234";
                    }
                    if (document.getElementById('userpass').value.length === 0){
                        validationSiginMessage = validationSiginMessage + '  - Password is missing!\r\n';
                        //document.getElementById("userpass").style.borderColor = "#E34234";
                    }
                    valid = false;
                }
                
                if(document.getElementById('userpass').value !== "" && document.getElementById('username').value !== "") {
                    re = /^\w+$/;
                    if(!re.test(document.getElementById('username').value)) {
                        validationSiginMessage = validationSiginMessage + '  - Username must contain only letters, numbers and underscores!\r\n';
                        //document.getElementById("userpass").style.borderColor = "#E34234";
                        valid = false;
                    }
            
                    if(document.getElementById('userpass').value.length < 6) {
                        validationSiginMessage = validationSiginMessage + '  - Password must contain at least six characters!\r\n';
                        //document.getElementById("userpass").style.borderColor = "#E34234";
                        valid = false;
                    }
                    
                    if(document.getElementById('username').value.length < 6) {
                        validationSiginMessage = validationSiginMessage + '  - Username must contain at least six characters!\r\n';
                        //document.getElementById("username").style.borderColor = "#E34234";
                        valid = false;
                    }
                
                    if(document.getElementById('userpass').value === document.getElementById('username').value) {
                        validationSiginMessage = validationSiginMessage + '  - Password must be different from Username!\r\n';
                        //document.getElementById("userpass").style.borderColor = "#E34234";
                        valid = false;
                    }

                    re = /[0-9]/;
                    if(!re.test(document.getElementById('userpass').value)) {
                        validationSiginMessage = validationSiginMessage + '  - Password must contain at least one number (0-9)!\r\n';
                        //document.getElementById("userpass").style.borderColor = "#E34234";
                        valid = false;
                    }

                    re = /[a-z]/;
                    if(!re.test(document.getElementById('userpass').value)) {
                        validationSiginMessage = validationSiginMessage + '  - Password must contain at least one lowercase letter (a-z)!\r\n';
                        //document.getElementById("userpass").style.borderColor = "#E34234";
                        valid = false;
                    }

                    re = /[A-Z]/;
                    if(!re.test(document.getElementById('userpass').value)) {
                        validationSiginMessage = validationSiginMessage + '  - Password must contain at least one uppercase letter (A-Z)!\r\n';
                        //document.getElementById("userpass").style.borderColor = "#E34234";
                        valid = false;
                    }
                }
   
                
                if (valid === false){
                    alert(validationSiginMessage);
                }
                return valid;
            }
            
            
            
	</script>
        
</head>


<body>
    
    <form action="login">   
        <div id="main" style="font-family:Impact">
		<section>
                        <center><table>
                                <tr><td><br><br><br><br><br><td><br></tr>
                                <tr>
                                <p><td><font style="color:white">User Name:</td><td> <input type="text" class="textbox" name="username" id="username"/></td> </p></tr>
                                <tr><td><br><td><br></tr>
                                <p><td><font style="color:white">Password:</td><td> <input type="password" class="textbox" name="userpass" id="userpass"/></td> </p></tr>
                                <tr><td><br><td><br></tr>
                            </table></center>
                        
			<input href="#" type="submit" class="myButton" value="Login" onclick="return validateLoginForm()"/>
                      
                
                        </form>  <br><br>  
                <form action="AdminLoginServelt" method="post">
                    <input href="#" type="submit" class="myButton" value="Admin">
                </form>
        
    </section>
            </div>
                        
                        
   
		
       
      
	
        
        <%
            
        if(session.getAttribute("user")==null){%>           
        <script>parent.frames['head'].location.reload();</script>
        <%}
           
         
       
        if(request.getAttribute("errormsg")!=null){
            String msg=request.getAttribute("errormsg").toString();

            if(!msg.equals(""))
            {
                out.println("<b><font color='red'>"+msg.toString()+"</font></b>");
            }

        }

    %>
</body>

</html>
