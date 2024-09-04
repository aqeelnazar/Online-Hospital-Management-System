<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
	<head>
	
	<meta charset="UTF-8">
	<title>Doctor Booking</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="CSS/bootstrap.min.css">
	<link rel="stylesheet" href="CSS/home.css">
	<link rel="stylesheet" href="CSS/style.css">	
	<style>
    
        .container {
			margin-top: 150px;
			margin-bottom:100px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 50px;
            background-color: #fff;
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
        .btn-register {
            background-color: #007bff;
            border-color: #007bff;
            color: #fff;
        }
        .btn-customers {
            background-color: #ffc107;
            border-color: #ffc107;
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
       		position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: #fff;
            font-size: 36px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }
        
    </style>
    
    <script>
	function validateForm() {
    	var mobileNo = document.getElementById("mobileNo").value;
    	var nic = document.getElementById("nic").value;
    
    	// Validate Mobile No
    	if (mobileNo.length !== 10 || isNaN(mobileNo)) {
        alert("Mobile number should be 10 digits.");
        return false;
    	}
    
    	// Validate NIC
    	if (nic.length !== 12 || isNaN(nic)) {
        alert("NIC should be 12 digits.");
        return false;
    }    
    return true;
	}
	</script>
    
	</head>
	
	<body>
		<jsp:include page="header.jsp" />



     	<div class="container"> 
    		<div class="hero-image">
        		<div class="hero-text"><h3>Patient Details:</h3></div>
    		</div>
    
    		<form action="AppointmentInsert" method="post" onsubmit="return validateForm()">
    	
    		<div id="doc">
				<label>Doctor : ${param.doctorName} - ${param.doctorSpecialization}</label>
			</div>
		
			<br><br>
	
			<table>
				<tr>
					<td><label>Patient Name:</label></td>
    				<td><input type="text" id="patientName" name="patientName" required></td>
    			</tr>
    
    			<tr>
					<td><label>Gender:</label></td> 
					<td><select id="Gender" name="Gender">
						<option value="Male">Male</option>
    					<option value="Female">Female</option>
    					</select>
    				</td> 
				</tr>
	

    			<tr>
    				<td><label>Email:</label></td>  
    				<td><input type = "email" id = "email" name = "email" required></td>
    			</tr>
    
    			<tr>
    				<td><label>Mobile No:</label></td>       
    				<td><input type = "tel" id = "mobileNo" name = "mobileNo" required></td>
    			</tr>
    
    			<tr>
    				<td><Label>NIC :</Label> </td>
    				<td><input type = "text" id="nic" name="nic" required></td>
    			</tr>
    
    
    		</table>
   
    		<input type="hidden" name="doctorId" value="${param.doctorId}">
    		<input type="hidden" name="doctorName" value="${param.doctorName}">
    		<input type="hidden" name="doctorSpecialization" value="${param.doctorSpecialization}">
    
    		<input type="submit" value="Book Appointment">
    
		</form>
    </div>
	<jsp:include page="footer.jsp" />  
</body>
</html>