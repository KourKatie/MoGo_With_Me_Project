<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/28/2017
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Requests</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="/resources/css/home.css" rel="stylesheet">
</head>
<body>
<div class="fluid-container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="text-align: center;">
            <h1>MoGo With Me</h1>
<p>Here is a list of all current requests stored in our database</p>
        </div>
    </div>
</div>

<form action="/getMatchProfile" id="getMatchProfile"></form>
<form action="messageconfirmation" id="message"></form>

<div class="container">
<table class="table table-striped">

    <tr>
        <th>Profile</th>
        <th>Name</th>
        <th>Company</th>
        <th>Gender</th>
        <th>Departure Station</th>
        <th>Arrival Station</th>
        <th>Date</th>
        <th>Time</th>
        <th>Message</th>
        <th>Request</th>
    </tr>

    <c:forEach items="${ardata}" var="item">

        <tr>
                <td class="form-group"><button class="btn btn-md" type="submit" name="submit" value="Profile" form="getMatchProfile">
                    <input type="hidden" name="phoneNumber"
                           value="${item.phoneNumber}" form="getMatchProfile">Profile</button></td>

            <td> ${item.firstName} </td>
            <td> ${item.company} </td>
            <td> ${item.gender}</td>
            <td> ${item.departure} </td>
            <td> ${item.arrival} </td>
            <td> ${item.date} </td>
            <td> ${item.time}</td>
            <td> ${item.message} </td>

                <td class="form-group"><input type="hidden" name="UserId" value="${UserId}" form="message">
                <td class="form-group"><button class="btn btn-md" type = submit name="submit" value = "submit" form="message">
                    <input type="hidden" name="phoneNumber"
                           value="${item.phoneNumber}" form="message">Submit</button></td>
        </tr>

    </c:forEach>
</table>
</div>

</body>
</html>
