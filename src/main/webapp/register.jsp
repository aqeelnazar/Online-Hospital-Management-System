
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Registration</title>
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/home.css">
    <link rel="stylesheet" href="CSS/doc.css">
</head>
<body>
<jsp:include page="header.jsp" />
<div class="container">
    <h2>Patient Registration</h2>
    <form action="addCustomer" method="post">
        <div class="form-floating">
            <input type="text" class="form-control" id="nameInput" name="name" placeholder=" ">
            <label for="nameInput">Patient Name</label>
        </div>
        
        <div class="form-floating">
            <input type="text" class="form-control" id="phoneInput" name="phone" placeholder=" ">
            <label for="phoneInput">Phone Number</label>
        </div>
       
       <div class="form-floating">
            <input type="text" class="form-control" id="addressInput" name="address" placeholder=" ">
            <label for="addressInput">Address</label>
        </div>
       
        <div class="form-floating">
            <input type="email" class="form-control" id="emailInput" name="email" placeholder=" " onfocus="showAlert()">
            <label for="emailInput">Email address</label>
        </div>
        
        <div class="form-floating">
            <input type="password" class="form-control" id="passwordInput" name="password" placeholder=" ">
            <label for="passwordInput">Password</label>
        </div>
        
        <input type="submit" class="btn btn-submit" value="Register">
    </form>
</div>
<jsp:include page="footer.jsp" /> 
<script>

    function validateForm() {
        var name = document.getElementById("nameInput").value;
        var phone = document.getElementById("phoneInput").value;
        var address = document.getElementById("addressInput").value;
        var email = document.getElementById("emailInput").value;
        var password = document.getElementById("passwordInput").value;

        if (name == "" || phone == "" || address == "" || email == "" || password == "") {
            alert("All fields must be filled out");
            return false;
        }

        //phone number pattern and no string allowed
        var phonePattern = /^[0-9]+$/;
        if (!phone.match(phonePattern)) {
            alert("Phone number must be numeric");
            return false;
        }

        //email pattern
        var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        if (!email.match(emailPattern)) {
            alert("Invalid email address");
            return false;
        }

        

        return true;
    }

</script>
</body>
</html>
