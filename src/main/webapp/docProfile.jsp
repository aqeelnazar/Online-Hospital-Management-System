 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<link rel="stylesheet" href="CSS/home.css">
<title>My Profile</title>

<style>
     body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
       
    }
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
    .form-floating {
        margin-bottom: 20px;
    }
    .form-floating input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        outline: none;
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
    .btn-outline-success {
        color: #28a745;
        border-color: #28a745;
    }
    .btn-outline-danger {
        color: #dc3545;
        border-color: #dc3545;
    }
</style>

</head>
<jsp:include page="header.jsp" />

<body>
<c:set var = "doc" value = "${doctor}"/>
<div class="container">
    <fieldset disabled>
        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="floatingInput" name="name" value="${doc.name }" placeholder="name">
          <label for="floatingInput">Name</label>
        </div>
        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="floatingInput" name="phone" value="${doc.phone }" placeholder="">
          <label for="floatingInput">Phone</label>
        </div>
        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="floatingInput" name="specialization" value="${doc.specialization }" placeholder="">
          <label for="floatingInput">Specialization</label>
        </div>
        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="floatingInput" name="availableDate" value="${doc.availableDate }" placeholder="">
          <label for="floatingInput">Available Date</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="roomInput" name="roomNO" value="${doc.roomNo }" placeholder=" ">
            <label for="availableRoom">Available Room</label>
        </div>
        <div class="form-floating mb-3">
          <input type="email" class="form-control" id="floatingInput" name="email" value="${doc.email }" placeholder="name@example.com">
          <label for="floatingInput">Email address</label>
        </div>
        <div class="form-floating">
          <input type="password" class="form-control" id="floatingPassword" name="password" value="${doc.password }" placeholder="Password">
          <label for="floatingPassword">Password</label>
        </div>
    </fieldset>

    <form action="docUpdate.jsp" method="post">
        <input type="hidden" name="name" value="${doc.name }">
        <input type="hidden" name="phone" value="${doc.phone }">
        <input type="hidden" name="specialization" value="${doc.specialization }">
        <input type="hidden" name="availableDate" value="${doc.availableDate }">
        <input type="hidden" name="roomNo" value="${doc.roomNo }">
        <input type="hidden" name="email" value="${doc.email }">
        <input type="hidden" name="password" value="${doc.password }">
        
        <button type="Submit" value="update" class="btn btn-outline-success">Update</button>
    </form>
    <form action="deleteDoctor" method="post">
        <input type="hidden" name="email" value="${doc.email}">
        <button type="Submit" class="btn btn-outline-danger">Delete</button>
    </form>
</div>
<jsp:include page="footer.jsp" />  

</body>
</html>
