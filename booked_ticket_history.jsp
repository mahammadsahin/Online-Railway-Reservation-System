<%@page import="java.sql.*" %>
<div class="container w-75 table border-0">
<%
	String email=(String)session.getAttribute("email");
	System.out.println(email);
	Connection conn=(Connection)application.getAttribute("con");
	PreparedStatement ps3=conn.prepareStatement("select o.*,p.status from ticket_booking_info o, pnr_status p where o.email=? and o.pnr_no=p.pnr_number");
	ps3.setString(1,email);
	ResultSet rs=ps3.executeQuery();
%>
	<% int count=0;
	while(rs.next()){
		count++;
		if(count==1){%>
			<h1 class="text-success text-center m-5">Your Ticket History/Cancel Your Ticket</h1>
<table>
	<tr>
		<th>PNR No</th>
		<th>Train No</th>
		<th>Source</th>
		<th>Destination</th>
		<th>Booking Date</th>
		<th>Transaction ID</th>
		<th>Paid Amount</th>
		<th>Email</th>
		<th>Mobile No</th>
	</tr>
<%}
int pnr_no=rs.getInt(1);
int tcode=rs.getInt(2);
String source=rs.getString(3);
String destination=rs.getString(4);
String booking_date=rs.getString(5);
long transaction_id=rs.getLong(6);
int paid_amount=rs.getInt(7);
String user_email=rs.getString(8);
long mobile_no=rs.getLong(9);
String status=rs.getString(10);
%>
	<tr class="text-center">
		<td><%=pnr_no%></td>
		<td><%=tcode %></td>
		<td><%=source %></td>
		<td><%=destination %></td>
		<td><%=booking_date %></td>
		<td><%=transaction_id %></td>
		<td><%=paid_amount %></td>
		<td><%=user_email %></td>
		<td><%=mobile_no %></td>
		<td>
			<% if(status.equalsIgnoreCase("Cancelled")){
				out.println(status);
			}else{%>
			<a href="cancel_ticket.jsp?pnr_no=<%=pnr_no%>">Cancel</a>
			<%}%>
		</td>
	</tr>
	<%}
	 if(count==0){%>
		<h1 class="text-center m-5">Reserve Your Seat</h1>
	<form action="reservation1.jsp" class="container bg-info-subtle rounded-5">
	<%PreparedStatement ps=conn.prepareStatement("select source from train_info"); 
	ResultSet rs5=ps.executeQuery();%>
	<div class="wrapper">
		<div class="search-container m-5">
			<select name="source" style="-webkit-appearance: none;" class="bg-white w-75 rounded-3 m-3 text-center search" required>
				<option value="" selected disabled>From Where?</option>
				<% java.util.ArrayList al=new java.util.ArrayList();
					while(rs5.next()) { 
						String source=rs5.getString(1); 
						int index=al.indexOf(source); 
						if(index==-1) { %>
							<option> <%=source%> </option>
						<% } al.add(source); 
					} %>
			</select>
			<select name="dest" style="-webkit-appearance: none;" class="w-75 rounded-3 m-3 text-center search bg-white">
				<option value="" selected disabled>To Where?</option>
				<% PreparedStatement ps1=conn.prepareStatement("select destination from train_info"); 
				ResultSet rs1=ps1.executeQuery(); 
				al=new java.util.ArrayList();
				while(rs1.next()) { 
					String destination=rs1.getString(1); 
					int index=al.indexOf(destination); 
					if(index==-1) { %>
						<option><%=destination%></option>
					<% } 
				al.add(destination); } %>
			</select>
			<input id="inputField" type="text" placeholder="Select Date" class="rounded-3 search mr-5" name="date" style="width: 158px;">
			<button type="submit" onclick="return checkDate()" value="submit" class="button ml-3 p-3" size="30">Search</button>
		</div>
	</div>
	</form>
	<%}%>
</table> 
</div>