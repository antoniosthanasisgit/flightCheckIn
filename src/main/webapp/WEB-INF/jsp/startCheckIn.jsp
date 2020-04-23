<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <style type="text/css">
    body {
     background-image:url("https://fullhdpictures.net/wp-content/uploads/2016/03/Full-HD-Airplane-Wallpaper.jpg");
     background-repeat: no-repeat;
     background-size: 100% 100%;
    }
    .form-control {
    border: 0;
}
    html {
    height: 100%
}
    </style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Start Check In</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">

<ul class="navbar-nav">
<li class="navbar-item">
<a class="nav-link" href="http://127.0.0.1:8081/flightreservation/">Main</a>
</li>
<li class="navbar-item">
<a class="nav-link" href="http://127.0.0.1:9090/flightcheckin/showStartCheckin">Check-in</a>
</li>
<li class="navbar-item">
<a class="nav-link" href="http://127.0.0.1:8081/flightreservation/showReg">Register</a>
</li>
<li class="navbar-item">
<a class="nav-link" href="http://127.0.0.1:8081/flightreservation/showLogin">Login</a>
</li>
</ul>
</nav>
<div class="container m-5 p-5">


<div class="row">
<div class="col-12"><h2 class="text-secondary text-center">Start a Check-in</h2></div>
<div class="col-2"></div>


<div class="col-6" style="margin-top:150px">
<form action="startCheckIn" method="post">
<div class="input-group input-group-lg">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-lg">Id</span>
  </div>
  <input type="text" name="reservationId" placeholder="Enter the reservation id" required class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm"/>
</div>
</div>

<div class="col-2" style="margin-top:150px">
 <div class="input-group input-group-lg">
     <input type="submit"  class="btn btn-primary form-control" value = "Start Checkin" aria-label="Large" aria-describedby="inputGroup-sizing-sm"/> 
</div>
</form>
</div>


<div class="col-2"></div>




</div>



</div>


</body>
</html>