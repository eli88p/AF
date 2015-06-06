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
                background-image: url(image/bg.jpg);
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
            text1
            {
                color: white;
            }
            .myButton1 {
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
                        padding:9px 17px;
                        text-decoration:none;
                        text-shadow:0px 1px 3px #010203;
                }
                .myBut {
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
                        padding:4px 17px;
                        text-decoration:none;
                        text-shadow:0px 1px 3px #010203;
                }
                .myButton1:hover {
                        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #027c8f), color-stop(1, #3c6978));
                        background:-moz-linear-gradient(top, #027c8f 5%, #3c6978 100%);
                        background:-webkit-linear-gradient(top, #027c8f 5%, #3c6978 100%);
                        background:-o-linear-gradient(top, #027c8f 5%, #3c6978 100%);
                        background:-ms-linear-gradient(top, #027c8f 5%, #3c6978 100%);
                        background:linear-gradient(to bottom, #027c8f 5%, #3c6978 100%);
                        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#027c8f', endColorstr='#3c6978',GradientType=0);
                        background-color:#027c8f;
                }
                .myButton1:active {
                        position:relative;
                        top:1px;
                }
                .myBut:hover {
                        background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #027c8f), color-stop(1, #3c6978));
                        background:-moz-linear-gradient(top, #027c8f 5%, #3c6978 100%);
                        background:-webkit-linear-gradient(top, #027c8f 5%, #3c6978 100%);
                        background:-o-linear-gradient(top, #027c8f 5%, #3c6978 100%);
                        background:-ms-linear-gradient(top, #027c8f 5%, #3c6978 100%);
                        background:linear-gradient(to bottom, #027c8f 5%, #3c6978 100%);
                        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#027c8f', endColorstr='#3c6978',GradientType=0);
                        background-color:#027c8f;
                }
                .myBut:active {
                        position:relative;
                        top:1px;
                }
        </style>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <center>
             <div>
                 <!-->page df file upload with two buttons that allow to choose file and upload it.<-->
                 <br><br><br><br><br><br><br><br><text1> <b>Choose File to Upload (Only PDF, DOC, DOCX): </b><br><br>
                        <form action="UploadServlet" method="post" enctype="multipart/form-data">
                            <input type="file" class="myBut" name="file" /><br><br><br>
                            <input type="submit" class="myButton1" value="upload" />
                        </form>   </text1>      
            </div>
        </center>
    </body>
</html>
