<%-- 
    Document   : ListTickets
    Created on : Feb 6, 2017, 11:36:55 PM
    Author     : Koichi
--%>

<%@page import="mykmutt.report.demo.model.Place"%>
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
                    <a class="navbar-brand" href="ListTickets">My KMUTT - Report</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="ListTickets">Home</a></li>
                        <li class="active"><a href="AddTicket">Add Ticket</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>

        <!-- Begin page content -->
        <div class="container">
            <div class="page-header">
                <h1>Add Ticket</h1>
            </div>
            
            <%
                if (request.getAttribute("code") != null) {
            %>
            <div class="alert alert-<%=(String)request.getAttribute("code")%>">
                <strong><%=(String)request.getAttribute("alert")%></strong> <%=(String)request.getAttribute("message")%>
            </div>
            <%
                }
            %>
            
            <form action="AddTicket" method="POST">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input name="name" type="text" class="form-control" id="title" placeholder="Title">
                </div>
                <div class="form-group">
                    <label for="desc">Description</label>
                    <textarea name="desc" class="form-control" id="desc" rows="3" placeholder="Description"></textarea>
                </div>
                <div class="form-group">
                    <label for="place">Place</label>
                    <select name="place" id="place" class="form-control">
                        <%
                            List<Place> places = (List) request.getAttribute("places");
                            for (Place p : places) {
                        %>
                        <option value="<%=p.getId()%>"><%=p.getName()%></option>
                        <%
                            }
                        %>
                    </select>
                </div>
                <button type="submit" name="submit" class="btn btn-default">Submit</button>
            </form>
        </div>

        <footer class="footer">
            <div class="container">
                <p class="text-muted">Written by Koichi Uemura</p>
            </div>
        </footer>

        <!-- Bootstrap core JavaScript
================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
