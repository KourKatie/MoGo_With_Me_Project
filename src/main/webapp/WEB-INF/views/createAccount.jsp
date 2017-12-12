<%--
  Created by IntelliJ IDEA.
  User: Katie Kourtakis
  Date: 10/18/2017
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Account</title>

    <script src="https://ucarecdn.com/libs/widget/3.1.2/uploadcare.full.min.js" charset="utf-8"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script>
        UPLOADCARE_PUBLIC_KEY = 'e71a6ed89f8acaed4d28';
    </script>

    <link href="/resources/css/account.css" rel="stylesheet">

</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
            <h1>Create An Account</h1>
<form action="/addCustomer" style="background-color: white">
    <div class="form-group">
        <label>First Name</label>
        <input type="text" placeholder="Amanda" name="FirstName" class="form-control input-lg" required>
    </div>
    <div class="form-group">
        <label>Last Name</label>
        <input type="text" placeholder="Williams" name="LastName" class="form-control input-lg" required>
    </div>
    <div class="form-group">
        <label>E-Mail</label>
        <input type="text" placeholder="amanda.williams@gmail.com" name="email" class="form-control input-lg" required>
    </div>
    <div class="form-group">
        <label>Phone Number</label>
        <input type="text" placeholder="15554443333" name="phoneNumber" class="form-control  input-lg" required>
    </div>
    <div class="form-group">
        <label>Company</label>
        <input type="text" placeholder="General Motors" name="Company" class="form-control input-lg" required>
    </div>
    <div class="form-group">
        <label>Password</label>
        <input type="password" placeholder="Enter Password" name="password" class="form-control input-lg" required>
    </div>
    <div class="form-group">
        <label>Re-Enter Password</label>
        <input type="password" placeholder="Re-Enter Password" name="passwordtwo" class="form-control input-lg" required>
    </div>
    <div class="form-group">
        <label>Gender</label>
    <div class="radio">
        <label><input type="radio" name="gender" value="male"> Male</label>
        <label><input type="radio" name="gender" value="female"> Female</label>
    </div>
    </div>
    <div class="form-group">
        <label>Profile Picture</label>
        <input type="hidden" role="uploadcare-uploader" name="profilePicture"/>
    </div>
        <button type="submit" class="btn btn-default btn-lg">Sign Up</button>
</form>
        </div>
        <div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
        </div>
    </div>
</div>
</body>
</html>
