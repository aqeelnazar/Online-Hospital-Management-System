		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Table</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="CSS/home.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f6d365;
			background: -webkit-linear-gradient(to right bottom, rgba(246, 211, 101, 1),rgba(253, 160, 133, 1));
			background: linear-gradient(to right bottom, rgba(246, 211, 101, 1),rgba(253, 160, 133, 1));
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 50px;
            margin-top:20px;
            background-color: #fff;
            animation: fadeIn 1s ease-in-out;
        }
        .btn {
            margin-top: 10px;
            margin-bottom: 10px;
            width: 150px;
            font-size: 18px;
            transition: all 0.3s ease;
        }
        .btn:hover {
            transform: scale(1.1);
        }
        .btn-outline-success {
            color: #28a745;
            border-color: #28a745;
        }
        .btn-outline-danger {
            color: #dc3545;
            border-color: #dc3545;
        }
        .table {
            width: 100%;
            border-collapse: collapse;
        }
        .table th, .table td {
            padding: 8px;
            text-align: center; /* Align center horizontally */
            border-bottom: 1px solid #dee2e6;
            vertical-align: middle;
            
        }
        .table th {
            background-color: #f8f9fa;
            color: #495057;
            font-weight: bold;
        }
        .table tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .table tbody tr:hover {
            background-color: #e9ecef;
        }
    </style>
</head>
<body>
<div class="container">

<div class="container">
    <h2>Doctor List</h2>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Phone</th>
                <th scope="col">Specialization</th>
                <th scope="col">Available Date</th>
                <th scope="col">Available Room</th>
                <th scope="col">Email</th>
                <th scope="col">Password</th>
                <th scope="col">Actions</th>
            </tr>
        </thead>
        <tbody>
        
            <c:forEach var="doc" items="${doctor}">
                <tr>
                    <td>${doc.name}</td>
                    <td>${doc.phone}</td>
                    <td>${doc.specialization}</td>
                    <td>${doc.availableDate}</td>
                    <td>${doc.roomNo}</td>
                    <td>${doc.email}</td>
                    <td>${doc.password}</td>
                    <td>
                        <form action="singleDataButton" method="post">
                            <input type="hidden" name="email" value="${doc.email}">
                            <button type="submit" class="btn btn-outline-success">Data</button>
                        </form>
                        <form action="deleteDoctor" method="post" style="display: inline;">
                            <input type="hidden" name="email" value="${doc.email}">
                            <button type="submit" class="btn btn-outline-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<div class="container">

    <h2>Patient List</h2>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Name</th>
                <th scope="col">Phone</th>
                <th scope="col">Email</th>
                <th scope="col">Password</th>
                <th scope="col">Address</th>
                <th scope="col">Actions</th>
                
                
            </tr>
        </thead>
        <tbody>
            <c:forEach var="pat" items="${customer}">
                <tr>
                    <td>${pat.name}</td>
                    <td>${pat.phone}</td>
                    <td>${pat.email}</td>
                    <td>${pat.password}</td>
                    <td>${pat.address}</td>
                
                    <td>
                        <form action="singleDataButton" method="post">
                            <input type="hidden" name="email" value="${pat.email}">
                            <button type="submit" class="btn btn-outline-success">Data</button>
                        </form>
                        <form action="deleteDoctor" method="post" style="display: inline;">
                            <input type="hidden" name="email" value="${pat.email}">
                            <button type="submit" class="btn btn-outline-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
   
    <div class="container">

<h2>Appointment List</h2>
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Reference ID</th>
                <th scope="col">Patient Name</th>
                <th scope="col">Gender</th>
                <th scope="col">Email</th>
                <th scope="col">Mobile Number</th>
                <th scope="col">NIC</th>
                
                
            </tr>
        </thead>
        <tbody>
            <c:forEach var="app" items="${Appointment}">
                <tr>
                    <td>${app.refID}</td>
                    <td>${app.pName}</td>
                    <td>${app.gender}</td>
                    <td>${app.email}</td>
                    <td>${app.mobileNo}</td>
                    <td>${app.nic}</td>
                
                    <td>
                        <form action="singleDataButton" method="post">
                            <input type="hidden" name="refID" value="${app.refID}">
                            <button type="submit" class="btn btn-outline-success">Data</button>
                        </form>
                        <form action="deleteDoctor" method="post" style="display: inline;">
                            <input type="hidden" name="refID" value="${app.refID}">
                            <button type="submit" class="btn btn-outline-danger">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
  	
</div>

</body>
</html>
