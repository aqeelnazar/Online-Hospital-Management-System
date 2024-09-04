<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<link rel="stylesheet" href="CSS/home.css">
<link rel="stylesheet" href="CSS/doc.css">
	
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
		
        .container {
			margin-top: 150px;
			margin-bottom:100px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 50px;
            background-image: url('Image/coverr.jpeg');
            animation: fadeIn 1s ease-in-out;
        }
        .btn {
            margin-top: 20px;
            width: 150px;
            font-size: 18px;
            transition: all 0.3s ease;
        }
        .btn:hover {
            transform: scale(1.1);
        }
        .btn-login {
            background-color: #28a745;
            border-color: #28a745;
            color: #fff;
        }
        
        .hero-image {
            background-image: url('Image');
            background-size: cover;
            background-position: center;
            height: 100px;
            border-radius: 10px 10px 0 0;
            position: relative;
            
        }
        .hero-text {
       		position: relative;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: #fff;
            font-size: 36px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        .error-message {
        color: red;
        font-size: 14px;
    }
        
	</style>
</head>
<body>
<jsp:include page="header.jsp" />

    <br><br>
<div class="container">
<div class="hero-image">
        <div class="hero-text">Doctor Login</div></div><br>
    <form action="docLogin" method="post" onsubmit="return validateForm()">
      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" name="email" aria-describedby="emailHelp">
        <span id="emailError" class="error-message"></span> <!-- Error message placeholder -->
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1" name="password">
        <span id="passwordError" class="error-message"></span> <!-- Error message placeholder -->
      
      </div>

      <button type="submit" class="btn btn-login">Login</button>  
    </form>
</div>
<jsp:include page="footer.jsp" />  
<!-- JavaScript for form validation -->
<!-- <script> -->
//     function validateForm() {
//         var email = document.getElementById("exampleInputEmail1").value.trim();
//         var password = document.getElementById("exampleInputPassword1").value.trim();
//         var emailError = document.getElementById("emailError");
//         var passwordError = document.getElementById("passwordError");
//         var isValid = true;

//         // Resetting previous error messages
//         emailError.innerHTML = "";
//         passwordError.innerHTML = "";

//         // Checking email field
//         if (email === "") {
//             emailError.innerHTML = "Email is required";
//             isValid = false;
//         }

//         // Checking password field
//         if (password === "") {
//             passwordError.innerHTML = "Password is required";
//             isValid = false;
//         }

//         return isValid;
//     }
<!-- </script> -->
</body>
</html>
