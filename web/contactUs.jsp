<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <script>
            $("#submit").click(function(){
            var valid = emailValid();
            if(valid){
              /// Then your rest of process here.
            }
            });
            function emailValid(){
                var valid = true;
                var validationMessage = 'Please correct the following errors:\r\n';
                //check if the name exist or is correct.
                if(document.getElementById('cu_name').value === "") {
                    validationMessage = validationMessage + '  - Name is missing!\r\n';
                    //document.getElementById("emailF").style.borderColor = "#E34234";
                    //document.getElementById("emailS").style.borderColor = "#E34234";
                    valid = false;
                }
                 //check if the message exist or is correct.
                if(document.getElementById('cu_message').value === "") {
                    validationMessage = validationMessage + '  - Message is missing!\r\n';
                    //document.getElementById("emailF").style.borderColor = "#E34234";
                    //document.getElementById("emailS").style.borderColor = "#E34234";
                    valid = false;
                }
                  //check if the email exist or is correct.
                if(document.getElementById('cu_email').value === "") {
                    validationMessage = validationMessage + '  - E-Mail is missing!\r\n';
                    //document.getElementById("emailF").style.borderColor = "#E34234";
                    //document.getElementById("emailS").style.borderColor = "#E34234";
                    valid = false;
                }
                else{
                    re=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                    if(!re.test(document.getElementById('cu_email').value)) {
                        validationMessage = validationMessage + '  - Invalid email address!\r\n';
                        //document.getElementById("emailF").style.borderColor = "#E34234";
                        valid = false;
                    }
                }
 
                if (valid === false){
                    alert(validationMessage);
                }
                return valid;
            }
        </script>
        <style>
            body{
                background-image: url(image/bg.jpg);
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
              .textarea { 
                background: white; 
                border: 5px solid white; 
                border-radius: 5px; 
                box-shadow: 0 0 5px 3px white; 
                color:black;
                outline: none; 
                height:200px; 
                width: 275px;
                resize: none;
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
        #main{
                width: 600px;
                margin : 50px auto;
                text-align: center;
                background-color: transparent;
        }
        </style>
    </head>
    <body>
        <form action="ContactUS">
            <%
                // check if there error message and show it
                if(request.getAttribute("ErrorMessage")!=null){
                    String msg=request.getAttribute("ErrorMessage").toString();

                if(!msg.equals(""))
                    out.print("<script>alert('"+msg+"');</script>");
                }
            %>
            <div id="main" style="font-family:Impact">
                <section>
                    <center>
                        <table>
                            <tr><p><td></td> </p></tr>
                            <tr><td><br><td><br></tr>
                            <tr><p><td>
                                <font style="color:white">Your name: 
                            </td><td>
                                <input type="text" name="cu_name" id="cu_name" class="textbox" value="${user.getfName()} ${user.getlName()}">
                            </td></p></tr>
                            <tr><td><br><td><br></tr>
                            <tr><p><td>
                                <font style="color:white">Your e-mail: 
                            </td><td>
                                <input type="text" name="cu_email" id="cu_email" class="textbox" value="${user.getEmail()}">
                            </td> </p></tr>
                            <tr><td><br><td><br></tr>
                            <tr><p><td>
                                <font style="color:white">Message: 
                            </td><td>
                                <textarea name="cu_message" id="cu_message" class="textarea"  rows="4" cols="50"></textarea>
                            </td></p></tr>
                            <tr><td><br><td><br></tr>
                        </table>
                    </center>
                </section>
            <input href="#" type="submit" class="myButton" value="Send" onclick="return emailValid()"/>
            
            <input type="reset" value="Clear" class="myButton">
        </form>
    </body>
</html>
