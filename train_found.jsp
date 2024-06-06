<%@page import="java.sql.*" %>
<%@page errorPage="err.jsp" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=3.0">
		<title>Train Found</title>
		<link rel="shortcut icon" href="icon/favicon.svg" type="image/svg">
		<!-- font awsame -->
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
				integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
				crossorigin="anonymous" referrerpolicy="no-referrer">
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"
				id="bootstrap-css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
				crossorigin="anonymous">
		<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"
				id="bootstrap-css">
			<!-- Scripts -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
				crossorigin="anonymous" defer></script>
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
			nav {
				box-sizing: border-box;
				font-family: "Courier Prime", monospace;
				font-size: 2.2rem;
			}
			table {
				font-size: 1.6rem;
			}
		</style>
	</head>
	<body>
		<%String email=(String)session.getAttribute("email"); 
		String username=(String)session.getAttribute("username"); 
		if(email!=null){%>
			<jsp:include page="header_login.jsp" />
		<%} else{%>
			<jsp:include page="header_without_login.jsp" />
		<%}%>
		<% Connection con=(Connection)application.getAttribute("con"); 
		String source=request.getParameter("source").toLowerCase(); 
		String dest=request.getParameter("dest").toLowerCase(); 
		String date=request.getParameter("date");
		String class1=request.getParameter("class"); 
		PreparedStatement ps=con.prepareStatement("select * from train_info where source=? and destination=?");
		ps.setString(1,source); 
		ps.setString(2,dest); 
		ResultSet rs=ps.executeQuery(); %>
		<table class="table table-bordered" width="100%">
			<tr align="center">
				<td colspan=15 height="10%">
					<h2>Train Information</h2>
				</td>
			</tr>
			<tr>
				<th>Train Name</th>
				<th>Train Code</th>
				<th>Source</th>
				<th>Destination</th>
				<th>Distance</th>
				<th>Travel time</th>
				<th>Departure Time</th>
				<th>Arrival Time</th>
				<th>Via</th>
				<th width="17%">Running Days</th>
				<th>Sleeper Class</th>
				<th>FirstAC Class</th>
				<th>SecondAC Class</th>
			</tr>
			<% while(rs.next()) { 
				int tcode=rs.getInt(1); 
				String tname=rs.getString(2); 
				String tsource=rs.getString(3); 
				String tdest=rs.getString(4); 
				String tdistance=rs.getString(5); 
				String ttravel=rs.getString(6); 
				String tdeparture=rs.getString(7); 
				String tarrival=rs.getString(8);
				ps=con.prepareStatement("select * from train_via where train_code=?");
				ps.setInt(1,tcode); 
				ResultSet rs2=ps.executeQuery();
				PreparedStatement ps2=con.prepareStatement("select * from train_days where train_code=?");
				ps2.setInt(1,tcode); 
				ResultSet rs3=ps2.executeQuery(); 
				PreparedStatement ps3=con.prepareStatement("select * from train_coach where train_code=?");
				ps3.setInt(1,tcode); 
				ResultSet rs4=ps3.executeQuery(); %>
			<tr>
				<td style="padding: 10px"><%=tname %></td>
				<td><%=tcode %></td>
				<td><%=tsource %></td>
				<td><%=tdest %></td>
				<td><%=tdistance %></td>
				<td><%=ttravel %></td>
				<td><%=tdeparture %></td>
				<td><%=tarrival %></td>
				<td width="auto">
					<%  while(rs2.next()) { 
						String via=rs2.getString(2); 
						System.out.println(via);%>
					<label><%=via%></label>
					<% } %>
				</td>
				<td>
					<% while(rs3.next()) { 
						String days=rs3.getString(2);
						System.out.println(days); %>
					<label><%=days%></label>
					<% } %>
					<% while(rs4.next()) { 
						int sleeper_class=rs4.getInt(2); 
						int firstac_class=rs4.getInt(3); 
						int secondac_class=rs4.getInt(4); %>
					<td><%=sleeper_class %></td>
					<td><%=firstac_class%></td>
					<td><%=secondac_class%></td>
					<% } %>
				</td>
			</tr>
		<%  } %>
		</table>
</body>

</html>