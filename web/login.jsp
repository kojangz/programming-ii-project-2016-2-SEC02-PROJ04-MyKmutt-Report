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
        <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Open+Sans:600'>
        <title>Log in page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <style>
            .header{
                background-color: #E0E0E0;
                padding-top: 40px ;
                padding-left: 30px;
                padding-right: 30px;
                padding-bottom: 40px;
                color: #000000;
            }
            .container{
                position: fixed;
                background-color:#CCE5FF no-repeat;
                top: 0;
                left: 0;
                min-width: 100%;
                min-height: 100%;
                padding-left: 30px;
                padding-right: 30px;
            }
            .row{
                font-size: 20px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <article>
                    <h2><font size="200">LOG IN </font></h2>
                </article>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <form action="" method="get">
                        <br>
                        <div class="form-group">
                            <label for="exampleUsername">Username</label>
                            <input type="Username" class="form-control" id="exampleUsername" name="username" placeholder="Enter Username">
                        </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="examplePassword">Password</label>
                        <input type="Password" class="form-control" id="examplePassword" name="password" placeholder="Enter Password">
                    </div>
                </div>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox" name="remember"> Remember me
                </label>
            </div>
            <div class="button">
                <p>
                    <input type="submit" class="btn btn-primary btn-lg active" value="Log in"></input>
                    <a href="Register"><button type="button" class="btn btn-primary btn-lg active">Register</button></a>
                </p>
                </form>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
