
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
        <!-- include a theme, can be included into the core instead of 2 separate files -->
       


        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <title>My KMUTT - Report - Update Ticket List</title>
        <style>
            form{
                display: inline-block;
            }
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
                    <a class="navbar-brand" href="ListTickets">My KMUTT - Report &nbsp;&nbsp; | </a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                       <li><a href="Home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
                        <li><a href="AddTicket"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add Ticket</a></li> 
                        <li class="active"><a href="UpdateStatus"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> Update All Ticket</a></li>
                        <li><a href="Logout"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> Log Out</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>

        <!-- Begin page content -->
        <div class="container">
            <div class="page-header">
                <h1><font size="600">╔ <b><u>UPDATE TICKETS</u></b> ╝</font>
                    </br><font size=50> MY-KMUTT </font></h1>
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

            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Ticket Title</th>          
                        <th>Location</th>
                        <th width="200px">Update & Delete</th>

                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Ticket> tickets = (List) request.getAttribute("tickets");
                        for (Ticket t : tickets) {
                    %>
                    <tr>
                        <td><%=t.getId()%></td>
                        <td><a href = "Detail?id=<%=t.getId()%>" target="_blank"><%=t.getName()%></a></td>
                        <td>
                            <%=t.getPlace()%>
                        </td>
                        <td>    
                            <center>
                                <form action="UpdateStatus" method="post" onsubmit="return confirm('You really want to change status?');">  
                                    <input type="hidden" name="id" value="<%=t.getId()%>">
                                    <select  name="status" id="status" class="form-control">
                                        <option value="0" <%=t.getStatus() == 0 ? "selected" : ""%>>Received</option>
                                        <option value="1" <%=t.getStatus() == 1 ? "selected" : ""%>>On Going</option>
                                        <option value="2" <%=t.getStatus() == 2 ? "selected" : ""%>>Finished</option>
                                    </select>                      
                                    <button type='submit'><span class="glyphicon glyphicon-ok" aria-hidden="true"></span></button>
                                </form>
                                <form action="DeleteTicket" method="post" onsubmit="return confirm('You really want to delete?');">       
                                    <button type='submit'><span class="glyphicon glyphicon-trash"  ></span></button>
                                    <input type="hidden" name="id" value="<%=t.getId()%>"> 
                                </form>  
                            </center>
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
                <p class="text-muted">Written by My KMUTT-Report</p>
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
