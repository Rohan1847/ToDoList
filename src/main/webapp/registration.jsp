<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="styles/style2.css" rel="stylesheet">
	<script src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src = "js/jscript2.js"></script>
	<title>Registration form</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row justify-content-center">
			<div class="col-lg-6">
				<div class="card">
					<div class="card-body">
						<h1 class="card-title text-center text-decoration-underline font-monospace">REGISTRATION FORM</h1><br><br>
						<form class="card-text" name="form1" action="Register" method="post">
							<label for="formid1" class="form-label my-2">Name:</label>
							<input name="username" type="text" class="form-control" id="formid1" placeholder="Full Name" required>
							<label for="formid2" class="form-label my-2">Email:</label>
							<input name="email" type="email" class="form-control" id="formid2" placeholder="name@example.com" required>
							<div id="errormail"></div>
							<label for="formid3" class="form-label my-2">Password:</label>
							<input name="pass" type="password" class="form-control" id="formid3" placeholder="password" required>
							<div id="errorpass"></div>
							<button type="submit" class="btn btn-primary my-2" id="submit">Register</button>
							<button type="reset" class="btn btn-danger my-2">Reset</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>