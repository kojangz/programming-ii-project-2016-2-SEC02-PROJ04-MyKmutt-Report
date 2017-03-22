<%-- 
    Document   : Detail
    Created on : Mar 15, 2017, 7:39:13 PM
    Author     : LENOVO
--%>

<%@page import="mykmutt.report.demo.model.Ticket"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Detail</title>
    </head>
    <body>
        <style>
            .header{
                background-color:#F8F8F8;
                color:#333;
                padding-top: 20px;
                padding-left:30px;
            } 
        </style>
        <div class="container">
            <h1>Detail</h1>
            <div class="panel panel-default">
                <%
                    Ticket t = (Ticket)request.getAttribute("ticket");
                %>
                <div class="panel-heading"> Title </div>                               
                <div class="panel-body">              
                            <%=t.getDesc()%>                     
                </div>
            </div>
        </div>

    </detail>
</body>
<footer class="footer">
        <div class="container">
        <p class="text-muted">Written by My KMUTT-Report</p>
    </div>
</footer>
</html>
