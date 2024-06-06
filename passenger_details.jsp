<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=3.0">
  <title>Passenger Details</title>
  <link rel="shortcut icon" href="icon/favicon.svg" type="image/svg">
  <!-- font awsame -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
    crossorigin="anonymous" referrerpolicy="no-referrer">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  
  <!-- Scripts -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"
    defer></script>
  <script src="js/Index.js" defer></script>
  <!-- <script type="text/javascript" src="registration_validation.js"></script>
<script type="text/javascript" src="mobile_validation.js"></script>
<script type="text/javascript" src="signup_validation.js"></script>
<script type="text/javascript" src="characters_validation.js"></script> -->
<link rel="stylesheet" href="css/Global.css">
  <link rel="stylesheet" href="css/Index.css">
<style>
  * {
    box-sizing: border-box;
    font-family: "Courier Prime", monospace;
    font-size: 2.2rem;
}
h1{
	font-family: "Courier Prime", monospace;
}
</style>
<!-- <link rel="stylesheet" type="text/css" media="all" href="jsdatepick-calendar\jsDatePick_ltr.min.css" />
<link rel="stylesheet" type="text/css" media="all" href="jsdatepick-calendar\jsDatePick_ltr.css" />
<script type="text/javascript" src="jsdatepick-calendar\jsDatePick.min.1.3.js"></script>
<script language="javascript" type="text/javascript" src="jsdatepick-calendar\datetimepicker.js"></script> -->

<script type="text/javascript" src="registration_validation.js"></script>
<script type="text/javascript" src="characters_validation_on_passenger_details.js"></script>
<script type="text/javascript" src="age_validation.js"></script>
<script type="text/javascript" src="mobile_validation_on_passenger_details.js"></script>

<% 
	int tcode=Integer.parseInt(request.getParameter("tcode"));
	int net_fare=Integer.parseInt(request.getParameter("net_fare"));
	session.setAttribute("tcode",tcode);
	session.setAttribute("net_fare",net_fare);
%>
<!-- <link href="style.css" rel="stylesheet" type="text/css"/> -->
</head>

   <%String email=(String)session.getAttribute("email"); 
	if(email!=null){%>
		<jsp:include page="header_login.jsp"/>
	<%} else{
		response.sendRedirect("/rail/"); 
	}%>

<body>
	<h1 class="text-center">Passenger Details</h1>

<table class="w-50 text-center m-auto" height="400" width="600" style="border-collapse: collapse;">
<form name="form1" action="payment_details.jsp" method="post">
	<tbody align="center">
		<tr>
			<th class="text-center">S.NO.</th>
			<th class="text-center">Name</th>
			<th class="text-center">Age</th>
			<th class="text-center">Gender</th>
			</tr>
		<tr>
			<td id="passenger1">1</td>
			<td>
				<input type="text" class="w-100 rounded-3" name="passenger1" maxlength="30" onchange="nameValidation('passenger1')">
			</td>
			<td>
				<input type="number" class="w-50 rounded-3" name="p1age">
			</td>
			<td>
				<select name="p1gender">
					<option value="" selected disabled>select</option>
					<option>Male</option>
					<option>Female</option>
					</select>
				</td>
		<tr>
			<td id="passenger2">2</td>
			<td>
				<input type="text" class="w-100 rounded-3" name="passenger2" maxlength="30" onchange="nameValidation('passenger2')">
			</td>
			<td>
				<input type="text" class="w-50 rounded-3" name="p2age">
			</td>
			<td>
				<select name="p2gender">
					<option value="" selected disabled>select</option>
					<option>Male</option>
					<option>Female</option>
					</select>
				</td>
		<tr>
			<td id="passenger3">3</td>
			<td>
				<input type="text" class="w-100 rounded-3" name="passenger3" maxlength="30" onchange="nameValidation('passenger3')">
			</td>
			<td>
				<input type="text" class="w-50 rounded-3" name="p3age">
			</td>
			<td>
				<select name="p3gender">
					<option value="" selected disabled>select</option>
					<option>Male</option>
					<option>Female</option>
				</select>
			</td>
		<tr>
			<td id="passenger4">4</td>
			<td>
				<input type="text" class="w-100 rounded-3" name="passenger4" maxlength="30" onchange="nameValidation('passenger4')">
			</td>
			<td>
				<input type="text" class="w-50 rounded-3" name="p4age">
			</td>
			<td>
				<select name="p4gender">
					<option value="" selected disabled>select</option>
					<option>Male</option>
					<option>Female</option>
				</select>
			</td>
		<tr>
			<td id="passenger5">5</td>
			<td>
				<input type="text" class="w-100 rounded-3" name="passenger5" maxlength="30" onchange="nameValidation('passenger5')">
			</td>
			<td>
				<input type="text" class="w-50 rounded-3" name="p5age">
			</td>
			<td>
				<select name="p5gender">
					<option value="" selected disabled>select</option>
					<option>Male</option>
					<option>Female</option>
				</select>
			</td>
		<tr>
			<td id="passenger6">6</td>
			<td>
				<input type="text" class="w-100 rounded-3" name="passenger6" maxlength="30" onchange="nameValidation('passenger6')">
			</td>
			<td>
				<input class="w-50 rounded-3" type="text" name="p6age">
			</td>
			<td>
				<select name="p6gender">
					<option value="" selected disabled>select</option>
					<option>Male</option>
					<option>Female</option>
				</select>
			</td>
		<!-- </table>
		<table class="text-center m-auto"> -->
		<tr>
			<td>
				<label for="mobile"> Mobile Number: </label>
			</td>
			<td>
				<input type="text" class="rounded-3" name="mobile" required>
			</td>
			<td></td>
	</tr>
	<tr class="text-center m-auto mt-5 w-25">
		<td colspan="5" class="w-100">
		<button type="submit" name="submit" value="submit" class="mt-5 m-auto w-50 button p-3" size="30">Submit</button>
		</td>
	</tr>
	<!-- <div class="text-center m-auto mt-5 w-25">
	<button type="submit" name="submit" value="submit" class="m-auto w-100 button p-3" size="30">Submit</button>
</div> -->
	</form>
</table>

	<!-- <input type="submit" name="submit" value="submit"> -->
</body>
</html>