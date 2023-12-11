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
    <link rel="stylesheet" href="home.css" />
    <title>Serene Stay | Home</title>
    <link rel="shortcut icon" href="images/browser-logo.ico">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" class="food-munch-logo" alt="logo" />
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ml-auto">
                    <a class="nav-link active" id="navItem1" href="#about">
                        About Us
                        <span class="sr-only">(current)</span>
                    </a>
                    <a class="nav-link" href="#wcuSection" id="navItem2">Our Services</a>
                    <a class="nav-link" href="#ourTeam" id="navItem2">Our Team</a>
                    <a class="nav-link" href="#contact" id="navItem2">Contact Us</a>
                    <a class="nav-link" href="admin/adminlogin" id="navItem2">Admin Login</a>
                    <a class="nav-link" href="login" id="navItem3">Login</a>
                    <a class="nav-link btn btn-primary" style="color: white;" href="registration" id="navItem4">Register</a>
                </div>
            </div>
        </div>
    </nav>

    <div class="banner-section-bg-container d-flex justify-content-center flex-column">
        <div class="text-center">
            <h1 class="banner-heading mb-3">Avail Luxurious Rooms<br/>at Cheap price</h1>
            <a href="login" class="btn btn-warning">Login Here</a>
        </div>
    </div>

    <div id="about">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="row">
                <div class="col-lg-6">
                  <div class="about-left-image">
                    <img src="images/about-dec.png" alt="">
                  </div>
                </div>
                <div class="col-lg-6 align-self-center">
                  <div class="about-right-content">
                    <div class="section-heading">
                      <h2>About Us</h2>
                    </div>
                    <p>Serene Stay is a leading online hotel booking website that offers a wide range of hotels and resorts to choose from. We make it easy for you to find the perfect hotel for your needs and budget, whether you're planning a vacation, business trip, or family getaway.<br/>

                      We understand that planning a trip can be stressful, so we're here to help you make the process as smooth and enjoyable as possible. Our website is easy to use and navigate, and our team of experts is always on hand to answer your questions and provide assistance.<br/>
                      
                      We offer a variety of features and benefits to make your hotel booking experience as easy and convenient as possible, including:
                      
                      A wide selection of hotels and resorts to choose from<br/>
                      1. Competitive rates<br/>
                      2. Real-time availability<br/>
                      3. Easy-to-use booking system<br/>
                      4. Secure payment processing<br/>
                      5. 24/7 customer support<br/>
                      </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>

    <div class="wcu-section pt-5 pb-5" id="wcuSection">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1 class="wcu-section-heading">Our Services</h1>
                </div>
                <div class="col-12 col-md-4">
                    <div class="wcu-card p-3 mb-3">
                        <img src="images/book-hotel.png" class="wcu-card-image" />
                        <h1 class="wcu-card-title mt-3">Book Hotels</h1>
                        <p class="wcu-card-description">
                          Find the perfect hotel for your next vacation, business trip, or family getaway with Serene Stay. We offer a wide range of hotels and resorts to choose from, at competitive rates.
                        </p>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="wcu-card p-3 mb-3">
                        <img src="images/book-resort.png" class="wcu-card-image" />
                        <h1 class="wcu-card-title mt-3">Book Resorts</h1>
                        <p class="wcu-card-description">
                          Looking for a relaxing getaway or an adventurous vacation? Resorts offer everything you need to create unforgettable memories, from stunning scenery to world-class amenities and activities.
                        </p>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="wcu-card p-3 mb-3">
                        <img src="images/book-func.png" class="wcu-card-image" />
                        <h1 class="wcu-card-title mt-3">Book Function Halls</h1>
                        <p class="wcu-card-description">
                          Looking for a place to host your next event? Look no further than Serene Stay! We offer a variety of function halls to choose from, from weddings and conferences to corporate events and birthday parties.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="our-team-section pt-5 pb-5" id="ourTeam">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1 class="team-section-heading">Our Team</h1>
                </div>
                <div class="col-12 col-md-4">
                    <div class="team-card p-3 mb-3">
                        <img src="images/sandeep-image.jpg" class="wcu-card-image" />
                        <h1 class="team-card-title mt-3">Sandeep Dara</h1>
                        <p class="team-card-description">
                          I am a front-end developer with a passion for creating beautiful and functional web experiences. I have experience in developing websites for various domains, such as e-commerce, education, social media, and entertainment.
                        </p>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="team-card p-3 mb-3">
                        <img src="images/koushik-image.jpg" class="wcu-card-image" />
                        <h1 class="team-card-title mt-3">Koushik Lakkuru</h1>
                        <p class="team-card-description">
                          I am a business logic developer with a knack for solving complex problems and creating efficient solutions. I have experience in developing web applications for various domains
                        </p>
                    </div>
                </div>
                <div class="col-12 col-md-4">
                    <div class="team-card p-3 mb-3">
                        <img src="images/jagapathi-image.jpg" class="wcu-card-image" />
                        <h1 class="team-card-title mt-3">Jagapathi Sai</h1>
                        <p class="team-card-description">
                          I am a database manager with a flair for designing and optimizing data structures and queries. I have experience in managing databases for various domains, such as e-commerce, education, social media, and entertainment.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="blog" class="blog">
        <div class="container">
          <div class="row">
            <div class="col-lg-4 offset-lg-4">
              <div class="section-heading">
                <h2>REVIEWS</h2>
                <h4>Check Our Recent <em>Reviews</em></h4>
              </div>
            </div>
            <div class="col-lg-6 show-up">
              <div class="blog-post">
                <div class="thumb">
                  <a href="#"><img src="images/blog-post-01.jpg" alt=""></a>
                </div>
                <div class="down-content">
                  <span class="category">Review 01</span>
                  <a href="#"><h4>"An unforgettable stay at the Hotel Arthur" </h4></a>
                  <p>I recently had the pleasure of staying at the Hotel Arthur in Helsinki, Finland, and I was absolutely blown away. The hotel is beautifully decorated, with a modern and stylish vibe. My room was spacious and clean, with a comfortable bed and all the amenities I needed.</p>
                  <span class="author">By: Karthik</span>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="blog-posts">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="post-item">
                      <div class="thumb">
                        <a href="#"><img src="images/blog-post-02.jpg" alt=""></a>
                      </div>
                      <div class="right-content">
                        <span class="category">Review 02</span>
                        <span class="date">By: Deepak</span>
                        <a href="#"><h4>"A hidden gem"</h4></a>
                        <p>The hotel itself is charming and elegant, with a beautifully decorated lobby and rooms. My room was spacious and comfortable, with a comfortable bed, a luxurious bathroom, and a view of the hotel's courtyard.</p>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-12">
                    <div class="post-item">
                      <div class="thumb">
                        <a href="#"><img src="images/blog-post-03.jpg" alt=""></a>
                      </div>
                      <div class="right-content">
                        <span class="category">Review 03</span>
                        <span class="date">By: Manoj</span>
                        <a href="#"><h4>"Value for money"</h4></a>
                        <p>The hotel also offers a variety of amenities, including a free breakfast buffet, a fitness center, and a rooftop terrace. I particularly enjoyed the rooftop terrace, which offered stunning views of the city skyline. Overall, I had a great stay at the Hotel XYZ. I would definitely recommend this hotel to anyone looking for a budget-friendly and convenient place </p>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div> 
    
    <div id="contact" class="contact-us section">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 offset-lg-3">
              <div class="section-heading">
                <h6>Contact Us</h6>
                <h4>Get In Touch With Us <em>Now</em></h4>
              </div>
            </div>
            <div class="col-lg-12">
              <form id="contact" action="" method="post">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="contact-dec">
                      <img src="images/contact-dec.png" alt="">
                    </div>
                  </div>
                  <div class="col-lg-5">
                    <div id="map">
                      <iframe src="https://maps.google.com/maps?q=K+L+Deemed+To+Be+University&t=&z=13&ie=UTF8&iwloc=&output=embed" width="100%" height="636px" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
                  </div>
                  <div class="col-lg-7">
                    <div class="fill-form">
                      <div class="row">
                        <div class="col-lg-4">
                          <div class="info-post">
                            <div class="icon">
                              <img src="images/phone-icon.png" alt="">
                              <a href="#">+91 8328043714</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-lg-4">
                          <div class="info-post">
                            <div class="icon">
                              <img src="images/email-icon.png" alt="">
                              <a href="#">serenestay@gmail.com</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-lg-4">
                          <div class="info-post">
                            <div class="icon">
                              <img src="images/location-icon.png" alt="">
                              <a href="#">KL University</a>
                            </div>
                          </div>
                        </div>
                        <div class="col-lg-6">
                          <fieldset>
                            <input type="name" name="name" id="name" placeholder="Name" autocomplete="on" required>
                          </fieldset>
                          <fieldset>
                            <input type="text" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email" required="">
                          </fieldset>
                          <fieldset>
                            <input type="subject" name="subject" id="subject" placeholder="Subject" autocomplete="on">
                          </fieldset>
                        </div>
                        <div class="col-lg-6">
                          <fieldset>
                            <textarea name="message" type="text" class="form-control" id="message" placeholder="Message" required=""></textarea>  
                          </fieldset>
                        </div>
                        <div class="col-lg-12">
                          <fieldset>
                            <button type="submit" id="form-submit" class="main-button ">Send Message Now</button>
                          </fieldset>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
    </div>

    <div class="footer-section pt-5 pb-5">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center">
                    <img src="images/logo.png" class="food-munch-logo" />
                    <h1 class="footer-section-mail-id">serenestay@gmail.com</h1>
                    <p class="footer-section-address">
                        Kl University, Green Fields, Vaddeswaram, Vijayawada.
                    </p>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>