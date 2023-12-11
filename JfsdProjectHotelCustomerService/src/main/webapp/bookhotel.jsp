<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/20c5629a29.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <title>Serene Stay | Book Hotel</title>
    <link rel="stylesheet" href="bookhotel.css" />
    <link rel="shortcut icon" href="images/browser-logo.ico">
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
                    <a class="nav-link" href="mybookings" id="navItem4">My Bookings</a>
                    <a class="nav-link btn btn-danger" href="/" id="navItem4" style="color: white;">Logout</a>
                </div>
            </div>
        </div>
    </nav>
    
    <div class="book">
    <div class="container">
    <h1 class="form-title">Booking Details</h1>
    <span class="blink">
	     <h3 align=center style="color:black"><mark>${message}</mark></h3>
    </span>
    <form action="addhotel" method="post">
        <div class="main-user-info">
            <div class="user-input-box">
                <label for="fullName">Name</label>
                <input type="text"
                       id="fullName"
                       name="name"
                       value="${cname}"
                       readonly
                       placeholder="Enter Full Name"/>
            </div>
            <div class="user-input-box">
                <label for="email">Email</label>
                <input type="email"
                       id="username"
                       name="email"
                       value="${cemail}"
                       readonly
                       placeholder="Enter Email"/>
            </div>
            <div class="user-input-box">
                <label for="email">Hotel Name</label>
                <input type="text"
                       id="hotelname"
                       name="hotelname"
                       value="${hoteldata.hname}"
                       readonly
                       placeholder="Enter Hotel Name"/>
            </div>

            <div class="user-input-box">
                <label for="phoneNumber">Hotel Location</label>
                <input type="text"
                       id="phoneNumber"
                       name="location"
                       value="${hoteldata.location}"
                       readonly
                       placeholder="Enter Hotel Location"/>
            </div>
            <div class="user-input-box">
                <label for="password">Price(/day)</label>
                <input type="text"
                       id="password"
                       name="price"
                       value="${hoteldata.hprice}"
                       readonly
                       placeholder="Enter Price "/>
            </div>
            <div class="user-input-box">
                <label for="confirmPassword">Number of Rooms(2 Guests/room)</label>
                <input type="text"
                       id="confirmPassword"
                       name="rooms"
                       placeholder="Rooms to be Booked"/>
            </div>
        </div>
        <div class="gender-details-box">
            <span class="gender-title">CheckIn Date</span>
            <div class="user-input-box">
                <label for="confirmPassword"></label>
                <input type="date"
                       id="date"
                       name="checkindate"
                       placeholder="Confirm Password"/>
            </div>
        </div>
        <div class="gender-details-box">
            <span class="gender-title">Checkout Date</span>
            <div class="user-input-box">
                <label for="confirmPassword"></label>
                <input type="date"
                       id="date"
                       name="checkoutdate"
                       placeholder="Confirm Password"/>
            </div>
        </div>
        <div class="form-submit-btn">
            <input type="submit" value="Book">
        </div>
    </form>
    </div>
</div>
</body>
</html>