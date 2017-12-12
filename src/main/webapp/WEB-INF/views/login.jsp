<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/27/2017
  Time: 9:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log In</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link href="/resources/css/account.css" rel="stylesheet">

</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
            <h3>Congratulations! Your MoGo With Me account has been created. Please use your credentials to login.</h3>
<form name="loginform" action="/verifylogin" method="post">
    <div class="form-group">
        <label>Email</label>
    <input type="text" name="email" class="form-control input-lg" placeholder="Email">
    </div>
    <div class="form-group">
    <label>Password</label>
    <input type="password" class="form-control input-lg" name="password" placeholder="password">
    </div>
    <button type="submit" name="submit" class="btn btn-default btn-lg">Login</button>
</form>
        </div>
        <div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
        </div>
    </div>
</div>
</body>
</html>
