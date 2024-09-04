<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Appointment</title>
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
        #nic{
         	width: calc(50% - 50px);
		    padding: 10px;
		    margin-bottom: 20px;
		    border-radius: 8px;
		    border: 1px solid #ccc;
        }
	</style>
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
        <div class="hero-text"><h1>Appointment Cancellation</h1></div>
    </div>
    <form action="delete" method="post">
			<table>
				<tr>
					<td>Appointment ID :</td>
					<td><%=refID%></td>
				</tr>

				<tr>
					<td>Patient Name :</td>
					<td><%=name%></td>
					<!-- Calls getpName in appointment class -->
				</tr>

				<tr>
					<td>Gender :</td>
					<td><%=gender%></td>
				</tr>

				<tr>
					<td>Email :</td>
					<td><%=email%></td>
				</tr>

				<tr>
					<td>Phone :</td>
					<td><%=phone%></td>
				</tr>
			</table>
			<input type="hidden" name="refID" value="<%=refID%>"> <input
				type="submit" value="Delete Appointment"><br>
		</form>
    </div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>

