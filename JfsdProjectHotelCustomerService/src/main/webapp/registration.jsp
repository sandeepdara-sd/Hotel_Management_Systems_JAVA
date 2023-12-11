<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Serene Stay | Registration </title>
    <link rel="shortcut icon" href="images/browser-logo.ico">
    <link rel="stylesheet" href="registration.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
   </head>
<body>
  <div class="container slideInR">
  
    <div class="title">Registration</div>
    <div class="content">
    <span class="blink">
	     <h3 align=center style="color:black"><mark>${message}</mark></h3>
    </span>
      <form action="insertcust" method="POST">
        <div class="user-details">
          <div class="input-box">
            <span class="details"><i class="fas fa-user"></i>&nbsp; Name</span>
            <input type="text" placeholder="Enter your name" name="name" required>
          </div>
          <div class="input-box">
            <span class="details"><i class="fas fa-envelope"></i>&nbsp;Email</span>
            <input type="text" placeholder="Enter your email" name="email" required>
          </div>
          <div class="input-box">
            <span class="details"><i class="fas fa-lock"></i>&nbsp;Password</span>
            <input type="password" placeholder="Enter your password" name="password" required>
          </div>
          <div class="input-box">
            <span class="details"><i class="fas fa-phone"></i>&nbsp;Phone Number</span>
            <input type="text" placeholder="Enter your number" name="contactno" required>
          </div>
        </div>
        <div class="gender-details">
          <input type="radio" name="gender" id="dot-1" value="Male">
          <input type="radio" name="gender" id="dot-2" value="Female">
          <input type="radio" name="gender" id="dot-3" value="Others">
          <span class="gender-title"><i class="fas fa-venus-mars"></i>&nbsp;Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Female</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="gender">Prefer not to say</span>
            </label>
          </div>
        </div>
        <div class="button">
          <button type="submit">
            <i class="fas fa-user-plus"></i>&nbsp; Sign Up
        </button>
        </div>
        <div class="login-link">
            Already a member <a href="login">Login now</a><br/>
            Back to Home <a href="/">Home</a>
         </div>
      </form>
    </div>
  </div>

</body>
</html>