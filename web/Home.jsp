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
        <div class="container">
            <div class="header">
                <h1>Home</h1>
            </div>

            <%
                if (request.getAttribute("code") != null) {
            %>
            <div class="alert alert-<%=(String) request.getAttribute("code")%>">
                <strong><%=(String) request.getAttribute("alert")%></strong> <%=(String) request.getAttribute("message")%>
            </div>
            <%
                }
            %>
            
            <button type="button" class="btn btn-default btn-lg btn-block"> Add Ticket </button>
            <button type="button" class="btn btn-default btn-lg btn-block"> Report </button>
            <button type="button" class="btn btn-default btn-lg btn-block"> Register </button>
        </div>
    </body>
    <footer class="footer">
        <div class="container">
            <p class="text-muted">Written by My KMUTT-Report</p>
        </div>
    </footer>
</html>
