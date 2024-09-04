<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Appointment</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="CSS/bootstrap.min.css">
	<link rel="stylesheet" href="CSS/home.css">
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
        

#nic {
	width: calc(50% - 50px);
	padding: 10px;
	margin-bottom: 20px;
	border-radius: 8px;
	border: 1px solid #ccc;
}
table {
    width: 100%;
    border-collapse: collapse;
}

table, th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

th {
    background-color: #f2f2f2;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #ddd;
}

</style>

</head>
<body>
	<jsp:include page="header.jsp" />
	
	
	
	
	 <div class="container"> 
    <div class="hero-image">
        <div class="hero-text"><h1>Appointment details</h1></div>
    </div>
   
   <table>
				<c:forEach var="app" items="${appointmentDetails}">

					<c:set var="refID" value="${app.refID}" />
					<c:set var="name" value="${app.pName}" />
					<c:set var="gender" value="${app.gender}" />
					<c:set var="email" value="${app.email}" />
					<c:set var="phone" value="${app.mobileNo}" />
					<c:set var="nic" value="${app.nic}" />

					<tr>
						<td>Appointment no :</td>
						<td>${app.refID}</td>
					</tr>

					<tr>
						<td>Patient Name :</td>
						<td>${app.pName}</td>
						<!-- Calls getpName in appointment class -->
					</tr>

					<tr>
						<td>Gender :</td>
						<td>${app.gender}</td>
					</tr>

					<tr>
						<td>Email :</td>
						<td>${app.email}</td>
					</tr>

					<tr>
						<td>Phone :</td>
						<td>${app.mobileNo}</td>
					</tr>

					<c:url value="updateAppointment.jsp" var="appoitmentUpdate">
						<c:param name="refID" value="${refID}" />
						<c:param name="name" value="${name}" />
						<c:param name="gender" value="${gender}" />
						<c:param name="email" value="${email}" />
						<c:param name="phone" value="${phone}" />
						<c:param name="nic" value="${app.nic}" />
					</c:url>

					<c:url value="DeleteAppointment.jsp" var="delete">
						<c:param name="refID" value="${refID}" />
						<c:param name="name" value="${name}" />
						<c:param name="gender" value="${gender}" />
						<c:param name="email" value="${email}" />
						<c:param name="phone" value="${phone}" />
						<c:param name="nic" value="${app.nic}" />
					</c:url>

				</c:forEach>
			</table>

			<a href="${appoitmentUpdate}"> <input type="button" name="update"
				value="Edit Appointment Details" class="btn btn-outline-success">
			</a> <br> <a href="${delete}"> <input type="button"
				name="delete" value="Delete Appointment" class="btn btn-outline-danger">
			</a>
    </div>
	<jsp:include page="footer.jsp" />

</body>
</html>