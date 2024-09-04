<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="CSS/bootstrap.min.css">
	<link rel="stylesheet" href="CSS/home.css">	
<title>Update Customer</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 500px;
        margin-top: 150px;
		margin-bottom:100px;
        background-color: #fff;
        border-radius: 10px;
        padding: 30px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        margin-bottom: 30px;
        color: #007bff;
    }
    label {
        font-weight: bold;
    }
    .form-floating {
        margin-bottom: 20px;
    }
    .btn-submit {
        width: 100%;
        font-size: 18px;
        background-color: #007bff;
        border-color: #007bff;
        transition: background-color 0.3s ease, border-color 0.3s ease;
    }
    .btn-submit:hover {
        background-color: #0056b3;
        border-color: #0056b3;
    }
    .btn-submit:focus {
        box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.5);
    }
</style>

</head>
<body>
<jsp:include page="header.jsp" />

<div class="container">
    <h2>Update Customer</h2>
    <form method="post" action="updateDoctor" onsubmit="return validateForm()">
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floatingInputName" name="name" value="${param.name }">
            <label for="floatingInputName">Name</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="phoneInput" name="phone" value="${param.phone }">
            <label for="floatingInputPhone">Phone</label>
        </div>
        <div class="form-floating">
            <select id="specializationSelect" class="form-select"  name="specialization">
                <option selected >${param.specialization } </option>
                <option value="Oncologist">Oncologist</option>
        		<option value="Cardiologist">Cardiologist</option>
        		<option value="Neurologist">Neurologist</option>
        		<option value="Orthopedist">Orthopedist</option>
        		<option value="Pediatrician">Pediatrician</option>
        		<option value="Dermatologist">Dermatologist</option>
        		<option value="Gynecologist">Gynecologist</option>
        		<option value="Urologist">Urologist</option>
        		<option value="Ophthalmologist">Ophthalmologist</option>
        		<option value="Psychiatrist">Psychiatrist</option>
            </select>
            <label for="specializationSelect">Specialization</label>
        </div>
     
        <div class="form-floating mb-3">
            <select id="availableDate" class="form-select"  name="availableDate">
                <option selected >${param.availableDate }</option>
                <option value="Sunday">Sunday</option>
                <option value="Monday">Monday</option>
                <option value="Tuesday">Tuesday</option>
                <option value="Wednesday">Wednesday</option>
                <option value="Thursday">Thursday</option>
                <option value="Friday">Friday</option>
                <option value="Saturday">Saturday</option>
            </select>
            <label for="availableDate">Availability</label>
        </div>
        
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="roomInput" name="roomNo" value="${param.roomNo }">
            <label for="availableRoom">Available Room</label>
        </div>
        
        <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInputEmail" name="email" value="${param.email }">
            <label for="floatingInputEmail">Email address</label>
        </div>
        <div class="form-floating">
            <input type="text" class="form-control" id="floatingInputPassword" name="password" value="${param.password }">
            <label for="floatingInputPassword">Password</label>
        </div>
        <button type="Submit" class="btn btn-submit">Update</button>
    </form>
</div>
<jsp:include page="footer.jsp" />  
<script>
    function validateForm() {
        var name = document.getElementById("nameInput").value;
        var phone = document.getElementById("phoneInput").value;
        var specialization = document.getElementById("specializationSelect").value;
        var availableDate = document.getElementById("availableDate").value;
        var room = document.getElementById("roomInput").value;
        var email = document.getElementById("emailInput").value;
        var password = document.getElementById("passwordInput").value;

        if (name == "" || phone == "" || specialization == "" || availableDate == "" || room == "" || email == "" || password == "") {
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

        //password pattern
        var passwordPattern = /^(?=.\d)(?=.[a-z])(?=.*[A-Z]).{6,20}$/;
        if (!password.match(passwordPattern)) {
            alert("Password must be 6-20 characters long and must contain at least one numeric digit, one uppercase and one lowercase letter");
            return false;
        }

        return true;
    }

</script>
</body>
</html>
