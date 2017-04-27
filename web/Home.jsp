<%-- 
    Document   : Home
    Created on : Mar 15, 2017, 6:14:23 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
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
            }
            h1{
                font-size: 100px;
                text-align: center;
                line-height: 50px;
            }
        </style>
    </head>
    <body>
        <br>
        <p align="right"><font size="3"><font color="#9ACD32"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></font>
            <%=session.getAttribute("member_name")%> Login Now &nbsp;&nbsp;</font></p>
        <br>
            <div class="header">
                <h1>╔ <u>HOME</u> ╝</br>
                     <font size=100> MY-KMUTT </font>
                </h1>
            </div>
            <div class="container">
            <a href="AddTicket"><button type="button" class="btn btn-default btn-lg btn-block"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>  Add Ticket ! </button></a><br>
            <a href="ListTickets"><button type="button" class="btn btn-default btn-lg btn-block"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> List All Tickets !</button></a><br>
            <a href="Logout"><button type="button" class="btn btn-default btn-lg btn-block"> <span class="glyphicon glyphicon-off" aria-hidden="true"></span> LOG OUT </button></a>
        </div>
    </body>
    <footer class="footer">
        <div class="container">
            <p class="text-muted">Written by My KMUTT-Report</p>
        </div>
    </footer>
</html>
