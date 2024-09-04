<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<link rel="stylesheet" href="CSS/home.css">
<style>
.container {

	max-width: 500px;
	margin-top: 200px;
	margin-bottom:100px;
	background-color: #fff;
	border-radius: 10px;
	padding: 30px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
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
    .hero-text {    
        padding-bottom: 10px;
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


<div class="container">
        <div class="hero-text">Fields Cannot be null</div>
    

      <a href="login_haritha.jsp"><button type="submit" class="btn btn-login">Try Again</button></a> 
    
</div>

<p></p>

<jsp:include page="footer.jsp" />  
</body>
</html>