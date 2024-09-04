<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Add supplier</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="style.css">
	</head>

	<body>

		<div class="wrapper">
			<div class="inner">
				<form action="${supplier != null ? 'updateSupplier' : 'insertSupplier'}" method="post">
					<caption>
						<h2>${supplier != null ? 'Edit Supplier' : 'Add New Supplier'}</h2><br>
					</caption>
					<c:if test="${supplier != null}">
                        <input type="hidden" name="id" value="<c:out value='${supplier.id}' />" />
                    </c:if>
					<div class="form-holder">
						<input type="text" class="form-control" placeholder="Supplier name" value="<c:out value='${supplier.name}' />" id="name" name="name" required="required">
					</div>
					<div class="form-holder">
						<input type="text" class="form-control" placeholder="Address" value="<c:out value='${supplier.address}' />" id="address" name="address">
					</div>
					<div class="form-holder">
						<input type="tel" class="form-control" placeholder="Phone Number" value="<c:out value='${supplier.phone}' />" id="phone" name="phone">
					</div>
					<div class="form-holder">
						<input type="text" class="form-control" placeholder="Email" value="<c:out value='${supplier.email}' />" id="email" name="email">
					</div>
					<button type="submit">
						<span>Submit</span>
					</button>
				</form>
			</div>
			
		</div>
	</body>
</html>