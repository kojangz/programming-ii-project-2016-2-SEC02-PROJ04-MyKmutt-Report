<%-- 
    Document   : Detail
    Created on : Mar 15, 2017, 7:39:13 PM
    Author     : LENOVO
--%>

<%@page import="mykmutt.report.demo.model.Place"%>
<%@page import="mykmutt.report.demo.model.Member"%>
<%@page import="mykmutt.report.demo.model.Ticket"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/sticky-footer-navbar.css" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>Detail</title>
        <style>
            html,body{
                background-color:#F5F5F5;
            }
            .page-header{
                background-color:#FFFFFF;
                padding-top: 40px ;
                padding-left: 30px;
                padding-right: 30px;
                padding-bottom: 40px;
                color: #000000;
                font-family:Cordia New;
                font-size: 500px;
                text-align: center;
            } 
            .panel-heading{
                background-color:#696969;
            }
            .panel-body {
                display:block;
                width:100%;
                word-wrap:break-word;
                padding-bottom: 5%;
            }
            .container{
                width:900px;
            }
            .block1{
                float:right;
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
                    <div class="block2">
                        <a class="navbar-brand" href="ListTickets">My-KMUTT Report |</a>
                        <a class="navbar-brand"><font size="3"><font color="#9ACD32"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></font>
                            <%=session.getAttribute("member_name")%> Login Now</font></a>

                        <div class="block1">
                            <div id="navbar" class="collapse navbar-collapse">
                                <ul class="nav navbar-nav">
                                    <li><a href="Home"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
                                    <li><a href="AddTicket"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Add Ticket</a></li> 
                                    <li class="active"><a href="ListTickets"><span class="glyphicon glyphicon-search" aria-hidden="true"></span> List all ticket</a></li>
                                    <li><a href="MyTickets"><span class="glyphicon glyphicon-th-list" aria-hidden="true"></span> My Tickets</a></li>
                                    <li><a href="Logout"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> Log out</a></li>
                                </ul>
                            </div>
                        </div>
                    </div><!--/.nav-collapse -->

                </div>
        </nav>
        <div class="container">
            <div class="page-header">
                <h1><font size="600">╔ <b><u>DETAIL OF TICKET</u></b> ╝</font></br>
                    <font size=70> MY-KMUTT </font>
                </h1>

                <%
                    Ticket t = (Ticket) request.getAttribute("ticket");
                    Member m = Member.getMember(t.getUserId());

                %>
            </div><br>
            <div class="row">
                <div class="col-md-8">
                    <div class="panel panel-default">
                        <div class="panel-heading"> <h3> <%=t.getName()%> </h3></div>                               
                        <div class="panel-body">              
                            <%=t.getDesc()%>  
                            <br>
                            <br>
                            <p> Location : <%=Place.getNameById(Integer.parseInt(t.getPlace()))%> </p>
                            <p> Status : <%=t.getStatusName()%> </p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4"><div class="panel panel-default">
                        <div class="panel-heading"> <h3><span class="glyphicon glyphicon-user" aria-hidden="true"></span> User Info. </h3></div>                               
                        <div class="panel-body"> 
                            <p> Username : <%=m.getUsername()%></p>
                            <p> Name : <%=m.getName()%></p>
                            <p> Surname : <%=m.getSurname()%></p>
                            <p> Student ID : <%=m.getStdId()%></p>
                            <p> Gender : <%=m.getGenderName()%></p>
                            <p> Faculty : <%=m.getFaculty()%></p>
                            <p> Email : <%=m.getEmail()%></p>
                        </div>
                    </div>


                </div>
            </div>
        </detail>
</body>
<footer class="footer">
    <div class="credit">
        <p class="text-muted">Written by My KMUTT-Report</p>
    </div>
</footer>
</html>
