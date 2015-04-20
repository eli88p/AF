<!DOCTYPE html>
<html>

<head>
	<title>
		AcadmicFeed
	</title>
	
	<style>
		
		*{
			margin: 0px;
			padding: 0px;
		}
		
		body{
                        background:darkgray;
			text-align: center;
	
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
            var valid = validateSignInForm();
            if(valid){
              /// Then your rest of process here.
            }
            });
            //Validate text box in form
            function validateSignInForm(){
                var valid = true;
                var validationMessage = 'Please correct the following errors:\r\n';
               //Validate username and password text box in form
                if ((document.getElementById('username').value.length === 0)||(document.getElementById('userpassF').value.length === 0)){
                    if (document.getElementById('username').value.length === 0){
                        validationMessage = validationMessage + '  - User Name is missing!\r\n';
                        //document.getElementById("username").style.borderColor = "#E34234";
                    }
                    if ((document.getElementById('userpassF').value.length === 0)||(document.getElementById('userpassS').value.length === 0)){
                        validationMessage = validationMessage + '  - Password is missing!\r\n';
                        //document.getElementById("userpassF").style.borderColor = "#E34234";
                        //document.getElementById("userpassS").style.borderColor = "#E34234";
                    }
                    valid = false;
                }
                
                if(document.getElementById('userpassF').value !== "" && document.getElementById('username').value !== "") {
                    re = /^\w+$/;
                    if(!re.test(document.getElementById('username').value)) {
                        validationMessage = validationMessage + '  - Username must contain only letters, numbers and underscores!\r\n';
                        //document.getElementById("username").style.borderColor = "#E34234";
                        valid = false;
                    }
            
                    if(document.getElementById('userpassF').value.length < 6) {
                        validationMessage = validationMessage + '  - Password must contain at least six characters!\r\n';
                        //document.getElementById("userpassF").style.borderColor = "#E34234";
                        //document.getElementById("userpassS").style.borderColor = "#E34234";
                        valid = false;
                    }
                    
                    if(document.getElementById('username').value.length < 6) {
                        validationMessage = validationMessage + '  - Username must contain at least six characters!\r\n';
                        //document.getElementById("username").style.borderColor = "#E34234";
                        valid = false;
                    }
                
                    if(document.getElementById('userpassF').value === document.getElementById('username').value) {
                        validationMessage = validationMessage + '  - Password must be different from Username!\r\n';
                        //document.getElementById("userpassF").style.borderColor = "#E34234";
                        //document.getElementById("userpassS").style.borderColor = "#E34234";
                        valid = false;
                    }

                    re = /[0-9]/;
                    if(!re.test(document.getElementById('userpassF').value)) {
                        validationMessage = validationMessage + '  - Password must contain at least one number (0-9)!\r\n';
                        //document.getElementById("userpassF").style.borderColor = "#E34234";
                        //document.getElementById("userpassS").style.borderColor = "#E34234";
                        valid = false;
                    }

                    re = /[a-z]/;
                    if(!re.test(document.getElementById('userpassF').value)) {
                        validationMessage = validationMessage + '  - Password must contain at least one lowercase letter (a-z)!\r\n';
                        //document.getElementById("userpassF").style.borderColor = "#E34234";
                        //document.getElementById("userpassS").style.borderColor = "#E34234";
                        valid = false;
                    }

                    re = /[A-Z]/;
                    if(!re.test(document.getElementById('userpassF').value)) {
                        validationMessage = validationMessage + '  - Password must contain at least one uppercase letter (A-Z)!\r\n';
                        //document.getElementById("userpassF").style.borderColor = "#E34234";
                        //document.getElementById("userpassS").style.borderColor = "#E34234";
                        valid = false;
                    }
                    
                    if(document.getElementById('userpassF').value !== document.getElementById('userpassS').value) {
                        validationMessage = validationMessage + '  - There is different between passwords!\r\n';
                        //document.getElementById("userpassF").style.borderColor = "#E34234";
                        //document.getElementById("userpassS").style.borderColor = "#E34234";
                        valid = false;
                    }
                }
                
                if(document.getElementById('fname').value === "") {
                        validationMessage = validationMessage + '  - First Name is missing!\r\n';
                        //document.getElementById("fname").style.borderColor = "#E34234";
                        valid = false;
                }
                    
                if(document.getElementById('lname').value === "") {
                    validationMessage = validationMessage + '  - Last Name is missing!\r\n';
                    //document.getElementById("lname").style.borderColor = "#E34234";
                    valid = false;
                }
                
                if(document.getElementById('emailF').value === "" || document.getElementById('emailS').value === "" ) {
                    validationMessage = validationMessage + '  - E-Mail is missing!\r\n';
                    //document.getElementById("emailF").style.borderColor = "#E34234";
                    //document.getElementById("emailS").style.borderColor = "#E34234";
                    valid = false;
                }
                else{
                    re=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                    if(!re.test(document.getElementById('emailF').value)) {
                        validationMessage = validationMessage + '  - Invalid email address!\r\n';
                        //document.getElementById("emailF").style.borderColor = "#E34234";
                        valid = false;
                    }

                    if(document.getElementById('emailF').value !== document.getElementById('emailS').value) {
                        validationMessage = validationMessage + '  - There is different between E-Mails!\r\n';
                        //document.getElementById("emailF").style.borderColor = "#E34234";
                        //document.getElementById("emailS").style.borderColor = "#E34234";
                        valid = false;
                    }
                }
 
                if (valid === false){
                    alert(validationMessage);
                }
                return valid;
            }
		
	</script>
</head>


<body>
    <form action="signIn">   
	<div id="main">

		<section>
                    
                        <center><table>
                                <p><tr><td><center><b>User Info</b></center></td></p>
				<p><tr><td>User Name:</td><td> <input type="text" name="username" id="username"/></td> </p></tr>
                                <p><tr><td>Password:</td><td> <input type="password" name="userpassF" id="userpassF"/></td> </p></tr>
                                <p><tr><td>Repeat password:</td><td> <input type="password"  name="userpassS" id="userpassS"/></td> </p></tr>
                                <p><tr><td><center><b>Personal Info</b></center></td></p>
                                <p><tr><td>First Name:</td><td> <input type="text" name="fname" id="fname"/></td> </p></tr>
                                <p><tr><td>Last Name:</td><td> <input type="text" name="lname" id="lname"/></td> </p></tr>
                                <p><tr><td>E-Mail:</td><td> <input type="text" name="emailF" id="emailF"/></td> </p></tr>
                                <p><tr><td>Repeat E-Mail:</td><td> <input type="text" name="emailS" id="emailS"/></td> </p></tr>
                                <p><tr><td>Department:</td><td>
                                        <select name="department" id="department">
                                            <option selected>Software</option>
                                            <option>Machines</option>
                                            <option>Building</option>
                                            <option>Chemistry</option>
                                            <option>Industrial and Management</option>
                                        </select> 
                                    </td> </p></tr>
                                <p><tr><td>Year of study:</td><td>
                                        <select name="syear" id="syear">
                                            <option selected>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select> 
                                    </td> </p></tr>
                                
    
                            </table></center>
			</form>
                    <input type="submit" value="Sign In" onclick="return validateSignInForm()"/>
                    <input type="reset" value="Clear all"/>
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