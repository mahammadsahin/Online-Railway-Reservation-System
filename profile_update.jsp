<%@page import="java.sql.*" %>
<%@page errorPage="err.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=3.0">
  <title>Update Profile</title>
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
  <script type="text/javascript" src="train_validation.js"></script>
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
	<%} else{
		response.sendRedirect("/rail/"); 
	}%>
<%
	Connection con=(Connection)application.getAttribute("con");
	PreparedStatement ps=con.prepareStatement("select * from user_info where email=?");
	ResultSet rs=ps.executeQuery();
 %>
 <h1 class="text-center m-5">Update Train Info</h1>
<div id="addnew" class=" container text-center mb-5 pb-5">
<table class="w-75 m-auto table border-white">
<form name="form1" action="update.jsp" method="post">
		<%
	if(rs.next()){
		String name=rs.getString(1);
		String contact=rs.getString(5);
		ps=con.prepareStatement("select * from train_via where train_code=?");
		
		

		  
		ResultSet rs2=ps.executeQuery();
		PreparedStatement ps2=con.prepareStatement("select * from train_days where train_code=?");
		ps2.setInt(1,tcode);
		ResultSet rs3=ps2.executeQuery();
		PreparedStatement ps3=con.prepareStatement("select * from train_coach where train_code=?");
		ps3.setInt(1,tcode);
		ResultSet rs4=ps3.executeQuery();
		int sleeper_class=0;
		int firstac_class=0;
		int secondac_class=0;
		if(rs4.next()){
			sleeper_class=rs4.getInt(2);
		 	firstac_class=rs4.getInt(3);
		 	secondac_class=rs4.getInt(4);
		}
 %>	
		<tr>
			<td class="align-middle"> <label for="tname">Train Name :</label></td>
			<td><input type="text" value="<%=tname%>" class="w-75 rounded-3 text-center" name="tname" id="tname" maxlength="auto"></td>
			<!-- <td valign="middle" align="left">&nbsp; Train Name :<br></td><td align="left" valign="middle" height="8%" rowspan="1"> 
				&nbsp; 
				<input type="text" name="tname" value="<%=tname%>" maxlength="auto" >
			</td> -->
		</tr>
		<tr>
			<td class="align-middle"><label for="tcode">Train Code :</label></td>
			<td><input type="text" class="w-75 rounded-3 text-center" name="tcode" value="<%=tcode %>" readonly>
			<!-- <td valign="middle" align="left" height="8%">&nbsp; Train Code &nbsp; :</td><td align="left" valign="middle">&nbsp; 
				<input type="text" name="tcode" value="<%=tcode %>" readonly="readonly"/> -->
			</td>
		</tr>
		
		<tr>
			<!-- <td valign="middle" align="left" height="8%">&nbsp;Source :</td><td align="left" valign="middle">&nbsp; 
				<input type="text" name="source" value="<%=tsource %>" /> </td>-->
			<td class="align-middle"><label for="source">Source :</label></td>
			<td><input type="text" class="w-75 rounded-3 text-center" name="source" value="<%=tsource %>"></td>
		</tr>
		<tr>
			<td class="align-middle"><label for="dest">Destination :</label></td>
			<td><input type="text" class="w-75 rounded-3 text-center" name="dest" value="<%=tdest%>"></td>
		</tr>
		<tr>
			<td class="align-middle"><label for="tname">Running Days :</label></td>
			<!-- <td valign="middle" align="left" height="8%">&nbsp; Running Days : <br></td><td align="left" valign="middle" height="8%">&nbsp;  -->
			<td>
				<%
				String train_running_days[]=new String[7];
		while(rs3.next()){
			String days=rs3.getString(2);
			if(days.equals("Sun"))
				train_running_days[0]="Sun";
			else if(days.equals("Mon"))
				train_running_days[1]="Mon";
			else if(days.equals("Tue"))
				train_running_days[2]="Tue";
			else if(days.equals("Wed"))
				train_running_days[3]="Wed";
			else if(days.equals("Thu"))
				train_running_days[4]="Thu";
			else if(days.equals("Fri"))
				train_running_days[5]="Fri";
			else if(days.equals("Sat"))
				train_running_days[6]="Sat";
		}%>
			<table class="m-auto border-0">
				<tr>
				<td class="align-middle">Sunday</td>
			<td>
			<% if(train_running_days[0]!=null){%>
				<input  checked type="checkbox" value="Sun" name="sunday"> 
			<% }else {%>
			    <input type="checkbox" value="Sun" name="sunday"> 
			    <%} %>
			</td>
		</tr>
		<tr>
			<td class="align-middle">Monday</td>
			<td>
			<% if(train_running_days[1]!=null){%>
				<input checked type="checkbox" value="Mon" name="monday">
				<%} else {%>
				<input type="checkbox" value="Mon" name="monday">
				 <%} %>
				</td>
				</tr>
				<tr>
					<td class="align-middle">Tuesday</td>
			 <td>
			<% if(train_running_days[2]!=null){%>
				<input checked type="checkbox" value="Tue" name="tuesday">
				<%} else {%>
				<input type="checkbox" value="Tue" name="tuesday">
				 <%} %>
				</td>
				</tr>
				<tr>
			<td class="align-middle">Wednesday </td>
			<td>
			<% if(train_running_days[3]!=null){%>
				<input checked type="checkbox" value="Wed" name="wednesday">
				<%} else {%>
				<input type="checkbox" value="Wed" name="wednesday">
				 <%} %>
				</td>
				</tr>
				<tr>
			<td class="align-middle">Thursday </td>
			<td>
			<% if(train_running_days[4]!=null){%>
				<input checked type="checkbox" value="Thu" name="thursday">
				<%} else {%>
				<input type="checkbox" value="Thu" name="thursday">
				 <%} %>
				</td>
				</tr>
				<tr>
			<td class="align-middle">Friday </td>
			<td>
			<% if(train_running_days[5]!=null){%>
				<input checked type="checkbox" value="Fri" name="friday">
				<%} else {%>
				<input type="checkbox" value="Fri" name="friday">
				 <%} %>
				</td>
				</tr>
				<tr>
					<td>Saturday</td>
			<td class="align-middle">
			<% if(train_running_days[6]!=null){%>
				<input checked type="checkbox" value="Sat" name="saturday">
				<%} else {%>
				<input type="checkbox" value="Sat" name="saturday">
				 <%} %>
				</td>
				</tr>
				</table>
			</td>

		</tr>
		<%
		String via="";
		while(rs2.next()){
			via=via+","+rs2.getString(2);
 		}
 		if(!via.equals(""))
 			via=via.substring(1,via.length());
  		%>
		<tr>
			<td class="align-middle"><label for="via">Via :</label></td>
			<td><input type="text" class="w-75 rounded-3 text-center" name="via" value="<%=via%>"></td>
		</tr>
		<tr>
			<td class="align-middle"><label for="distance">Distance (Km) :</label></td>
			<td><input type="text" class="w-75 rounded-3 text-center" name="distance" value="<%=tdistance%>" maxlength="auto"></td>
		</tr>
		<tr>
			<td class="align-middle"><label for="travel_time">Travel Time (Hr) :</label></td>
			<td><input type="text" class="w-75 rounded-3 text-center" name="travel_time" value="<%=ttravel_time%>" maxlength="auto"></td>
		</tr>
		<tr>
			<td class="align-middle"><label for="departure_time">Departure Time :</label></td>
			<td><input type="text" class="w-75 rounded-3 text-center" name="departure_time" value="<%=tdeparture_time%>" maxlength="auto"></td>
			</tr>
			<tr>
				<td class="align-middle"><label for="arrival_time">Arrival Time :</label></td>
			<td><input type="text" class="w-75 rounded-3 text-center" name="arrival_time" value="<%=tarrival_time%>" maxlength="auto"></td>
			</tr>
			<tr>
				<td class="align-middle"><label for="sleeper_class">Sleeper Seats :</label></td>
				<td><input type="text" class="w-75 rounded-3 text-center" name="sleeper_class" value="<%=sleeper_class%>" maxlength="auto"></td>
		</tr>
		<tr>
			<td class="align-middle"><label for="firstAC_class">First AC Seats :</label></td>
			<td><input type="text" class="w-75 rounded-3 text-center"name="firstac_class" value="<%=firstac_class%>" maxlength="auto"></td>
		</tr>
		<tr>
			<td class="align-middle"><label for="secondAC_class">Second AC Seats :</label></td>
			<td><input type="text" class="w-75 rounded-3 text-center" name="secondac_class" value="<%=secondac_class%>" maxlength="auto"></td>
		</tr>
		<tr>
			<td colspan=2><button type="submit" value="update!" class="w-25 button ml-3 p-3">Update!</button></td>
		</td>
	</tr>
	<%} %>
	</form>
</table>
</div>
</body>
</html>