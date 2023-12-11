<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
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
    <title>Serene Stay | View Customers</title>
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

.table-bordered {
    border-collapse: collapse;
    width: 100%;
}

.table-bordered, .table-bordered th, .table-bordered td {
    border: 1px solid #000; /* You can adjust the color and width as needed */
}

.view{
	margin-top: 75px;
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
  <br> 
 
  <div class="view">
	<h3 align="center"><u>View All Customers</u></h3> 
	<table class="table table-bordered table-striped">  
	<tr bgcolor="black" style="color: white"> 
	<th>ID</th> 
	<th>NAME</th> 
	<th>EMAIL ID</th> 
	<th>CONTACT NO</th>
	<th>GENDER</th> 
	</tr> 
	 
	<c:forEach items="${custdata}"  var="cust"> 
	<tr> 
	<td><c:out value="${cust.custid}" /></td> 
	<td><c:out value="${cust.name}" /></td> 
	<td><c:out value="${cust.email}" /></td> 
	<td><c:out value="${cust.contactno}" /></td> 
	<td><c:out value="${cust.gender}" /></td>  
	</tr> 
	</c:forEach> 
	 
	</table>
  </div>  
</body>

</html>
