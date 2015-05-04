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
                        background-image: url(../image/bg.jpg);
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
        <div id="main" style="color:white; font-family:Impact" >

		<section>
                    
                        <center><table>
                                <tr>
                                <p><tr><td><center><b><br></b></center></td></p>
                                <tr><td><br><td><br></tr>
				<p><tr><td>User Name:</td><td> <input type="text" name="username" class="textbox" id="username"/></td> </p></tr>
                                <tr><td><br><td><br></tr>
                                <p><tr><td>Password:</td><td> <input type="password" name="userpassF" class="textbox" id="userpassF"/></td> </p></tr>
                                <tr><td><br><td><br></tr>
                                <p><tr><td>Repeat password:</td><td> <input type="password"  name="userpassS" class="textbox" id="userpassS"/></td> </p></tr>
                                <tr><td><br><td><br></tr>
                                <p><tr><td>First Name:</td><td> <input type="text" name="fname" class="textbox" id="fname"/></td> </p></tr>
                                <tr><td><br><td><br></tr>
                                <p><tr><td>Last Name:</td><td> <input type="text" name="lname" class="textbox" id="lname"/></td> </p></tr>
                                <tr><td><br><td><br></tr>
                                <p><tr><td>E-Mail:</td><td> <input type="text" name="emailF" class="textbox" id="emailF"/></td> </p></tr>
                                <tr><td><br><td><br></tr>
                                <p><tr><td>Repeat E-Mail:</td><td> <input type="text" name="emailS" class="textbox" id="emailS"/></td> </p></tr>
                                <tr><td><br><td><br></tr>
                                <p><tr><td>Department:</td><td>
                                        <select name="department" class="textbox" id="department">
                                            <option selected>Software</option>
                                            <option>Machines</option>
                                            <option>Building</option>
                                            <option>Chemistry</option>
                                            <option>Industrial and Management</option>
                                        </select> 
                                    </td> </p></tr>
                                <tr><td><br><td><br></tr>
                                <p><tr><td>Year of study:</td><td>
                                       <select name="syear" class="textbox" id="syear">
                                            <option selected>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                        </select> 
                                    </td> </p></tr>
                                    <tr><td><br><td><br></tr>
                                
    
                            </table></center>
			</form>
                    <input href="#" type="submit" class="myButton" value="Sign In" onclick="return validateSignInForm()"/>
                    <input href="#" type="reset" class="myButton" value="Clear all"/>
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
