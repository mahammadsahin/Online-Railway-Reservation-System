<%@page import="java.sql.*" %>
<%@page errorPage="err.jsp" %>
<% Connection con=(Connection)application.getAttribute("con"); 
PreparedStatement ps=con.prepareStatement("select * from user_info"); 
ResultSet rs=ps.executeQuery(); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=3.0">
	<title>Passenger List</title>
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
	.css-serial {
	counter-reset: serial-number; /* Set the serial number counter to 0 */
	}
	.css-serial td:first-child:before {
	counter-increment: serial-number; /* Increment the serial number counter */
	content: counter(serial-number); /* Display the counter */
	}
	h1{
		font-family: "Courier Prime", monospace;
	}
	th{
		text-align: center;
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
			
			<h1 class="text-center m-auto mt-5">User Details</h1>
			<div class="container">
				<table width="85%" class="css-serial table">
					<form name="form1" action="update.jsp" method="post">
						<tr>
							<th>S.No</th>
							<th>Name</th>
							<th>Email</th>
							<th>Gender</th>
							<th>Contact</th>
						</tr>
						<% while(rs.next()){ 
							String name=rs.getString(1); 
							String emaill=rs.getString(2); 
							String password=rs.getString(3); 
							String gender=rs.getString(4); 
							long contact=rs.getLong(5); %>
						<tr>
							<td class="text-center" width="10%">&nbsp;</td>
							<td width="25%"><%=name%></td>
							<td width="35%"><%=emaill%></td>
							<td class="text-center" width="15%"><%=gender%></td>
							<td class="text-center" width="15%"><%=contact%></td>
						</tr>
						<%}%>
					</form>
				</table>
			</div>
			<%}
		} else{ 
			response.sendRedirect("/rail/"); 
	} %>
</body>
</html>