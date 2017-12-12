<%--
  Created by IntelliJ IDEA.
  User: Katie
  Date: 8/21/2017
  Time: 10:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Request Page</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Anton|Montserrat:900');
    </style>


    <link href="/resources/css/requeststyle.css" rel="stylesheet">

</head>
<body>
<div class="fluid-container" style="border-bottom: 2px solid black;">
    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="padding-left: 40px; padding-top: 1em; padding-bottom: 1em;">
            <h1>MoGo With Me</h1>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="padding-top: 2.5em; padding-bottom: 2em; padding-right: 40px; text-align: right;">
            <form action="/getUserProfile">
                <button class="btn btn-default" type="submit" name="submit">Profile</button>
                <input type="hidden" name="UserId" value="${UserId}">
            </form>

        </div>
    </div>
</div>

<div class="fluid-container">
    <div class="row">
        <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
<iframe src="https://www.google.com/maps/d/u/0/embed?mid=1OgcE4Jko7Qw8604Mo_Mi-NarUQw" width="95%" height="900px"></iframe>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 request">
            <form action="/getAllRequests">
                <button class="btn btn-default btn-md" type="submit" name="submit">View All Requests</button>
                <input type="hidden" name="UserId" value="${UserId}">
            </form><br>
            <p>or</p>
            <h2>Submit Your Request</h2>
            <p>Enter in information about your upcoming<br>
            bike ride and we'll show you a list of potential<br>
                buddies.</p><br>
            <form action="/addRequest">
                <input type="hidden" name="UserId" value="${UserId}">
    <div class="form-group">
        <label>Departure Station:</label>
        <select class="form-control input-lg" name="departure">
    <option value="E Bethune St & Brush St" name="E Bethune St & Brush St">E Bethune St & Brush St</option>
    <option value="Second Ave & W Grand Blvd" name="Second Ave & W Grand Blvd">Second Ave & W Grand Blvd</option>
    <option value="Henry Ford Hospital" name="Henry Ford Hospital">Henry Ford Hospital</option>
    <option value="Second Ave & Burroughs St" name="Second Ave & Burroughs St">Second Ave & Burroughs St</option>
    <option value="WSU - Cass Ave & Gilmour Mall" name="WSU - Cass Ave & Gilmour Mall">WSU - Cass Ave & Gilmour Mall</option>
    <option value="Kirby St & Woodward Ave" name="Kirby St & Woodward Ave">Kirby St & Woodward Ave</option>
    <option value="WSU - W Kirby & Third Ave" name="WSU - W Kirby & Third Ave">WSU - W Kirby & Third Ave</option>
    <option value="Farnsworth St & John R St" name="Farnsworth St & John R St">Farnsworth St & John R St</option>
    <option value="Trumbull Ave & Merrick St" name="Trumbull Ave & Merrick St">Trumbull Ave & Merrick St</option>
    <option value="Cass Ave & W Hancock St" name="Cass Ave & W Hancock St">Cass Ave & W Hancock St</option>
    <option value="Second Ave & Prentis St" name="Second Ave & Prentis St">Second Ave & Prentis St</option>
    <option value="DMC - John R St & E Canfield St" name="DMC - John R St & E Canfield St">DMC - John R St & E Canfield St</option>
    <option value="W Willis St & Cass Ave" name="W Willis St & Cass Ave">W Willis St & Cass Ave</option>
    <option value="Second Ave & Selden St" name="Second Ave & Selden St">Second Ave & Selden St</option>
    <option value="Mack Ave & John R St" name="Mack Ave & John R St">Mack Ave & John R St</option>
    <option value="Wilkins St & Russell St" name="Wilkins St & Russell St">Wilkins St & Russell St</option>
    <option value="Woodward Ave & Peterboro St" name="Woodward Ave & Peterboro St">Woodward Ave & Peterboro St</option>
    <option value="Temple St & Second Ave" name="Temple St & Second Ave">Temple St & Second Ave</option>
    <option value="Wabash St & Michigan Ave" name="Wabash St & Michigan Ave">Wabash St & Michigan Ave</option>
    <option value="20th St & Bagley Ave" name="20th St & Bagley Ave">20th St & Bagley Ave</option>
    <option value="23rd St & Bagley Ave" name="23rd St & Bagley Ave">23rd St & Bagley Ave</option>
    <option value="W Vernor Hwy & Scotten Ave" name="W Vernor Hwy & Scotten Ave">W Vernor Hwy & Scotten Ave</option>
    <option value="Gratiot Ave & Russell St" name="Gratiot Ave & Russell St">Gratiot Ave & Russell St</option>
    <option value="E Lafayette St & Orleans St" name="E Lafayette St & Orleans St">E Lafayette St & Orleans St</option>
    <option value="Atwater St & Orleans St" name="Atwater St & Orleans St">Atwater St & Orleans St</option>
    <option value="Jos Campau & Guoin St" name="Jos Campau & Guoin St">Jos Campau & Guoin St</option>
    <option value="Wight St & Mt Elliott" name="Wight St & Mt Elliott">Wight St & Mt Elliott</option>
    <option value="Agnes St & Parker St" name="Agnes St & Parker St">Agnes St & Parker St</option>
    <option value="Brooklyn St & Michigan Ave" name="Brooklyn St & Michigan Ave">Brooklyn St & Michigan Ave</option>
    <option value="WCCC - W Fort St" name="WCCC - W Fort St">WCCC - W Fort St</option>
    <option value="Bagley Ave & Plaza Dr" name="Bagley Ave & Plaza Dr">Bagley Ave & Plaza Dr</option>
    <option value="Rosa Parks Transit Cente" name="Rosa Parks Transit Cente">Rosa Parks Transit Cente</option>
    <option value="Cobo Center - Washington Blvd & W Congress St" name="Cobo Center - Washington Blvd & W Congress St">Cobo Center - Washington Blvd & W Congress St</option>
    <option value="Grand Circus Park - West" name="Grand Circus Park - West">Grand Circus Park - West</option>
    <option value="Capitol Park - Griswold St & State St" name="Capitol Park - Griswold St & State St">Capitol Park - Griswold St & State St</option>
    <option value="W Fort St & Griswold St" name="W Fort St & Griswold St">W Fort St & Griswold St</option>
    <option value="Larned St & Woodward Ave" name="Larned St & Woodward Ave">Larned St & Woodward Ave</option>
    <option value="Paradise Valley - Gratiot Ave & Randolph St" name="Paradise Valley - Gratiot Ave & Randolph St">Paradise Valley - Gratiot Ave & Randolph St</option>
    <option value="Brush St & Madison St" name="Brush St & Madison St">Brush St & Madison St</option>
    <option value="Beaubien St & E Lafayette St" name="Beaubien St & E Lafayette St">Beaubien St & E Lafayette St</option>
    <option value="Jefferson Ave & Beaubien St" name="Jefferson Ave & Beaubien St">Jefferson Ave & Beaubien St</option>
    <option value="Ren Cen Plaza & Detroit Riverwalk" name="Ren Cen Plaza & Detroit Riverwalk">Ren Cen Plaza & Detroit Riverwalk</option>
    <option value="Monroe Ave & Campus Martius" name="Monroe Ave & Campus Martius">Monroe Ave & Campus Martius</option>
    </select>
    </div>
                <div class="form-group">

                    <label>Arrival Station:</label>
                    <select class="form-control input-lg" name="arrival">
    <option value="E Bethune St & Brush St" name="E Bethune St & Brush St">E Bethune St & Brush St</option>
    <option value="Second Ave & W Grand Blvd" name="Second Ave & W Grand Blvd">Second Ave & W Grand Blvd</option>
    <option value="Henry Ford Hospital" name="Henry Ford Hospital">Henry Ford Hospital</option>
    <option value="Second Ave & Burroughs St" name="Second Ave & Burroughs St">Second Ave & Burroughs St</option>
    <option value="WSU - Cass Ave & Gilmour Mall" name="WSU - Cass Ave & Gilmour Mall">WSU - Cass Ave & Gilmour Mall</option>
    <option value="Kirby St & Woodward Ave" name="Kirby St & Woodward Ave">Kirby St & Woodward Ave</option>
    <option value="WSU - W Kirby & Third Ave" name="WSU - W Kirby & Third Ave">WSU - W Kirby & Third Ave</option>
    <option value="Farnsworth St & John R St" name="Farnsworth St & John R St">Farnsworth St & John R St</option>
    <option value="Trumbull Ave & Merrick St" name="Trumbull Ave & Merrick St">Trumbull Ave & Merrick St</option>
    <option value="Cass Ave & W Hancock St" name="Cass Ave & W Hancock St">Cass Ave & W Hancock St</option>
    <option value="Second Ave & Prentis St" name="Second Ave & Prentis St">Second Ave & Prentis St</option>
    <option value="DMC - John R St & E Canfield St" name="DMC - John R St & E Canfield St">DMC - John R St & E Canfield St</option>
    <option value="W Willis St & Cass Ave" name="W Willis St & Cass Ave">W Willis St & Cass Ave</option>
    <option value="Second Ave & Selden St" name="Second Ave & Selden St">Second Ave & Selden St</option>
    <option value="Mack Ave & John R St" name="Mack Ave & John R St">Mack Ave & John R St</option>
    <option value="Wilkins St & Russell St" name="Wilkins St & Russell St">Wilkins St & Russell St</option>
    <option value="Woodward Ave & Peterboro St" name="Woodward Ave & Peterboro St">Woodward Ave & Peterboro St</option>
    <option value="Temple St & Second Ave" name="Temple St & Second Ave">Temple St & Second Ave</option>
    <option value="Wabash St & Michigan Ave" name="Wabash St & Michigan Ave">Wabash St & Michigan Ave</option>
    <option value="20th St & Bagley Ave" name="20th St & Bagley Ave">20th St & Bagley Ave</option>
    <option value="23rd St & Bagley Ave" name="23rd St & Bagley Ave">23rd St & Bagley Ave</option>
    <option value="W Vernor Hwy & Scotten Ave" name="W Vernor Hwy & Scotten Ave">W Vernor Hwy & Scotten Ave</option>
    <option value="Gratiot Ave & Russell St" name="Gratiot Ave & Russell St">Gratiot Ave & Russell St</option>
    <option value="E Lafayette St & Orleans St" name="E Lafayette St & Orleans St">E Lafayette St & Orleans St</option>
    <option value="Atwater St & Orleans St" name="Atwater St & Orleans St">Atwater St & Orleans St</option>
    <option value="Jos Campau & Guoin St" name="Jos Campau & Guoin St">Jos Campau & Guoin St</option>
    <option value="Wight St & Mt Elliott" name="Wight St & Mt Elliott">Wight St & Mt Elliott</option>
    <option value="Agnes St & Parker St" name="Agnes St & Parker St">Agnes St & Parker St</option>
    <option value="Brooklyn St & Michigan Ave" name="Brooklyn St & Michigan Ave">Brooklyn St & Michigan Ave</option>
    <option value="WCCC - W Fort St" name="WCCC - W Fort St">WCCC - W Fort St</option>
    <option value="Bagley Ave & Plaza Dr" name="Bagley Ave & Plaza Dr">Bagley Ave & Plaza Dr</option>
    <option value="Rosa Parks Transit Cente" name="Rosa Parks Transit Cente">Rosa Parks Transit Cente</option>
    <option value="Cobo Center - Washington Blvd & W Congress St" name="Cobo Center - Washington Blvd & W Congress St">Cobo Center - Washington Blvd & W Congress St</option>
    <option value="Grand Circus Park - West" name="Grand Circus Park - West">Grand Circus Park - West</option>
    <option value="Capitol Park - Griswold St & State St" name="Capitol Park - Griswold St & State St">Capitol Park - Griswold St & State St</option>
    <option value="W Fort St & Griswold St" name="W Fort St & Griswold St">W Fort St & Griswold St</option>
    <option value="Larned St & Woodward Ave" name="Larned St & Woodward Ave">Larned St & Woodward Ave</option>
    <option value="Paradise Valley - Gratiot Ave & Randolph St" name="Paradise Valley - Gratiot Ave & Randolph St">Paradise Valley - Gratiot Ave & Randolph St</option>
    <option value="Brush St & Madison St" name="Brush St & Madison St">Brush St & Madison St</option>
    <option value="Beaubien St & E Lafayette St" name="Beaubien St & E Lafayette St">Beaubien St & E Lafayette St</option>
    <option value="Jefferson Ave & Beaubien St" name="Jefferson Ave & Beaubien St">Jefferson Ave & Beaubien St</option>
    <option value="Ren Cen Plaza & Detroit Riverwalk" name="Ren Cen Plaza & Detroit Riverwalk">Ren Cen Plaza & Detroit Riverwalk</option>
    <option value="Monroe Ave & Campus Martius" name="Monroe Ave & Campus Martius">Monroe Ave & Campus Martius</option>
    </select>
                </div>
<div class="form-inline">
                <div class="form-group">

                    <label>Time:</label>
                    <select class="form-control input-lg" name="time">
    <option value="morning">Morning</option>
    <option value="Afternoon">Afternoon</option>
    <option value="Evening">Evening</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Start Date:</label>
                    <input class="form-control input-lg" type="date" name="date">
                </div>

</div>

                <div class="form-group">
                    <label>Frequency:</label>
                    <select class="form-control input-lg" name="frequency">
                    <option value="one time">one time</option>
                    </select>
                </div>


                <div class="form-group">
                    <label>Message:</label>
                    <input class="form-control input-lg" type="text" name="message">
                </div>

<div class="form-group">
                <button type="submit" class="btn btn-default btn-lg" value="Add Request">Add Request</button>
</div>

<div class="col-lg-1 col-md-1 hidden-sm hidden-xs">
</div>
</form>
</div>
    </div>
</div>
</body>
</html>