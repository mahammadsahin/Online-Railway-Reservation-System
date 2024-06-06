<%@page import="java.sql.*" %>
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
<link rel="stylesheet" href="css/Global.css">
  <link rel="stylesheet" href="css/Index.css">
<style>
  * {
    box-sizing: border-box;
    font-family: "Courier Prime", monospace;
    font-size: 2.2rem;
}
</style>
</head>

<body>
  <%String email=(String)session.getAttribute("email"); 
		String username=(String)session.getAttribute("username");
		if(email!=null){%>
			<jsp:include page="header_login.jsp"/>
		<%} else{%>
			<jsp:include page="header_without_login.jsp"/>
		<%}%>
	<div>
		<center>
			<h1>PNR Status</h1>
		</center>

		<% int count=0; 
		int pnr_no=Integer.parseInt(request.getParameter("pnr_no")); 
		Connection conn=(Connection)application.getAttribute("con"); 
		PreparedStatement ps3=conn.prepareStatement("select * from passenger_details where pnr_number=?"); 
		ps3.setInt(1,pnr_no); 
		ResultSet rs=ps3.executeQuery();
		while(rs.next()) { 
			count++; 
			String name=rs.getString(2); 
			int age=Integer.parseInt(rs.getString(3)); 
			String gender=rs.getString(4); 
			PreparedStatement ps4=conn.prepareStatement("select * from pnr_status where pnr_number=?"); 
			ps4.setInt(1,pnr_no); 
			ResultSet rs1=ps4.executeQuery(); 
			while(rs1.next()) { 
				String status=rs1.getString(2); 
				if(count==1) { %>
			<p class="text-center text-success">PNR NUMBER : <%=pnr_no %></p>
			<div class="text-center">
			<table height="auto" width="80%" border="0" align="center">
					<tr height="5%">
						<th class="text-center">Name</th>
						<th class="text-center">Age</th>
						<th class="text-center">Gender</th>
						<th class="text-center">Status</th>
					</tr>
					<% } %>
						<tr height="5%">
							<td><%=name %></td>
							<td><%=age %></td>
							<td><%=gender %></td>
							<td><%=status %></td>
						</tr>
						<% } } %>
							<% if(count==0) { %>
								<center>
									<p>
										<font color="red" size="20%">No Record Found</font>
									</p>
								</center>
								<% } %>
			</table>
		</div>
	</div>
</body>
</html>