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
    <title>Serene Stay | Add Hotel</title>
    <link rel="shortcut icon" href="../images/browser-logo.ico">
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

.add-user-form {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #f5f5f5;
        border: 1px solid #ccc;
        border-radius: 5px;
}

.add-user-form h2 {
       text-align: center;
       margin-bottom: 20px;
}

.add-user-form form {
       display: flex;
       flex-direction: column;
}

.add-user-form label {
       margin-bottom: 5px;
       font-weight: bold;
}

.add-user-form input {
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 5px;
}

.add-user-form button {
     background-color: #333;
     color: #fff;
     padding: 10px 20px;
     border: none;
     border-radius: 5px;
     cursor: pointer;
}

.add-user-form button:hover {
     background-color: #555;
}

.adding{
	background: linear-gradient(0.25turn, #3f87a6, #ebf8e1, #f69d3c);
	margin-top: 96px;
	height: 86vh;
}
    </style>
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="../images/logo.png" class="food-munch-logo" alt="logo" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ml-auto">
                    <a class="nav-link active" id="navItem1" href="adminhome">
                        Dashboard
                        <span class="sr-only">(current)</span>
                    </a>
                    <a class="nav-link" href="viewcustomers" id="navItem2">View Customers</a>
                    <a class="nav-link" href="addhotel" id="navItem2">Add Hotel</a>
                    <a class="nav-link" href="addresort" id="navItem2">Add Resort</a>
                    <a class="nav-link btn btn-primary" style="color: white;" href="/" id="navItem4">Logout</a>
                </div>
            </div>
        </div>
    </nav>
    
    <div class="adding">
    <div class="add-user-form">
    	<span class="blink">
	       <h3 align=center style="color:black"><mark>${message}</mark></h3>
		</span>
        <h2>Add Hotel</h2>
        <form method="post" action="inserthotel">
            <label for="hotelName">Hotel Name:</label>
            <input type="text" id="hotelName" name="hotelname" required>

            <label for="location">Hotel Price:</label>
            <input type="text" id="location" name="hotelprice" required>
            
            <label for="cost">Location:</label>
            <input type="text" id="cost" name="location" required>

            <button type="submit">Add Hotel</button>
        </form>
    </div>
    </div>
    

</body>

</html>
