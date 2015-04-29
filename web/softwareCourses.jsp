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
        </style>
       
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <t1>Hello ${user.getfName()} ${user.getlName()}</t1>
        <br><br>
        <div id="courseBar"><t2>
            <form action="softwareCourses.jsp" method="post">
                Select Year:
                <select name="stYear" onchange="">
                <option value="a">First year</option>
                <option value="b">Second year</option>
                <option value="c">Third year</option>
                <option value="d">Fourth year</option>
                </select>   
            </t2>
        </div>
    </body>
</html>
