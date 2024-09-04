<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="CSS/bootstrap.min.css">
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
        margin: 50px auto;
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

<div class="container">
    <h2>Update Customer</h2>
    <form method="post" action="updateCustomer">
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floatingInputName" name="name" value="${param.name }">
            <label for="floatingInputName">Name</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floatingInputPhone" name="phone" value="${param.phone }">
            <label for="floatingInputPhone">Phone</label>
        </div>
        <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInputEmail" name="email" value="${param.email }">
            <label for="floatingInputEmail">Email address</label>
        </div>
        <div class="form-floating">
            <input type="text" class="form-control" id="floatingInputPassword" name="password" value="${param.password }">
            <label for="floatingInputPassword">Password</label>
        </div>
        <div class="form-floating">
            <input type="text" class="form-control" id="floatingInputPassword" name="address" value="${param.address }">
            <label for="floatingInputPassword">Address</label>
        </div>
        <button type="Submit" class="btn btn-submit">Update</button>
    </form>
</div>

</body>
</html>
