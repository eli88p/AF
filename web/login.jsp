<!DOCTYPE html>
<html>

<head>
	<style>
		
	
		*{
			margin: 0px;
			padding: 0px;
		}
		
		body{
			text-align: center;
                        background-image: url("http://cdn.elegantthemes.com/blog/wp-content/uploads/2013/09/bg-2-full.jpg");
		}
                  .textbox { 
                        background: white; 
                        border: 1px solid red; 
                        border-radius: 5px; 
                        box-shadow: 0 0 5px 3px red; 
                        color: #666; 
                        outline: none; 
                        height:23px; 
                        width: 275px; 
                      } 
		#main{
			border: 1px solid black;
			width: 600px;
			margin : 50px auto;
			text-align: center;
			background-color: gray;
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
	<div id="main">
		<section>
                        <center><table><tr>
                                <p><td>User Name:</td><td> <input type="text" class="textbox" name="username" id="username"/></td> </p></tr>
                                <p><td>Password:</td><td> <input type="password" class="textbox" name="userpass" id="userpass"/></td> </p></tr>
                            </table></center>
                        
			<input type="submit" value="login" onclick="return validateLoginForm()"/>
    </form>
		</section>

      
	</div>
        <%
        if(request.getAttribute("errormsg")!=null){
            String msg=request.getAttribute("errormsg").toString();

            if(!msg.equals(""))
            {
                out.println("<b><font color='red'>"+msg.toString()+"</font></b>");
            }

        }

    %>
    </form> 
</body>

</html>
