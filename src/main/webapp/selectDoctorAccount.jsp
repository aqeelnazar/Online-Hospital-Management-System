<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Select Doctor</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="CSS/bootstrap.min.css">
	<link rel="stylesheet" href="CSS/home.css">
	<link rel="stylesheet" href="CSS/style.css">	
    
    <script type="text/javascript">
       
    function redirectToPage(doctorId, doctorName, doctorSpecialization) {
        
    	var confirmation = window.confirm("Enter your details to book an appointment to " + doctorName + "- " + doctorSpecialization);
        
        if (confirmation) {
            window.location.href = "DoctorBooking.jsp?doctorId=" + doctorId + "&doctorName=" + encodeURIComponent(doctorName) + "&doctorSpecialization=" + encodeURIComponent(doctorSpecialization);
        } else {
            
            window.history.back();
        }
    }
</script>
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
</head>
<body>

<jsp:include page="header.jsp" />


<div class="container"> 
    <div class="hero-image">
        <div class="hero-text"><h1>Available doctors :</h1>	</div>
    </div>
   
    		
    		<label>Select specialization:</label>
    		<c:if test="${not empty doctors}">
    <table class="table">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Available Date</th>
          
        </tr>
        <c:forEach var="doctor" items="${doctors}">
            <tr>
                <td>${doctor.id}</td> <!--calling getId -->
                <td>${doctor.name} - ${doctor.specialization}</td> 
                <td>${doctor.availableDate}</td>
                <td><input type="submit" value="Book now"  onclick="redirectToPage(${doctor.id},'${doctor.name}','${doctor.specialization}')"></td>                               
     		</tr>
        </c:forEach>
    </table>
</c:if>
<c:if test="${empty doctors}">
    <p>No doctors found selected .</p>
</c:if>
    	

    		 

    </div>


<jsp:include page="footer.jsp" />  

</body>
</html>