<%-- 
    Document   : Detail
    Created on : Mar 15, 2017, 7:39:13 PM
    Author     : LENOVO
--%>

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
    </head>
    <body>
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
                margin-bottom: 4%;
                width:900px;
            }
            
        </style>
        <div class="container">
            <div class="header">
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
                            <p> Location : <%=t.getPlace()%> </p>
                            <p> Status : <%=t.getStatusName()%> </p>

                        </div>
                    </div>
                </div>

                <div class="col-md-4"><div class="panel panel-default">
                        <div class="panel-heading"> <h3> User Info. </h3></div>                               
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
