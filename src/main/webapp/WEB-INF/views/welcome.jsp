<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HOMEPAGE</title>

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
    <style>
        @import url('https://fonts.googleapis.com/css?family=Anton|Montserrat:900|Roboto:700');
        body {
            font-family: 'Varela', sans-serif;
            font-size: 18px;
        }

    </style>

    <link href="/resources/css/home.css" rel="stylesheet">

    <script language="JavaScript">
        function validate() {

            var phoneNumber = document.forms["register"]["phoneNumber"].value;

            if (phoneNumber.length < 11 || phoneNumber.length > 11) {
                alert("Invaild phone number. Please use all 11 digits of your number.");
                return false;
            }

            else {
                return true;
            }
        }
    </script>

</head>
<body>

<div class="header col-lg-12" style="padding-top: 1em; padding-bottom: 1em; text-align: center">
            <h1>MoGo With Me</h1>
<h2>MoGo Provided the Bikes. We're Providing the People.</h2>
</div>
<div class="fluid-container">
    <div class="row">
        <div class="col-lg-1 col-md-1 hidden-sm hidden-xs">
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
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
            <br><br><br>
    <p>Why ride alone when you can ride together? MoGo With Me connects MoGo cyclists together with a platform for requesting
        cyclists to join their ride so no cyclist has to ride alone. Sign up, create your route, and meet your MoGo buddy today!</p><br>
        </div>
        <div class="col-lg-1 col-md-1 hidden-sm hidden-xs" style="border-right: 2px solid black; min-height: 100%;">
    </div>
        <div class="col-lg-1 col-md-1 hidden-sm hidden-xs">
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <h3 style="text-align: center;">Create An Account</h3>
            <form action="/addCustomer" name="register" id="register">
                <div class="form-group">
                    <label>First Name:</label>
                    <input type="text" placeholder="Amanda" name="FirstName" class="form-control input-lg" required>
                </div>
                <div class="form-group">
                    <label>Last Name:</label>
                    <input type="text" placeholder="Williams" name="LastName" class="form-control input-lg" required>
                </div>
                <div class="form-group">
                    <label>E-Mail:</label>
                    <input type="text" placeholder="amanda.williams@gmail.com" name="email" class="form-control input-lg" required>
                </div>
                <div class="form-group">
                    <label>Phone Number:</label>
                    <input type="text" placeholder="15554443333" name="phoneNumber" class="form-control  input-lg" required>
                </div>
                <div class="form-group">
                    <label>Company:</label>
                    <input type="text" placeholder="General Motors" name="Company" class="form-control input-lg" required>
                </div>
                <div class="form-group">
                    <label>Password:</label>
                    <input type="password" placeholder="Enter Password" name="password" class="form-control input-lg" required>
                </div>
                <div class="form-group">
                    <label>Re-Enter Password:</label>
                    <input type="password" placeholder="Re-Enter Password" name="passwordtwo" class="form-control input-lg" required>
                </div>
                <div class="form-group">
                    <label>Gender:</label>
                    <div class="radio">
                        <label><input type="radio" name="gender" value="male"> Male</label>
                        <label><input type="radio" name="gender" value="female"> Female</label>
                    </div>
                </div>
                <div class="form-group">
                    <label>Profile Picture:</label>
                    <input type="hidden" role="uploadcare-uploader" name="profilePicture"/>
                </div>
                <button type="submit" class="btn btn-default btn-lg" onclick="return validate()">Sign Up</button>
            </form>

</div>
        <div class="col-lg-1 col-md-1 hidden-sm hidden-xs">
        </div>
</div>
</div>
<div class="fluid-container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 footer">
            <p><i>Designed By: Katie Kourtakis <br> Copyright 2017</i></p>
        </div>
    </div>
</div>
</body>
</html>