<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/24/2017
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Incorrect Login</title>

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
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="padding-left: 40px; padding-top: 1em; padding-bottom: 1em; border-bottom: 2px solid black;">
            <h4>MoGo With Me</h4>
        </div>
    </div>
<div class="fluid-container">
    <div class="row">
    <div class="col-lg-4 col-md-4 hidden-sm hidden-xs">
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
        <p style="text-align: center; padding-top: 20px; color: dodgerblue;">*Incorrect Login Credentials. Please Try Again.</p>
        <h3 style="text-align: center;">Login</h3>
        <form name="loginform" action="/verifylogin" method="post">
            <div class="form-group">
                <label>Email:</label>
                <input type="text" name="email" class="form-control input-lg" placeholder="Email">
            </div>
            <div class="form-group">
                <label>Password:</label>
                <input type="password" class="form-control input-lg" name="password" placeholder="password">
            </div>
            <button type="submit" name="submit" class="btn btn-default btn-lg">Login</button>
        </form>
    </div>
    <div class="col-lg-4 col-md-4 hidden-sm hidden-xs">
    </div>
    </div>
</div>
<%--<form action="/">--%>
    <%--<input type="submit" value="Home" />--%>
<%--</form>--%>
</body>
</html>