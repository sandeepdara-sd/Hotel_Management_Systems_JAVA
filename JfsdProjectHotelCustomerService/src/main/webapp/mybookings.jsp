<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/20c5629a29.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <title>Serene Stay | My Bookings</title>
    <link rel="shortcut icon" href="images/browser-logo.ico">
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Bree+Serif&family=Caveat:wght@400;700&family=Lobster&family=Monoton&family=Open+Sans:ital,wght@0,400;0,700;1,400;1,700&family=Playfair+Display+SC:ital,wght@0,400;0,700;1,700&family=Playfair+Display:ital,wght@0,400;0,700;1,700&family=Roboto:ital,wght@0,400;0,700;1,400;1,700&family=Source+Sans+Pro:ital,wght@0,400;0,700;1,700&family=Work+Sans:ital,wght@0,400;0,700;1,700&display=swap');

.food-munch-logo {
    width: 80px;
    height: 70px;
}

#navItem1 {
    color: #323f4b;
    font-family: "Roboto";
}

#navItem2 {
    color: #323f4b;
    font-family: "Roboto";
}

#navItem3 {
    color: #323f4b;
    font-family: "Roboto";
}

#navItem4 {
    color: #323f4b;
    font-family: "Roboto";
}

.table-bordered {
    border-collapse: collapse;
    width: 100%;
}

.table-bordered, .table-bordered th, .table-bordered td {
    border: 1px solid #000; /* You can adjust the color and width as needed */
}

.view{
	margin-top: 100px;
}
    </style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" class="food-munch-logo" alt="logo" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ml-auto">
                    <a class="nav-link active" id="navItem1" href="userhome">
                        Book Hotels
                        <span class="sr-only">(current)</span>
                    </a>
                    <a class="nav-link" href="userhome" id="navItem3">Our Hotel Chains</a>
                    <a class="nav-link" href="userhome" id="navItem2">Book Resorts</a>
                    <a class="nav-link btn btn-danger" href="/" id="navItem4" style="color:white">Logout</a>
                </div>
            </div>
        </div>
    </nav>
    
    <div class="view">
	<h3 align="center">My Bookings</h3> 
	<table class="table table-bordered table-striped">  
	<tr bgcolor="black" style="color: white">  
	<th>HOTEL NAME</th> 
	<th>LOCATION</th> 
	<th>HOTEL PRICE</th>
	<th>ROOMS</th> 
	<th>CHECK-IN DATE</th> 
	<th>CHECK-OUT DATE</th> 
	<th>PAYMENT</th>
	</tr> 
	 
	<c:forEach items="${bookingdata}"  var="book"> 
	<tr> 
	<td><c:out value="${book.hotelname}" /></td> 
	<td><c:out value="${book.location}" /></td> 
	<td><c:out value="${book.hotelprice}" /></td> 
	<td><c:out value="${book.rooms}" /></td>  
	<td><c:out value="${book.checkindate}" /></td> 
	<td><c:out value="${book.checkoutdate}" /></td> 
	<td><a class="btn btn-warning" href="https://rzp.io/l/ji4WTmHOHD">Pay</a></td> 
	</tr> 
	</c:forEach> 
	 
	</table>
  </div>  
  
  
</body>
</html>