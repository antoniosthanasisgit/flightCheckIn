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
<title>Reservation Details</title>
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

<div class="col-6"><h2 class="text-secondary text-center">Flight Details</h2></div>

<div class="col-6"><h2 class="text-secondary text-center">Passenger Details</h2></div>

<div class="col-6">

<table class="table table-striped table-dark">

<thead>

<tr>

<th scope="col"> Airlines</th>
<th scope="col"> Flight No</th>
<th scope="col"> Departure City</th>
<th scope="col"> Arrival City</th>
<th scope="col"> Date Of Departure</th>

</tr>

</thead>

<tbody>

<tr>

<td>${reservation.flight.operatingAirlines}</td>
<td>${reservation.flight.flightNumber}</td>
<td>${reservation.flight.departureCity}</td>
<td>${reservation.flight.arrivalCity}</td>
<td>${reservation.flight.dateOfDeparture}</td>

</tr>

</tbody>


</table>




</div>

<div class="col-6">

<table class="table table-striped table-dark">

<thead>

<tr>

<th scope="col"> First Name</th>
<th scope="col"> Last Name</th>
<th scope="col"> Email</th>
<th scope="col"> Phone</th>

</tr>

</thead>

<tbody>

<tr>

<td>${reservation.passenger.firstName}</td>
<td>${reservation.passenger.lastName}</td>
<td>${reservation.passenger.email}</td>
<td>${reservation.passenger.phone}</td>

</tr>

</tbody>


</table>



</div>

<div class="col-8">

<form action="completeCheckIn" method="post">
<div class="input-group input-group-lg">
  <div class="input-group-prepend">
    <span class="input-group-text" id="inputGroup-sizing-lg">Bags</span>
  </div>
  <input type="text" name="numberOfBags" placeholder="Enter the Number of bags you want to check in" required class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm"/>
</div>
</div>
<div class="col-4">
 <div class="input-group input-group-lg">
     <input type="hidden" value="${reservation.id}" name="reservationId"/>
     <input type="submit"  class="btn btn-primary form-control" value="Check In" aria-label="Large" aria-describedby="inputGroup-sizing-sm"/> 
</div>
</form>
</div>

</div>




</div>


</body>
</html>