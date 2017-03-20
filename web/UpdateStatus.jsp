<%-- 
    Document   : ListTickets
    Created on : Feb 6, 2017, 11:36:55 PM
    Author     : Koichi
--%>

<%@page import="mykmutt.report.demo.model.Ticket"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Report - Ticket List</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">

        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <title>My KMUTT - Report - Update Ticket List</title>
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
                        <li class="active"><a href="ListTickets">Home</a></li>
                        <li><a href="AddTicket">Add Ticket</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>

        <!-- Begin page content -->
        <div class="container">
            <div class="page-header">
                <h1>Update Tickets</h1>
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
            
            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Ticket Title</th>
                        <th>Detail</th>
                        <th>Update</th>

                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Ticket> tickets = (List) request.getAttribute("tickets");
                        for (Ticket t : tickets) {
                    %>
                    <tr>
                        <td><%=t.getId()%></td>
                        <td><%=t.getName()%></td>
                        <td><%
                            if(t.getDesc().length() > 100){
                            out.print(t.getDesc().substring(0,100)+"...");
                            }
                            else{
                                out.print(t.getDesc());
                            }
                            %>
                        </td>
                        <td>
                            <form action="UpdateStatus" method="get">
                                <div>
                                    <input type="hidden" name="id" value="<%=t.getId()%>">
                                    <select name="status" id="status" class="form-control">

                                        <option value="0" <%=t.getStatus() == 0 ? "selected" : ""%>>Received</option>
                                        <option value="1" <%=t.getStatus() == 1 ? "selected" : ""%>>On Going</option>
                                        <option value="2" <%=t.getStatus() == 2 ? "selected" : ""%>>Finished</option>
                                    </select>
                                    <input type="submit" value="Submit">
                                </div>
                            </form>
                            
                        </td>

                    </tr>
                    <%
                        }
                    %>
                </tbody>

            </table>
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

        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>

        <script type="text/javascript" class="init">
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </body>
</html>
