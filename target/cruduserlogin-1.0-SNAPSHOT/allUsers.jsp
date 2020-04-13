<%-- 
    Document   : allUsers
    Created on : Jan 22, 2020, 9:45:36 PM
    Author     : dimit
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.CrudUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>JSP Page</title>

        <style>
            body{
                background-color:#f2f2f2;
            }
            .table{
                background-color:#fff;
                box-shadow:0px 2px 2px #aaa;
                margin-top:50px;
                text-align: center;
            }

        </style>

    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1 style="margin-top: 40px">A List Of All Users</h1>

                <table class="table table-bordered">

                    <thead style="font-weight: bold;">
                    <td>#</td>
                    <td>ID</td>
                    <td>Real Name</td>
                    <td>Username</td>
                    <td>Password</td>
                    <td>Delete</td>
                    <td>Update</td>
                    </thead>
                    <tbody>
                        <c:set var="i" value="0"/>
                        <c:forEach items="${allUsers}" var="user">
                            <tr>
                                <c:set var="i" value="${i + 1}" scope="page"/>
                                <td>${i}</td>
                                <td>${user.id}</td>
                                <td>${user.realName}</td>
                                <td>${user.username}</td>
                                <td>${user.password}</td>
                                <td><a href="delete?userid=${user.id}">Delete</a></td>
                                <td><a href="preupdate?userid=${user.id}">Update</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>


    </body>
</html>
