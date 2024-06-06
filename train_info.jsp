<%@page import="java.sql.*" %>
<%@page errorPage="err.jsp" %>
<% String username=(String)session.getAttribute("username"); %>
<body>
	   
	  <h1 class="m-auto text-center p-5"> Train Information </h1>
<%
	Connection con=(Connection)application.getAttribute("con");
	PreparedStatement ps=con.prepareStatement("select * from train_info");
	ResultSet rs=ps.executeQuery();
 %>



<table id="table" height="auto" width="100%" class="table table-striped-columns">
		<tr>
			<th>Train Name</th>
			<th>Train Code</th>
			<th>Source</th>
			<th>Destination</th>
			<th>Distance(Km.)</th>
			<th>Travel time</th>
			<th>Departure Time</th>
			<th>Arrival Time</th>
			<th>Via</th>
			<th>Running Days</th>
			<th>Sleeper Class</th>
			<th>FirstAC Class</th>
			<th>SecondAC Class</th>
		</tr>
<%
	while(rs.next()){
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
		ResultSet rs4=ps3.executeQuery();
 %>
	<tr>
		<td><%=tname %></td>
		<td><%=tcode %></td>
		<td><%=tsource %></td>
		<td><%=tdest %></td>
		<td><%=tdistance %></td>
		<td><%=ttravel %></td>
		<td><%=tdeparture %></td>
		<td><%=tarrival %></td>
		<td>
<%
		while(rs2.next()){
			String via=rs2.getString(2);
			System.out.println(via);
 %> 
 			<%=via%>
 <%}%>
		</td>
		<td>
<%
		while(rs3.next()){
			String days=rs3.getString(2);
			System.out.println(days);
 %> 
 			<%=days%>
 <%}%>
  <%
  	while(rs4.next()){
  		int sleeper_class=rs4.getInt(2);
  		int firstac_class=rs4.getInt(3);
  		int secondac_class=rs4.getInt(4);
  	%>
  		<td><%=sleeper_class %></td>
		<td><%=firstac_class%></td>
		<td><%=secondac_class%></td>
  <%}%>
		</td>
		<td>
			<a href="delete_train.jsp?tcode=<%=tcode%>">
				<button type="button" class="w-100 bg-primary fs-3 m-0 p-1">Delete</button></a>
		</td>
		<td>
			<a href="update_train_form.jsp?tcode=<%=tcode%>">
				<button type="button" class="w-100 bg-primary fs-3 m-0 p-1">Update</button>
			</a>
		</td>
	</tr>
 <%}%>
</table>
</body>
</html>