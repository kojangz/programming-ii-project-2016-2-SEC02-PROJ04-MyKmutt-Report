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
            html{
                background-color: lightblue;
            }
            .header{
                background-color: #000000;
                padding-top: 90px ;
                padding-left: 30px;
                color: #FFFFFF;
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
                <div class="col-md-8">
                    <form>
                        <div class="form-group">
                            <label for="exampleStudentID">Your's student ID</label>
                            <input type="ID" class="form-control" id="exampleStudentID" placeholder="ID">
                        </div>
                </div>

                <div class="col-md-8">
                    <form>
                        <div class="form-group">
                            <label for="exampleFaculty">Your's faculty/label>
                            <select class="form-control">
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
                                
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                <option></option>
                                
                                <option></option>
                            </select>
                        </div>
                </div>
            </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
    </body>
</html>
