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
                background-color: #000000;
                padding-top: 90px ;
                padding-left: 30px;
                color: #FFFFFF;
            }
            .container{
                background-color:#FFD700;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <article>
                    <h2><font size="200"> Register </font></h2>
                </article>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <form>
                        <div class="form-group">
                            <label for="exampleName">Your's name</label>
                            <input type="name" class="form-control" id="exampleName" placeholder="name">
                        </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleSurname">Your's surname</label>
                        <input type="surname" class="form-control" id="exampleSurname" placeholder="surname">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <form>
                        <div class="form-group">
                            <label for="exampleStudentID">Your's student ID</label>
                            <input type="ID" class="form-control" id="exampleStudentID" placeholder="ID">
                        </div>
                </div>

                <div class="col-md-8">
                    <form>
                        <div class="form-group">
                            <label for="exampleFaculty">Your's faculty</label>
                            <select id="exampleFaculty" class="form-control">
                                <option> Select Faculty </option>
                                <option>คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิศวกรรมไฟฟ้า</option>
                                <option>คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาเทคโนโลยีการศึกษาและสื่อสารมวลชน</option>
                                <option>คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาเทคโนโลยีอุตสาหกรรม</option>
                                <option>คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาเทคโนโลยีการพิมพ์และบรรจุภัณฑ์</option>
                                <option>คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิทยาการคอมพิวเตอร์ประยุกต์-มัลติมีเดีย</option>
                                <option>คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขามีเดียอาตส์</option>
                                <option>คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขามีเดียทางการแพทย์และวิทยาศาสตร์</option>
                                <option>คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิศวกรรมเครื่องกล</option>
                                <option>คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิศวกรรมโยธา</option>
                                <option>คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาวิศวกรรมอุตสาหการ</option>
                                <option>คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี สาขาเทคโนโลยีมีเดีย</option>

                                <option>คณะวิทยาศาสตร์ สาขาคณิตศาสตร์</option>
                                <option>คณะวิทยาศาสตร์ สาขาเคมี</option>
                                <option>คณะวิทยาศาสตร์ สาขาจุลชีววิทยา</option>
                                <option>คณะวิทยาศาสตร์ สาขาฟิสิกส์ประยุกต์</option>
                                <option>คณะวิทยาศาสตร์ สาขาวิทยาการคอมพิวเตอร์ประยุกต์</option>
                                <option>คณะวิทยาศาสตร์ สาขาวิทยาศาสตร์และเทคโนโลยีการอาหาร</option>
                                <option>คณะวิทยาศาสตร์ สาขาสถิติ</option>

                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมโยธา</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมโยธา หลักสูตรนานาชาติ</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเคมี</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเคมี หลักสูตรนานาชาติ</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมสิ่งแวดล้อม</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมสิ่งแวดล้อม หลักสูตรนานาชาติ</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเมคคาทรอนิกส์</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมคอมพิวเตอร์</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมคอมพิวเตอร์ หลักสูตรนานาชาติ</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเครื่องกล</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมไฟฟ้าสื่อสารและอิเล็กทรอนิกส์</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมไฟฟ้าสื่อสารและอิเล็กทรอนิกส์ หลักสูตรนานาชาติ</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมไฟฟ้า</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมอุตสาหการ</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมเครื่องมือ</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมไฟฟ้า ระบบไฟฟ้า</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมระบบควบคุมและเครื่องมือวัด</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมอัตโนมัติ หลักสูตรนานาชาติ</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมวัสดุ</option>
                                <option>คณะวิศวกรรมศาสตร์ สาขาวิศวกรรมการผลิตชิ้นส่วนยานยนต์</option>

                                <option>คณะเทคโนโลยีสารสนเทศ สาขาเทคโนโลยีสารสนเทศ </option>
                                <option>คณะเทคโนโลยีสารสนเทศ สาขาวิทยาการคอมพิวเตอร์</option>

                                <option>คณะสถาปัตยกรรมศาสตร์และการออกแบบ สาขาสถาปัตยกรรม หลักสูตรนานาชาติ</option>
                                <option>คณะสถาปัตยกรรมศาสตร์และการออกแบบ สาขาการออกแบบอุตสาหกรรม หลักสูตรนานาชาติ</option>
                                <option>คณะสถาปัตยกรรมศาสตร์และการออกแบบ สาขาออกแบบนิเทศศิลป์ หลักสูตรนานาชาติ</option>
                                <option>คณะสถาปัตยกรรมศาสตร์และการออกแบบ สาขาสถาปัตยกรรมภายใน หลักสูตรนานาชาติ</option>

                                <option>สถาบันวิทยาการหุ่นยนต์ภาคสนาม สาขาวิศวกรรมหุ่นยนต์และระบบอัตโนมัติ</option>

                                <option>หลักสูตรเฉพาะบุคคล (IBP) สาขาวิทยาศาสตร์และเทคโนโลยี</option>

                                <option>------------------------------------------------------------------------------</option>
                            </select>
                        </div>
                        <div class="row">               
                            <div class="col-md-6">
                                <form>
                                    <div class="form-group">
                                        <label for="exampleEmail">Your's Email</label>
                                        <input type="Email" class="form-control" id="exampleEmail" placeholder="Email......">
                                    </div>
                            </div>
                        </div>
                        <div class="row">               
                            <div class="col-md-6">
                                <form>
                                    <div class="form-group">
                                        <label for="exampleNewPassword">New Password</label>
                                        <input type="New Password" class="form-control" id="exampleNewPassword" placeholder="New Password">
                                    </div>
                            </div>              
                            <div class="col-md-6">
                                <form>
                                    <div class="form-group">
                                        <label for="exampleConfirmPassword">Confirm Password</label>
                                        <input type="Confirm Password" class="form-control" id="exampleConfirmPassword" placeholder="Confirm Password">
                                    </div>
                            </div>
                        </div>
                        <div class="button">
                            <button type="button" class="btn btn-primary btn-lg active">Submit</button>
                            <button type="button" class="btn btn-default btn-lg active">Reset</button>
                        </div>
                </div>
            </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <br>
            <br>
    </body>
</html>
