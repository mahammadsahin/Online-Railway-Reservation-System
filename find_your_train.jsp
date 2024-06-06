<%@page import="java.sql.*" %>
<%@page errorPage="err.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=3.0">
  <title>Home</title>
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
  <script src="mobile_validation.js" defer></script>
<script src="characters_validation.js" defer></script>
<script src="pass_validation.js" defer></script>
<script src="email_validation.js" defer></script>
<script src="js/otp.js" defer></script>
<script src="https://smtpjs.com/v3/smtp.js" defer></script>
<script type="text/javascript" src="train_validation.js" defer></script>
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
</head>

	<body>
		<%
		String email=(String)session.getAttribute("email"); 
		String username=(String)session.getAttribute("username");
		if(email!=null){%>
			<jsp:include page="header_login.jsp"/>
		<%} else{%>
			<jsp:include page="header_without_login.jsp"/>
		<%}%>

		<h1 class="text-center m-5">Find Your Train Information</h1>
		<!-- <hr> -->
		<form action="train_found.jsp" class="container bg-info-subtle rounded-5">
			<% Connection conn=(Connection)application.getAttribute("con"); 
			PreparedStatement ps=conn.prepareStatement("select source from train_info"); 
			ResultSet rs=ps.executeQuery(); 
			%>
				<!-- Search -->
				<div class="wrapper">
					<div class="search-container m-5">
						<select name="source" style="-webkit-appearance: none;"
							class="bg-white w-75 rounded-3 m-3 text-center search" required>
							<option value="" selected disabled>From Where?</option>
							<% java.util.ArrayList al=new java.util.ArrayList(); while(rs.next()) { String
								source=rs.getString(1); int index=al.indexOf(source); if(index==-1) { %>
								<option>
									<%=source%>
								</option>
								<% } al.add(source); } %>
						</select>
						<select name="dest" style="-webkit-appearance: none;"
							class="w-75 bg-white rounded-3 m-3 text-center search">
							<option value="" selected disabled>To Where?</option>
							<% PreparedStatement ps1=conn.prepareStatement("select destination from train_info");
								ResultSet rs1=ps1.executeQuery(); 
								al=new java.util.ArrayList(); 
								while(rs1.next()) {
								String destination=rs1.getString(1); 
								int index=al.indexOf(destination); 
								if(index==-1) {%>
								<option> <%=destination%> </option>
								<% } al.add(destination); } %>
						</select>
						<input id="inputField" type="date" class="w-75 rounded-3 search" name="date">
						<button type="submit" value="submit" class="button ml-3 p-3">Search</button>
					</div>
				</div>
		</form>

		<div class="container">
	</body>

	</html>