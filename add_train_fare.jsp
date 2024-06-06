<%@page import="java.sql.*" %>
	<!DOCTYPE html>
	<html lang="en">

	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=3.0">
		<title>Add train</title>
		<link rel="shortcut icon" href="icon/favicon.svg" type="image/svg">
		<!-- font awsame -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
			integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
			crossorigin="anonymous" referrerpolicy="no-referrer">
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
			id="bootstrap-css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"
			id="bootstrap-css">
		<link rel="stylesheet" href="css/Global.css">
		<link rel="stylesheet" href="css/Index.css">
		<script type="text/javascript" src="train_validation.js"></script>
		<!-- <link href="style.css" rel="stylesheet" type="text/css" /> -->
		<!-- Scripts -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"
			defer></script>
		<script src="js/Index.js" defer></script>
		<script type="text/javascript" src="registration_validation.js"></script>
		<script type="text/javascript" src="mobile_validation.js"></script>
		<script type="text/javascript" src="signup_validation.js"></script>
		<script type="text/javascript" src="characters_validation.js"></script>
		<script src="js/Global.js"></script>
		<style>
			* {
				box-sizing: border-box;
				font-family: "Courier Prime", monospace;
				font-size: 2.2rem;
			}
		</style>
</head>
<body>
	<%
	String type=(String)session.getAttribute("type");
String email=(String)session.getAttribute("email"); 
String username=(String)session.getAttribute("username");
if(email!=null){%>
	<%if(type.equals("user")){%>
		response.sendRedirect("/rail/"); 
	<%} else{%>
		<jsp:include page="header_admin.jsp"/>
	<div id="addnew" class="text-center mb-5 pb-5">
		<h2>Add Train Fare</h2>
		<form class="w-50 m-auto" name="form1" action="added_train_fare.jsp" method="post">
			<table class="table border-white">
				<tr>
					<td class="align-middle"><label for="tname">Train Code :</label></td>
					<td><input type="text" class="text-center w-75 rounded-3" name="tcode"></td>
				</tr>
				<tr>
					<td class="align-middle"> <label for="coach">Coach :</label></td>
					<td>
						<select name="coach">
							<option value="" selected disabled>Select Class</option>
							<option>Sleeper</option>
							<option>FirstAC</option>
							<option>SecondAC</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="align-middle"> <label for="base_fare">Base Fare :</label> </td>
					<td><input type="text" class="text-center w-75 rounded-3" name="base_fare"></td>
				</tr>
				<tr>
					<td class="align-middle"> <label for="internet_charge">Internet Charge :</label></td>
					<td> <input type="text" class="text-center w-75 rounded-3" name="internet_charge"> </td>
				</tr>
			</table>
			<button type="submit" value="Submit!" class="button ml-3 p-3">Submit</button>
		</form>
	</div>
	<%}
	} else{ 
		response.sendRedirect("/rail/"); 
} %>
</body>
</html>