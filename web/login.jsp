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
            html,body{
                background-color:#F5F5F5;
            }
            .header{
                background-color:#FFFFFF;
                padding-top: 40px ;
                padding-left: 30px;
                padding-right: 30px;
                padding-bottom: 40px;
                color: #000000;
                font-family:Cordia New;
                font-size: 500px;
            }
            h2{
                font-size: 100px;
                text-align: center;
                line-height: 50px;
            }
            .container{
                width:600px;
                color: #FFFFCC;
            }
            .contents{
                display: block;
                background-color:#D3D3D3;
                padding-top: 20px ;
                padding-left: 30px;
                padding-right: 30px;
                padding-bottom: 20px;
                font-size: 30px;
                color: #000000;
                font-family:Cordia New;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <br>
        <div class="container">
            <div class="header">
                <article>
                    <h2><font> ╔ <u>LOG IN</u> ╝</font></br>
                        <font size=100> MY-KMUTT </font></h2>
                </article>
            </div><br>
            <%
                if (request.getAttribute("code") != null) {
            %>
            <div class="alert alert-success alert-<%=(String) request.getAttribute("code")%>">
                <strong><font color="#000000"><%=(String) request.getAttribute("alert")%></strong> <%=(String) request.getAttribute("message")%>
                </font>
            </div>
            <%
                }
            %>
            <form action="Login" method="post">
                <div class="contents">
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="form-group">
                                <label for="exampleUsername"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> USERNAME</label>
                                <div class="input-group-addon"> ✎ </div>
                                <font face="Tahoma">
                                <input type="Username"  class="form-control" id="exampleUsername" name="username" placeholder="USERNAME">
                                </font>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <div class="form-group">
                                <label for="examplePassword"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span> PASSWORD</label>
                                <div class="input-group-addon"> ✎ </div>
                                <font face="Tahoma">
                                <input type="password" class="form-control" id="examplePassword" name="password" placeholder="PASSWORD">
                                </font>
                            </div>
                        </div>
                    </div>
                    <div class="button">
                        <p>
                            <input type="submit" name="submit" class="btn btn-primary btn-lg" value="LOG IN"></input>
                         or  
                            <a href="Register"><button type="button" class="btn btn-info btn-lg">REGISTER</button></a>
                        </p>
                    </div>
                </div>
            </form>
        </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
    </body>
</html>
