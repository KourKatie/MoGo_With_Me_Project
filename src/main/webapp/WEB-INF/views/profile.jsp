<%--
  Created by IntelliJ IDEA.
  User: kae
  Date: 8/22/2017
  Time: 10:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Profile</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="/resources/css/profiles.css" rel="stylesheet">

    <script language="JavaScript">
        function confirmDelete() {
            alert("You are about to delete your account! This action can not be undone.")
        }
    </script>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Anton|Montserrat:900|Roboto');
    </style>
</head>

<body>
<div class="header col-lg-12" style="padding-left: 40px; padding-top: 1em; padding-bottom: 1em; border-bottom: 2px solid black;">
    <h1>MoGo With Me</h1>
</div>

<div class="fluid-container">
    <div class="row">
        <div class="col-lg-2 col-md-2 hidden-sm hidden-xs">
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">

            <c:forEach items="${ppdata}" var="item">
    <img src= "${item.profilePicture}" width="375" height="375">
</div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <h2>Basic Information</h2>

            <p>First Name: ${item.firstName}</p>
            <p>Last Name: ${item.lastName}</p>
            <p>Email: ${item.email}</p>
            <p>Phone Number: ${item.phoneNumber}</p>
            <p>Company: ${item.company}</p>
            <p>Gender: ${item.gender}</p>

            <%--<button type="submit" name="Update" class="btn btn-default btn-md">Update</button>--%>

            <form action="/deleteUser" name="delete" id="delete">
            <button type="submit" name="Delete" class="btn btn-default btn-md" onclick="confirmDelete()">Delete Account</button>
                <input type="hidden" name="userId" value="${item.userId}">
            </form>

    </c:forEach>
        </div>


        <div class="col-lg-2 col-md-2 hidden-sm hidden-xs">
        </div>
    </div>

    </div>

<div class="fluid-container">
    <div class="row">
        <div class="col-lg-2 col-md-2 hidden-sm hidden-xs">
        </div>
    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
        <h2>Current Requests</h2>
        <div class="scroll">
    <table class="table table-striped table-responsive">

            <tr>
                <th>Date</th>
                <th>Departure Station</th>
                <th>Arrival Station</th>
                <th>Time</th>
                <th>Message</th>
            </tr>
        <c:forEach items="${updata}" var="item">
            <tr>
                <td>${item.date}</td>
                <td>${item.departure}</td>
                <td>${item.arrival}</td>
                <td>${item.time}</td>
                <td>${item.message}</td>
            </tr>

        </c:forEach>
    </table>
        </div>
    </div>
    <div class="col-lg-2 col-md-2 hidden-sm hidden-xs">
    </div>
    </div>
</div>
<div class="fluid-container">
    <div class="row">
        <div class="col-lg-2 col-md-2 hidden-sm hidden-xs">
        </div>
        <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
            <h2>Past Requests</h2>
            <div class="scroll">
            <table class="table table-striped table-responsive">

                <tr>
                    <th>Date</th>
                    <th>Departure Station</th>
                    <th>Arrival Station</th>
                    <th>Time</th>
                    <th>Message</th>
                </tr>
                <c:forEach items="${hdata}" var="item">
                    <tr>
                        <td>${item.date}</td>
                        <td>${item.departure}</td>
                        <td>${item.arrival}</td>
                        <td>${item.time}</td>
                        <td>${item.message}</td>
                    </tr>

                </c:forEach>
            </table>
            </div>
        </div>
        <div class="col-lg-2 col-md-2 hidden-sm hidden-xs">
        </div>
    </div>
</div>
<div class="fluid-container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="min-height: 20px;">
        </div>
    </div>
</div>
<div class="fluid-container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 footer">
            <p><i>Copyright 2017</i></p>
        </div>
    </div>
</div>
</body>
</html>
