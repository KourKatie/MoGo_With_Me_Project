<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/29/2017
  Time: 1:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Account Exists</title>

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
</div>
<div class="fluid-container">
    <div class="row">
        <div class="col-lg-4 col-md-4 hidden-sm hidden-xs">
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <p style="text-align: center; padding-top: 20px;">There is already an account associated with that phoneNumber. Please create an account with a different phone number.</p>
            <form action="/">
                <button type="submit" class="btn btn-default btn-md">Back</button>
            </form>
        </div>
        <div class="col-lg-4 col-md-4 hidden-sm hidden-xs">
        </div>
    </div>
</div>
</body>
</html>
