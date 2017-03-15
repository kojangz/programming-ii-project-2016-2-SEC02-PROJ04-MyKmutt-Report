<%-- 
    Document   : login
    Created on : Mar 15, 2017, 7:50:31 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <style>
            .header{
                background-color: #000000;
                padding-top: 90px ;
                padding-left: 30px;
                color: #FFFFFF;
            }
            .container{
                background-color:#FFD700;
                
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <article>
                    <h2><font size="200">Log in</font></h2>
                </article>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <form>
                        <div class="form-group">
                            <label for="exampleUsername">Username</label>
                            <input type="Username" class="form-control" id="exampleUsername" placeholder="Enter Username">
                        </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <form>
                        <div class="form-group">
                            <label for="examplePassword">Password</label>
                            <input type="Password" class="form-control" id="examplePassword" placeholder="Enter Password">
                        </div>
                </div>
            </div>
            <div class="button">
                <p>
                   <button type="button" class="btn btn-primary btn-lg active">Login</button>
                   <button type="button" class="btn btn-primary btn-lg active">Register</button>
                </p>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
