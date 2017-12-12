<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/28/2017
  Time: 12:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Match Profile</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="/resources/css/profiles.css" rel="stylesheet">
</head>

<body>
<div class="fluid-container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-left: 40px; padding-top: 1em; padding-bottom: 1em; border-bottom: 2px solid black;">
            <h1>MoGo With Me</h1>
        </div>
    </div>
</div>

<div class="fluid-container">
    <div class="row">
        <div class="col-lg-2 col-md-2 hidden-sm hidden-xs">
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
<c:forEach items="${updata}" var="item">

    <img src= "${item.profilePicture}" width="375" height="375">
</div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <h2>Basic Information</h2>
        <p>First Name: ${item.firstName} </p>
        <p>Last Name: ${item.lastName} </p>
        <p>Company: ${item.company}</p>
        <p>Gender: ${item.gender} </p>
    </c:forEach>
        </div>
        <div class="col-lg-2 col-md-2 hidden-sm hidden-xs">
        </div>
</div>
</div>

</body>
</html>

