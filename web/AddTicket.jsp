<%-- 
    Document   : ListTickets
    Created on : Feb 6, 2017, 11:36:55 PM
    Author     : Koichi
--%>

<%@page import="java.util.List"%>
<%@page import="mykmutt.report.demo.model.Ticket"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Report - Add Ticket</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <title>My KMUTT - Report - Ticket List</title>
        <style>
            html,body{
                background-color:#F5F5F5;
                color: #000000;
            }
            .page-header{
                background-color:#FFFFFF;
                padding-top: 40px ;
                padding-left: 30px;
                padding-right: 30px;
                padding-bottom: 40px;
                color: #000000;
                font-family:Cordia New;
                text-align:center;
            }
            .container{
                width:900px;
            }
        </style>
    </head>
    <body>

        <!-- Fixed navbar -->
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="ListTickets">My KMUTT - Report &nbsp;&nbsp;|</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="Home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
                        <li class="active"><a href="AddTicket"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add Ticket</a></li>
                        <li><a href="ListTickets"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> List all ticket</a></li>
                        <li><a href="Logout"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> Log out</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>

        <!-- Begin page content -->
        <div class="container">
            <div class="page-header">
                <article>
                    <h1><font size="600">╔ <b><u>ADD TICKET</u></b> ╝</font>
                        </br><font size=50> MY-KMUTT </font></h1>
                </article>
            </div>

            <%
                if (request.getAttribute("code") != null) {
            %>
            <div class="alert alert-<%=(String) request.getAttribute("code")%>">
                <strong><%=(String) request.getAttribute("alert")%></strong> 
                <%=(String) request.getAttribute("message")%>
            </div>
            <%
                }
            %>
            <div class="content">
                <form action="AddTicket" method="get">
                    <div class="form-group">
                        <label for="title">TITLE</label>
                        <input name="name" type="text" class="form-control" id="title" placeholder="Title">
                    </div>
                    <div class="form-group">
                        <label for="desc">DESCRIPTION</label>
                        <textarea name="desc" class="form-control" id="desc" rows="3" placeholder="Description"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="place">LOCATION</label>
                        <input name="place" type="text" class="form-control" id="place" placeholder="Location">
                    </div>


                    <input name="member_id" type="hidden" value="<%=session.getAttribute("member_id")%>">
                    <button type="submit" name="submit" class="btn btn-default">SUBMIT</button>
                </form>
            </div>
        </div>

        <footer class="footer">
            <div class="container">
                <p class="text-muted">Written by My KMUTT-Report</p>
            </div>
        </footer>

        <!-- Bootstrap core JavaScript
================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
