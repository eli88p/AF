<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
      
        <style>
            body{
                        background-image: url("http://cdn.elegantthemes.com/blog/wp-content/uploads/2013/09/bg-2-full.jpg");
			font-size: 18;
	
		}
                t1{
                    color:white;
                }
                t1{
                    color:white;
                }
                t2{
                    color:white;
                    font-size: 150%;
                }
                #courseBar{
                    width: 200px;
                    height: 500px;
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
        <script type="text/javascript">
            function setList(){
                var myDiv = document.getElementById("courseBar");
                
            }
        </script>
       
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
    <t1>Hello ${user.getfName()} ${user.getlName()}<br>
        Department: ${user.getDepartment()} <br> Year: ${user.getsYear()}
        <P align="right"><a href="logout.asp" target="body">Logout</a></P></t1>
        <br>
        <div id="courseBar"><t2>
                Select Year:
                <select name="stYear" id="dropdown" onchange="">
                    <option value="dropdown">Select one</option>
                    <option value="a">First year</option>
                    <option value="b">Second year</option>
                    <option value="c">Third year</option>
                    <option value="d">Fourth year</option>
                </select> <input href="#" type="submit" class="myButton" value="Show List" onclick="setList()"/>
                  
                
            </t2>
        </div>
    </body>
</html>
