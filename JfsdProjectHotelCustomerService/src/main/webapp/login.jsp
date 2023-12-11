<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Serene Stay | Login</title>
      <link rel="shortcut icon" href="images/browser-logo.ico">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
      <link rel="stylesheet" href="login.css">
   </head>
   <body>
      <div class="wrapper slideInRight">
         <div class="title">
            Login Here
         </div>
         <span class="blink">
	     <h3 align=center style="color:black"><mark>${message}</mark></h3>
    	</span>
         <form action="checklogin" method="POST">
            <div class="field">
               <input type="text" name="email" required>
               <label><i class="fas fa-envelope"></i>&nbsp;Email Address</label>
            </div>
            <div class="field">
               <input type="password" name="password" required>
               <label><i class="fas fa-lock"></i>&nbsp;Password</label>
            </div>
            <div class="content">
               <div class="checkbox">
                  <input type="checkbox" id="remember-me">
                  <label for="remember-me">Remember me</label>
               </div>
               <div class="pass-link">
                  <a href="#">Forgot password?</a>
               </div>
            </div>
            <div class="field">
               <button type="submit">
                  <i class="fas fa-sign-in-alt"></i>&nbsp; Login
               </button>
            </div>
            <div class="signup-link">
               Not a member? <a href="registration">Signup now</a><br/>
               Back to Home <a href="/">Home</a>
            </div>
         </form>
      </div>
   </body>
</html>