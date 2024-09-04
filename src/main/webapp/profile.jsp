<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="CSS/bootstrap.min.css">

<title>My Profile</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
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
<body>
<c:set var = "cus" value = "${customer}"/>
<div class="container">
    <fieldset disabled>
        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="floatingInput" name="name" value="${cus.name }" placeholder="name">
          <label for="floatingInput">Name</label>
        </div>
        
        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="floatingInput" name="phone" value="${cus.phone }" placeholder="">
          <label for="floatingInput">Phone</label>
        </div>
        
        <div class="form-floating mb-3">
          <input type="email" class="form-control" id="floatingInput" name="email" value="${cus.email }" placeholder="name@example.com">
          <label for="floatingInput">Email address</label>
        </div>
        
        <div class="form-floating">
          <input type="password" class="form-control" id="floatingPassword" name="password" value="${cus.password }" placeholder="Password">
          <label for="floatingPassword">Password</label>
        </div>
        
        <div class="form-floating">
          <input type="text" class="form-control" id="floatingPassword" name="address" value="${cus.address }" placeholder="">
          <label for="floatingPassword">Address</label>
        </div>
        
    </fieldset>

    <form action="update.jsp" method="post">
        <input type="hidden" name="name" value="${cus.name }">
        <input type="hidden" name="phone" value="${cus.phone }">
        <input type="hidden" name="email" value="${cus.email }">
        <input type="hidden" name="password" value="${cus.password }">
        <input type="hidden" name="address" value="${cus.address }">
        
        <button type="Submit" value="update" class="btn btn-outline-success">Update</button>
    </form>
    <form action="deleteCustomer" method="post">
        <input type="hidden" name="email" value="${doc.email}">
        <button type="Submit" class="btn btn-outline-danger">Delete</button>
    </form>
</div>
</body>
</html>
