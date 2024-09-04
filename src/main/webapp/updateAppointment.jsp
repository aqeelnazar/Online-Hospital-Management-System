<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Appointment</title>
<link rel="stylesheet" type="text/css" href="CSS/style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="CSS/home.css">
<link rel="stylesheet" href="CSS/bootstrap.min.css">
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
        #nic{
         	width: calc(50% - 50px);
		    padding: 10px;
		    margin-bottom: 20px;
		    border-radius: 8px;
		    border: 1px solid #ccc;
        }
        
	</style>
	<script>
	function validateForm() {
    	var mobileNo = document.getElementById("mobileNo").value;
    	// Validate Mobile No
    	
    	if (mobileNo.length !== 10 || isNaN(mobileNo)) {
        alert("Mobile number should be 10 digits.");
        return false;
    	} 
    return true;
	}
	</script>
    
</head>
<body>
<jsp:include page="header.jsp" />
		<%
		String refID = request.getParameter("refID");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		%>	
	
	
	
	 <div class="container"> 
    <div class="hero-image">
        <div class="hero-text"><h1>Edit Appointment</h1></div>
    </div>
    	<form action="update" method="post" onsubmit="return validateForm()">

			<table>
				<tr>
					<td>Appointment ID :</td>
					<td><input type="text" id="refID" name="refID"
						value="<%=refID%>" readonly></td>
				</tr>

				<tr>
					<td>Patient Name :</td>
					<td><input type="text" id="patientName" name="pName"
						value="<%=name%>"></td>
				
				</tr>

				<tr>
					<td>Gender :</td>
					<td><select id="gender" name="gender" value="<%=gender%>">
							
							<option value="Male">Male</option>
							<option value="Female">Female</option>
					</select></td>
				</tr>

				<tr>
					<td>Email :</td>
					<td><input type="email" id="email" name="email"
						value="<%=email%>"></td>
				</tr>

				<tr>
					<td>Phone :</td>
					<td><input type="tel" id="mobileNo" name="mobileNo"
						value="<%=phone%>"></td>
				</tr>
			</table>

			<input type="submit" value="Edit Appointment" class="btn btn-customers"><br>


		</form>
    </div>
	

	<jsp:include page="footer.jsp" />

</body>
</html>