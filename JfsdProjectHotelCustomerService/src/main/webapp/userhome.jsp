<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <link rel="stylesheet" href="userhome.css" />
    <title>Serene Stay | User home</title>
    <link rel="shortcut icon" href="images/browser-logo.ico">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" class="food-munch-logo" alt="logo" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ml-auto">
                    <a class="nav-link active" id="navItem1" href="#exploreMenuSection" style="color: white;">
                        Book Hotels
                        <span class="sr-only">(current)</span>
                    </a>
                    <a class="nav-link" href="#ourChain" id="navItem3" style="color: white;">Our Hotel Chains</a>
                    <a class="nav-link" href="#exploreMenuSection1" id="navItem2" style="color: white;">Book Resorts</a>
                    <a class="nav-link" href="<c:url value="myprofile?cid=${cid}"></c:url>" id="navItem4" style="color: white;">My Profile</a>
                    <a class="nav-link" href="mybookings" id="navItem2" style="color: white;">My Bookings</a>
                    <a class="nav-link btn btn-danger" href="/" id="navItem4" style="color: white;">Logout</a>
                </div>
            </div>
        </div>
    </nav>

    <div class="banner-section-bg-container d-flex justify-content-center flex-column">
        <div class="head-para text-center">
            <h1 class="banner-heading mb-3"><span class="hello-text">Hello</span> ${cname}</h1>
        </div>
    </div>

    <div class="book-hotels-section pt-5 pb-5" id="exploreMenuSection">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1 class="menu-section-heading">Book Hotels</h1>
                    <a class="btn btn-warning custom-button" href="#exploreMenuSection" data-toggle="modal" data-target="#exampleModal">Choose Location</a>
                </div>
                <c:forEach items="${hoteldata}"  var="hotel"> 
                <div class="col-12 col-md-4 col-lg-6">
                    <div class="shadow menu-item-card p-3 mb-3 d-flex">
                        <div class="d-flex flex-column justify-content-between w-100">
                            <h1 class="menu-card-title"><c:out value="${hotel.hname}" /></h1>
                            <p class="card-price">Price : Rs. <c:out value="${hotel.hprice}" /></p>
                            <a href="<c:url value="book?id=${hotel.hid}"></c:url>" class="btn btn-primary">Book Now</a>
                        </div>
                        <img src="images/hotel1.jpeg" class="menu-item-image w-100" />
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
    
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Choose Location</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form action="chooselocation" method="GET">
	          <div class="gender-details">
		          <input type="radio" name="loc" id="dot-1" value="Hyderabad">
		          <input type="radio" name="loc" id="dot-2" value="Banglore">
		          <input type="radio" name="loc" id="dot-3" value="Delhi">
		          <span class="gender-title"><i class="fas fa-map-marker"></i>&nbsp;Location</span>
		          <div class="category">
		            <label for="dot-1">
		            <span class="dot one"></span>
		            <span class="gender">Hyderabad</span>
		          </label>
		          <label for="dot-2">
		            <span class="dot two"></span>
		            <span class="gender">Banglore</span>
		          </label>
		          <label for="dot-3">
		            <span class="dot three"></span>
		            <span class="gender">Delhi</span>
		            </label>
		          </div>
		       </div>
		       <button type="submit" class="btn btn-primary">Choose</button>
		       </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>

    <div class="shadow top-food-chain pt-5 pb-5" id="ourChain">
        <h1 class="chain-heading">Our Top Hotel Chains</h1>
        <p class="chain-para">SereneStay has a wide range of luxury and budget-friendly hotel chain properties. We have picked the finest hotels in India with world-class amenities, comfortable and easily approachable when it comes to location. Book your hotel with EaseMyTrip and don't forget to grab an amazing deal to save big on your stay.</p>
        <div class="chain-container">
            <img src="https://www.easemytrip.com/images/hotel-img/ramee-hotels-hp.png" class="food-chain-image" alt="Oyo">
            <img src="https://www.easemytrip.com/images/hotel-img/EMTLORDS-26oct21-hp.png" class="food-chain-image" alt="Lords">
            <img src="https://www.easemytrip.com/images/hotel-img/EMTOT-26oct21-hp.png" class="food-chain-image" alt="FabHotels">
            <img src="https://www.easemytrip.com/images/hotel-img/tisya-hotel-hp.png" class="food-chain-image" alt="Treebo">
            <img src="https://www.easemytrip.com/images/hotel-img/welcomheritage-hp.png" class="food-chain-image" alt="Vista">
            <img src="https://www.easemytrip.com/images/hotel-img/bloom-hp.png" class="food-chain-image" alt="Shilton">
            <img src="https://www.easemytrip.com/images/hotel-img/byke-hp.png" class="food-chain-image" alt="Cygnett">
            <img src="https://www.easemytrip.com/images/hotel-img/justa-hp.png" class="food-chain-image" alt="Brij">
            <img src="https://www.easemytrip.com/images/hotel-img/royal-orchid-hp.png" class="food-chain-image" alt="TGI">
            <img src="https://www.easemytrip.com/images/hotel-img/shrigo-hp2.png" class="food-chain-image" alt="The Claridges">
            <img src="https://www.easemytrip.com/images/hotel-img/cygnett-hp.png" class="food-chain-image" alt="Spree">
            <img src="https://www.easemytrip.com/images/hotel-img/brij-hp.png" class="food-chain-image" alt="Lemon Tree">
        </div>
    </div>

    <div class="book-resorts-section pt-5 pb-5" id="exploreMenuSection1">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1 class="menu-section-heading">Book Resorts</h1>
                    <a class="btn btn-warning custom-button" href="#exploreMenuSection" data-toggle="modal" data-target="#resortsModal">Choose Location</a>
                </div>
                <c:forEach items="${resortdata}"  var="resort"> 
                <div class="col-12 col-md-4 col-lg-6">
                    <div class="shadow menu-item-card p-3 mb-3 d-flex">
                        <div class="d-flex flex-column justify-content-between w-100">
                            <h1 class="menu-card-title"><c:out value="${resort.rname}" /></h1>
                            <p class="card-price">Price : Rs. <c:out value="${resort.rprice}" /></p>
                            <button class="book-butt btn btn-success">Book Now</button>
                        </div>
                        <img src="images/resort1.jpg" class="menu-item-image w-100" />
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
    
    <div class="modal fade" id="resortsModal" tabindex="-1" role="dialog" aria-labelledby="resortsModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Choose Location</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form action="chooseresortlocation" method="GET">
	           <select name="locat">
	           	  <option value="Goa">Goa</option>
	           	  <option value="Banglore">Banglore</option>
	           	  <option value="Chennai">Chennai</option>
	           </select>
		       <button type="submit" class="btn btn-primary">Choose</button>
		     </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>

    <footer class="footer-main bg-dark">
        <div class="container">
          <div class="row address-main">
            <div class="col-lg-4 col-sm-12 col-xs-12">
              <div class="address-box clearfix">
                <div class="add-icon">
                  <img src="images/location-icon.png" alt="" />
                </div>
                <div class="add-content">
                  <h5>Address</h5>
                  <p> Kl University, Green Fields, Vaddeswaram, Vijayawada. </p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-sm-12 col-xs-12">
              <div class="address-box clearfix">
                <div class="add-icon">
                  <img src="images/phone-icon.png" alt="" />
                </div>
                <div class="add-content">
                  <h5>Phone</h5>
                  <p>  +(91) 8328043714
                  </p>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-sm-12 col-xs-12">
              <div class="address-box clearfix">
                <div class="add-icon">
                  <img src="images/email-icon.png" alt="" />
                </div>
                <div class="add-content">
                  <h5>Email</h5>
                  <p> <a href="mailto:" style="text-decoration:none">serenestay@gmail.com</a> </p>
                </div>
              </div>
            </div>
          </div>
      </div>
      
      
      <!-- Copyright Footer -->
      <footer class="bg-dark text-center text-white">
      
      <!-- Grid container -->
      <div class="container p-4 pb-0">
        <!-- Section: Social media -->
        <section class="mb-4">
          <!-- Facebook -->
          <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
            ><i class="fa fa-facebook-f"></i
          ></a>
      
          <!-- Twitter -->
          <a class="btn btn-outline-light btn-floating m-1" href="https://twitter.com/koushiklakkuru" role="button"
            ><i class="fa fa-twitter"></i
          ></a>
      
          <!-- Google -->
          <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
            ><i class="fa fa-google"></i
          ></a>
      
          <!-- Instagram -->
          <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
            ><i class="fa fa-instagram"></i
          ></a>
      
        </section>
        <!-- Section: Social media -->
      </div>
      <!-- Grid container -->
      
      <!-- Copyright -->
      <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
      serenestay © 2023 All Rights Reserved.
      </div>
      <!-- Copyright -->
      </footer>
    </footer>

</body>
</html>