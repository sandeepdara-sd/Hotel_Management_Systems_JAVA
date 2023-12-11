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
    <title>Serene Stay | Admin Home</title>
    <link rel="shortcut icon" href="../images/browser-logo.ico">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-chart-3d"></script>
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

.banner-section-bg-container {
    background-image: url("../images/adminhome-banner.jpg");
    height: 100vh;
    background-size: cover;
}

.banner-heading {
    color: black;
    font-family: "Roboto";
    font-size: 45px;
    font-weight: 300;
}

.banner-caption {
    color: black;
    font-family: "Roboto";
    font-size: 24px;
    font-weight: 300;
}

.custom-button {
    color: white;
    background-color: #d0b200;
    width: 130px;
    height: 45px;
    border-width: 0;
    border-radius: 8px;
    margin-right: 10px;
}

.dashboard {
	margin-top: 20px;
	margin-bottom: 20px;
  text-align: center;
}

.cards-container {
  display: flex;
  justify-content: center;
  gap: 20px;
}

.card {
  width: 300px;
  padding: 20px;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 5px;
  text-align: center;
}

.combined {
    display: flex;
    flex-direction: row;
    justify-content: space-evenly;
}

.customer-piechart,
.hotel-barchart {
    width: 50%; /* Each chart container takes 50% of the available width */
}



.count{
   width: 500px;
   height: auto;
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
    
    <div class="banner-section-bg-container d-flex justify-content-center flex-column">
        <div class="text-center">
            <h1 class="banner-heading mb-3">Welcome to Admin Home</h1>
            <p class="banner-caption"><mark>Manage Everything in single step</mark></p>
        </div>
    </div>
    
    <div class="dashboard" id="dashboard">
      <div class="cards-container">
        <div class="card">
          <h3>View Customers</h3>
          <p>View and manage existing Customers.</p>
        </div>
        <div class="card">
          <h3>Add Hotels</h3>
          <p>Add hotels by Admin</p>
        </div>
        <div class="card">
          <h3>Add Resorts</h3>
          <p>Add resorts by Admin</p>
        </div>
      </div>
    </div>
    
    <div class="combined">
	    <div class="customer-piechart">
		    <h1>Number of Customers</h1>
		    <div class="count" >
		        <canvas id="customerPieChart"></canvas>
		    </div>
	    </div>
	    <div class="hotel-barchart">
	        <h1>Number of Hotels</h1>
		    <div class="count" >
		        <canvas id="hotelsBarChart"></canvas>
		    </div>
	    </div>
    </div>
 
  <script>
  fetch('count-male')
  .then(response => response.json())
  .then(data => {
      const noOfMaleCustomers = data.male;
      const noOfFemaleCustomers = data.female;

      const ctx = document.getElementById('customerPieChart').getContext('2d');
      new Chart(ctx, {
          type: 'polarArea',
          data: {
              labels: ['Male', 'Female'],
              datasets: [{
                  label: 'No of Customers',
                  data: [noOfMaleCustomers, noOfFemaleCustomers], // Use an array for data
                  backgroundColor: ['rgba(54, 162, 235, 0.5)', 'rgba(255, 99, 132, 0.5)'], // Adjust the colors here
                  borderColor: ['rgba(54, 162, 235, 1)', 'rgba(255, 99, 132, 1)'], // Adjust the colors here
                  borderWidth: 3
              }]
          }
      });
  });
  
  fetch('count-male')
  .then(response => response.json())
  .then(data => {
      const noOfMaleCustomers = data.male;
      const noOfFemaleCustomers = data.female;

      const ctx = document.getElementById('hotelsBarChart').getContext('2d');
      new Chart(ctx, {
          type: 'bar',
          data: {
              labels: ['Hyderabad', 'Banglore','Delhi'],
              datasets: [{
                  label: 'No of Hotels',
                  data: ['6', '7','8'], // Use an array for data
                  backgroundColor: ['rgba(54, 162, 235, 0.5)', 'rgba(255, 99, 132, 0.5)','green'], // Adjust the colors here
                  borderColor: ['rgba(54, 162, 235, 1)', 'rgba(255, 99, 132, 1)','green'], // Adjust the colors here
                  borderWidth: 3
              }]
          }
      });
  });
    </script>
</body>

</html>
