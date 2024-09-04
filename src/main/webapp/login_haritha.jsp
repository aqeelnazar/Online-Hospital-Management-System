<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<!-- STYLE CSS -->
<link rel="stylesheet" href="style.css">
<style>
	#textLog
	{
	  margin: 0;
	  text-align: center;
	  color: #353539;
	}
</style>

</head>

<body>
	<div class="wrapper">
			<div class="inner">
			<h2 id="textLog">Login</h2><br>
				<form action="<%=request.getContextPath()%>/LoginServlet" method="post">
						
					<div class="form-holder">
						<input type="text" name="username" class="form-control" placeholder="Username" >
					</div>
					<div class="form-holder">
						<input type="password" name="password" class="form-control" placeholder="Password" >
					</div>
					<button type="submit" name="submit">
						<span>Login</span>
					</button>
				</form>
			</div>
		</div>
</body>
</html>