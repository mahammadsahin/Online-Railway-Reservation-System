<%@page import="java.sql.*" %>
<%@page errorPage="err.jsp" %>
<%!ResultSet rs;%>
<%
	Connection con=(Connection)application.getAttribute("con");
	int tcode=Integer.parseInt(request.getParameter("tcode"));
	String class_type=request.getParameter("class_type");
	
	session.setAttribute("class_type",class_type);
	
		PreparedStatement ps=con.prepareStatement("select * from train_fare where train_code=? and class=?");
		ps.setInt(1,tcode);
		ps.setString(2,class_type);
		rs=ps.executeQuery();	
 %>
<table class="table table-bordered mt-5 p-0" height="auto" width="100%" border="1" align="center">
<tr>
			<th>Train Code</th>
			<th>Total Seats</th>
			<th>Available Seats</th>
			<th>Base Fare</th>
			<th>Internet Charge</th>
			<th>Net Fare</th>
		</tr>
<%
	if(rs.next()){
		int base_fare=rs.getInt(3);
		int internet_charge=rs.getInt(4);
		int total_seats=rs.getInt(5);
		int available_seats=rs.getInt(6);
		int net_fare=base_fare+internet_charge;
 %>
	<tr>
		<td><%=tcode %></td>
		<td><%=total_seats %></td>
		<td><%=available_seats %></td>
		<td><%=base_fare %> Rs.</td>
		<td><%=internet_charge %> Rs.</td>
		<td><%=net_fare %> Rs.</td>
		<td>
			<form action="passenger_details.jsp">
				<input type="hidden" name="tcode" value="<%=tcode %>"/>
				<input type="hidden" name="net_fare" value="<%=net_fare %>"/>
				<button type="submit" value="Book Ticket" class="w-75 bg-primary fs-3 m-0 p-1">Book Ticket!</button>
			</form>
		</td>
	</tr>
 <%}%>
</table>
<br>
<br>