<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=3.0">
  <title>Add Train</title>
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
  <script type="text/javascript" src="registration_validation.js"></script>
<script type="text/javascript" src="mobile_validation.js"></script>
<script type="text/javascript" src="signup_validation.js"></script>
<script type="text/javascript" src="characters_validation.js"></script>
<link rel="stylesheet" href="css/Global.css">
  <link rel="stylesheet" href="css/Index.css">
  <script src="js/Global.js"></script>
	<style>
	  	* {
			box-sizing: border-box;
			font-family: "Courier Prime", monospace;
			font-size: 2.2rem;
		}
		.sidenav {
		    display: none;
	    	height: 100%;
	    	width: 300px;
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
			<h2>Add New Train</h2>
			<form class="w-50 m-auto" action="add_train.jsp" method="post">
				<table class="table border-white">
					<tr>	
						<td class="align-middle"> <label for="tname">Train Name :</label></td>
						<td><input type="text" class="text-center w-75 rounded-3" name="tname" maxlength="30"></td>
					</tr>
					<tr>
						<td class="align-middle"><label for="tcode">Train Code :</label></td>
						<td><input type="text" class="text-center w-75 rounded-3" name="tcode" maxlength="30"></td>
					</tr>
					<tr>
						<td class="align-middle"><label for="source">Source :</label></td>
						<td><input type="text" class="text-center w-75 rounded-3" name="source" maxlength="30"></td>
					</tr>
					<tr>
						<td class="align-middle"><label for="dest">Destination :</label></td>
						<td><input type="text" class="text-center w-75 rounded-3" name="dest" maxlength="30"></td>
					</tr>
					<tr>
						<td class="align-middle"><label for="tname">Running Days :</label></td>
						<td>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="Sun" name="sunday" id="sunday">
								<label class="form-check-label" for="sunday">
									Sunday
								</label>
							  </div>
							  <div class="form-check">
								<input class="form-check-input" type="checkbox" value="Mon" name="monday" id="monday">
								<label class="form-check-label" for="monday">
									Monday
								</label>
							  </div>
							  <div class="form-check">
								<input class="form-check-input" type="checkbox" value="Tue" name="tuesday" id="tuesday">
								<label class="form-check-label" for="tuesday">
									Tuesday
								</label>
							  </div>
							  <div class="form-check">
								<input class="form-check-input" type="checkbox" value="Wed" name="wednesday" id="wednesday">
								<label class="form-check-label" for="wednesday">
									Wednesday
								</label>
							  </div>
							  <div class="form-check">
								<input class="form-check-input" type="checkbox" value="Thu" name="thursday" id="thursday">
								<label class="form-check-label" for="thursday">
									Thursday
								</label>
							  </div>
							  <div class="form-check">
								<input class="form-check-input" type="checkbox" value="Fri" name="friday" id="friday">
								<label class="form-check-label" for="friday">
									Friday
								</label>
							  </div>
							  <div class="form-check">
								<input class="form-check-input" type="checkbox" value="Sat" name="saturday" id="saturday">
								<label class="form-check-label" for="saturday">
									Saturday
								</label>
							  </div>
						</td>
					</tr>
					<tr>
						<td class="align-middle"><label for="via">Via :</label></td>
						<td><input type="text" class="text-center w-75 rounded-3" name="via" maxlength="30"></td>
					</tr>
					<tr>
						<td class="align-middle"><label for="distance">Distance (Km) :</label></td>
						<td><input type="text" class="text-center w-75 rounded-3" name="distance" maxlength="30"></td>
					</tr>
					<tr>
						<td class="align-middle"><label for="travel_time">Travel Time (Hr) :</label></td>
						<td><input type="text" class="text-center w-75 rounded-3" name="travel_time" maxlength="30"></td>
					</tr>
					<tr>
						<td class="align-middle"><label for="departure_time">Departure Time :</label></td>
						<td><input type="text" class="text-center w-75 rounded-3" name="departure_time" maxlength="30"></td>
					</tr>
					<tr>
						<td class="align-middle"><label for="arrival_time">Arrival Time :</label></td>
						<td><input type="text" class="text-center w-75 rounded-3" name="arrival_time" maxlength="30"></td>
					</tr>
					<tr>
						<td class="align-middle"><label for="sleeper_class">Sleeper Seats :</label></td>
						<td><input type="text" class="text-center w-75 rounded-3" name="sleeper_class" maxlength="30"></td>
					</tr>
					<tr>
						<td class="align-middle"><label for="firstAC_class">First AC Seats :</label></td>
						<td><input type="text" class="text-center w-75 rounded-3" name="firstAC_class" maxlength="30"></td>
					</tr>
					<tr>
						<td class="align-middle"><label for="secondAC_class">Second AC Seats :</label></td>
						<td><input type="text" class="text-center w-75 rounded-3" name="secondAC_class" maxlength="30"></td>
					</tr>
				</table>
				<button type="submit" value="Add Train!" class="button ml-3 p-3">Add Train!</button>
			</form>
		</div>
		<%}
	} else{ 
		response.sendRedirect("/rail/"); 
} %>
</body>
</html>