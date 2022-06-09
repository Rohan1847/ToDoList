<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="styles/style1.css" rel="stylesheet">
	<script src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src = "js/jscript1.js"></script>
	<title>To-Do-List</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row justify-content-end">
		    <div class="col-auto">
		      <a href="registration.jsp"><button style="color:DodgerBlue;" type="button" class="btn btn-outline-dark">Register Here</button></a>
		    </div>
		    <div class="col-auto">
		      <a href="about.html"><button style="color:yellow;" type="button" class="btn btn-outline-info">About</button></a>
		    </div>
		</div>
	</div>
	<br><br><br><br><br><br>
	<div class="form-box">
		<div class="container-fluid">
			<div class="row justify-content-center">
				<div class="col-auto">
				<h3 class="text-center text-info text-decoration-underline font-monospace">LOGIN</h3>
					<form action="Login" method="post">
						<label for="formid1" class="form-label my-2">Email:</label>
						<input name="email" type="email" class="form-control form-control-lg" id="formid1" placeholder="name@example.com" required>
						<div id="errormail"></div>
						<label for="formid2" class="form-label my-2">Password:</label>
						<input name="pass" type="password" class="form-control form-control-lg" id="formid2" placeholder="password" required>
						<div id="errorpass"></div>
						<button type="submit" class="btn btn-primary my-2" id="submit">Login</button>
						<button type="reset" class="btn btn-danger my-2">Reset</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>