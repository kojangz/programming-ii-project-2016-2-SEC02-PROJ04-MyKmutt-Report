<%-- 
    Document   : Register
    Created on : Mar 15, 2017, 6:14:22 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <style>
            .header{
                background-color: #E0E0E0;
                padding-top: 40px ;
                padding-left: 30px;
                padding-right: 30px;
                padding-bottom: 40px;
                color: #000000;
            }
            .container{
                position: fixed;
                background-color:#CCE5FF no-repeat;
                top: 0;
                left: 0;
                min-width: 100%;
                min-height: 100%;
                padding-left: 30px;
                padding-right: 30px;
            }
        </style>
    </head>
    <body>
        <div class="container">            
            <div class="header">
                <article>
                    <h2><font size="200"> REGISTER </font></h2>
                </article>
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
            <br>
            <form action="Register" method="POST">
                <div class="row">
                    <div class="col-md-5">
                        <div class="form-group">
                            <label for="exampleName">Your're name</label>
                            <input type="name" class="form-control" id="exampleName" name="name" placeholder="name">
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="form-group">
                            <label for="exampleSurname">Your're surname</label>
                            <input type="surname" class="form-control" id="exampleSurname" name="surname" placeholder="surname">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5">

                        <div class="form-group">
                            <label for="exampleStudentID">Your're student ID</label>
                            <input type="number" class="form-control" id="exampleStudentID" name="student_ID" placeholder="ID">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="exampleStudentID">Your're gender</label>
                        <br>
                        <label class="checkbox-inline">
                            <input type="radio" id="inlineCheckbox1" name="gender" value="F"> Female
                        </label>
                        <label class="checkbox-inline">
                            <input type="radio" id="inlineCheckbox2" name="gender" value="M"> Male
                        </label>
                    </div>

                    <div class="col-md-8">

                        <div class="form-group">
                            <label for="exampleFaculty">Your's faculty</label>
                            <select id="exampleFaculty" name="faculty" class="form-control">
                                <option value="-"> Select Faculty </option>
                                <option value="ETE">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิศวกรรมไฟฟ้า</option>
                                <option value="ECT">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาเทคโนโลยีการศึกษาและสื่อสารมวลชน</option>
                                <option value="PT">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาเทคโนโลยีอุตสาหกรรม</option>
                                <option value="PPT">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาเทคโนโลยีการพิมพ์และบรรจุภัณฑ์</option>
                                <option value="CMM">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิทยาการคอมพิวเตอร์ประยุกต์-มัลติมีเดีย</option>
                                <option value="MA">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขามีเดียอาตส์</option>
                                <option value="MMDA">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขามีเดียทางการแพทย์และวิทยาศาสตร์</option>
                                <option value="MTE">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิศวกรรมเครื่องกล</option>
                                <option value="CTE">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิศวกรรมโยธา</option>
                                <option value="PTE">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิศวกรรมอุตสาหการ</option>
                                <option value="MT">คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาเทคโนโลยีมีเดีย</option>

                                <option value="MTH">คณะวิทยาศาสตร์ สาขาคณิตศาสตร์</option>
                                <option value="CHM">คณะวิทยาศาสตร์ สาขาเคมี</option>
                                <option value="MIC">คณะวิทยาศาสตร์ สาขาจุลชีววิทยา</option>
                                <option value="PHY">คณะวิทยาศาสตร์ สาขาฟิสิกส์ประยุกต์</option>
                                <option value="CS">คณะวิทยาศาสตร์ สาขาวิทยาการคอมพิวเตอร์ประยุกต์</option>
                                <option value="FST">คณะวิทยาศาสตร์ สาขาวิทยาศาสตร์และเทคโนโลยีการอาหาร</option>
                                <option value="MTH ST">คณะวิทยาศาสตร์ สาขาสถิติ</option>

                                <option value="CE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมโยธา</option>
                                <option value="CE IP">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมโยธา หลักสูตรนานาชาติ</option>
                                <option value="CHE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเคมี</option>
                                <option value="CHE IP">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเคมี หลักสูตรนานาชาติ</option>
                                <option value="ENV">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมสิ่งแวดล้อม</option>
                                <option value="ENV IP">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมสิ่งแวดล้อม หลักสูตรนานาชาติ</option>
                                <option value="MCE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเมคคาทรอนิกส์</option>
                                <option value="CPE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมคอมพิวเตอร์</option>
                                <option value="CPE IP">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมคอมพิวเตอร์ หลักสูตรนานาชาติ</option>
                                <option value="ME">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเครื่องกล</option>
                                <option value="ENE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมไฟฟ้าสื่อสารและอิเล็กทรอนิกส์</option>
                                <option value="ENE IP">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมไฟฟ้าสื่อสารและอิเล็กทรอนิกส์ หลักสูตรนานาชาติ</option>
                                <option value="EE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมไฟฟ้า</option>
                                <option value="PE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมอุตสาหการ</option>
                                <option value="TME">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเครื่องมือและวัสดุ</option>
                                <option value="INC">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมระบบควบคุมและเครื่องมือวัด</option>
                                <option value="AE">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมอัตโนมัติ หลักสูตรนานาชาติ</option>
                                <option value="AME">คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมการผลิตชิ้นส่วนยานยนต์</option>

                                <option value="SIT">คณะเทคโนโลยีสารสนเทศ สาขาเทคโนโลยีสารสนเทศ </option>
                                <option value="CS EP">คณะเทคโนโลยีสารสนเทศ สาขาวิทยาการคอมพิวเตอร์</option>

                                <option value="ARC">คณะสถาปัตยกรรมศาสตร์และการออกแบบ สาขาสถาปัตยกรรม หลักสูตรนานาชาติ</option>
                                <option value="ID">คณะสถาปัตยกรรมศาสตร์และการออกแบบ สาขาการออกแบบอุตสาหกรรม หลักสูตรนานาชาติ</option>
                                <option value="CMD">คณะสถาปัตยกรรมศาสตร์และการออกแบบ สาขาออกแบบนิเทศศิลป์ หลักสูตรนานาชาติ</option>
                                <option value="INA">คณะสถาปัตยกรรมศาสตร์และการออกแบบ สาขาสถาปัตยกรรมภายใน หลักสูตรนานาชาติ</option>

                                <option value="FIBO">สถาบันวิทยาการหุ่นยนต์ภาคสนาม สาขาวิศวกรรมหุ่นยนต์และระบบอัตโนมัติ</option>

                                <option value="IBP">หลักสูตรเฉพาะบุคคล (IBP) สาขาวิทยาศาสตร์และเทคโนโลยี</option>

                                <option>------------------------------------------------------------------------------</option>
                            </select>
                        </div>
                        <div class="row">               
                            <div class="col-md-6">

                                <div class="form-group">
                                    <label for="exampleEmail">E-mail Address</label>
                                    <input type="Email" class="form-control" id="exampleEmail" name="email" placeholder="Email......">
                                </div>
                            </div>
                        </div>
                        <div class="row">               
                            <div class="col-md-6">

                                <div class="form-group">
                                    <label for="exampleUsername">Create Username</label>
                                    <input type="username" class="form-control" id="exampleUsername" name="username" placeholder="Create Username">
                                </div>
                            </div>  
                        </div>
                        <div class="row">               
                            <div class="col-md-6">

                                <div class="form-group">
                                    <label for="exampleNewPassword">New Password</label>
                                    <input type="password" class="form-control" id="exampleNewPassword" name="password" placeholder="New Password">
                                </div>
                            </div>              
                            <div class="col-md-6">

                                <div class="form-group">
                                    <label for="exampleConfirmPassword">Confirm Password</label>
                                    <input type="password" class="form-control" id="exampleConfirmPassword" name="repassword" placeholder="Confirm Password">
                                </div>
                            </div>
                        </div>
                        <div class="button">
                            <a href="login.jsp"><input name="submit" value="submit" type="submit" class="btn btn-primary btn-lg active"></input></a>
                            <input type="reset" class="btn btn-default btn-lg active"></input>
                        </div>
                    </div>
                </div>
            </form>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <br>
            <br>
            </body>
            </html>
