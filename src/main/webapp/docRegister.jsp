<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Registration</title>
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/home.css">
    <link rel="stylesheet" href="CSS/doc.css">
</head>
<body>
<jsp:include page="header.jsp" />

<div class="container">
    <h2>Doctor Registration</h2>
    <form method="post" action="addDoctor" onsubmit="return validateForm()">
        <div class="form-floating">
            <input type="text" class="form-control" id="nameInput" name="name" placeholder=" " >
            <label for="nameInput">Name</label>
        </div>
        <div class="form-floating">
            <input type="text" class="form-control" id="phoneInput" name="phone" placeholder=" " required>
            <label for="phoneInput">Phone Number</label>
        </div>
        <div class="form-floating">
            <select id="specializationSelect" class="form-select"  name="specialization" required>
                <option selected disabled>Choose...</option>
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
            <select id="availableDate" class="form-select"  name="availableDate" required>
                <option selected disabled>Choose...</option>
                <option value="Sunday">Sunday</option>
                <option value="Monday">Monday</option>
                <option value="Tuesday">Tuesday</option>
                <option value="Wednesday">Wednesday</option>
                <option value="Thursday">Thursday</option>
                <option value="Friday">Friday</option>
                <option value="Saturday">Saturday</option>
            </select>
            <label for="availableDate">Available Date</label>
        </div>
        
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="roomInput" name="roomNo" placeholder=" " required>
            <label for="availableRoom">Available Room</label>
        </div>
        
        <div class="form-floating">
            <input type="email" class="form-control" id="emailInput" name="email" placeholder=" " required>
            <label for="emailInput">Email address</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="passwordInput" name="password" placeholder=" " required>
            <label for="passwordInput">Password</label>
        </div>
        <button type="submit" class="btn btn-submit">Register</button>
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

        

        return true;
    }

</script>
</body>
</html>