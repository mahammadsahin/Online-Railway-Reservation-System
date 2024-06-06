<%@page import="java.sql.*" %>
<%java.util.ArrayList al=new java.util.ArrayList();%>
<%
Connection conn=(Connection)application.getAttribute("con");
int tcode=(Integer)session.getAttribute("tcode");
String source=(String)session.getAttribute("source");
String dest=(String)session.getAttribute("dest");
String date=(String)session.getAttribute("date");
int tf=(Integer)session.getAttribute("total_fare");
String total_fare=""+tf;
String email=(String)session.getAttribute("email");
System.out.println(email);
String mobileNo=(String)session.getAttribute("mobile");
java.util.ArrayList pl=(java.util.ArrayList)session.getAttribute("passengerList");
String class_type=(String)session.getAttribute("class_type");
String pnr_no=(String)session.getAttribute("pnr_no");
String status=(String)session.getAttribute("status");
PreparedStatement ps3=conn.prepareStatement("select train_name from train_info where train_code=?");
ps3.setInt(1,tcode);
ResultSet rs=ps3.executeQuery();
rs.next();
String train_name=rs.getString(1);
 %>
 <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=3.0">
	<title>Reserve a seat</title>
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
 <style>
	@import url('http://fonts.cdnfonts.com/css/vcr-osd-mono');
body {
  font-family: 'VCR OSD Mono';
  color: #000;
  text-align:center;
  justify-content: center;
  font-size: 20px;
}
.bill{
  width: 500px;
  height: auto;
  box-shadow: 0 0 3px #aaa;
  padding: 10px 10px;
  box-sizing: border-box;
}
.flex {
  display: flex;
}
.justify-between {
  justify-content: space-between;
}
.table{
  border-collapse: collapse;
  width: 100%;
}
.table .header{
  border-top: 2px dashed #000;
  border-bottom: 2px dashed #000;
}
.table {
  text-align: left;
}
.table .total td:first-of-type {
  border-top: none;
  border-bottom: none;
}
.table .total td {
  border-top: 2px dashed #000;
  border-bottom: 2px dashed #000;
}
.table .net-amount td:first-of-type {
  border-top: none;
}
.table .net-amount td {
  border-top: 2px dashed #000;
}
.table .net-amount{
  border-bottom: 2px dashed #000;
}
@media print {
    .hidden-print,
    .hidden-print * {
        display: none !important;
    }
}
@media print {
  body {
    visibility: hidden;
  }
  #container {
    visibility: visible;
	text-align: center;
	align-items: center;
    position: absolute;
    left: 0;
    top: 0;
  }
}
</style>
</head>
<body>
<center><h2>Ticket Details</h2></center>
<div id="container">
	<div class="bill" id="bill">
	<div class="brand">
	  AMIT CHAMBIAL PVT LTD
	</div>
	<div class="address">
	  FLoor 2 Building No 34 India <br> Phone No- 0192083910
	</div>
	<div class="shop-details">
	  PAN: AAKPS9298A TIN: 09820163701
	</div>
	<div>INVOICE </div>
	<br>
	<table class="table">
		<tbody align="center">
			<tr class="header">
				<th>S.NO.</th>
				<th>Name</th>
				<th>Age</th>
				<th>Gender</th>
				<th>Seat</th>
				<th>Status</th>
			</tr>
	<%	for(int j=0; j<pl.size(); j++){
			String passengers=(String)pl.get(j);
			String pd[]=passengers.split(":");
			int berthNo=(int)(Math.random()*30);%>
		<tr>
			<td><%=j+1 %></td>
			<td><%=pd[0] %></td>
			<td><%=pd[1] %></td>
			<td><%=pd[2] %></td>
			<td>S<%=berthNo %></td>
			<td><%=status %></td>
		</tr>
	<%}%>
	</table> 
	<br>
	<table class="table">
		<tr class="header">
			<th>PNR No</th>
			<th>Train No</th>
			<th>Train Name</th>
			<th>Total Fare</th>
			<th>Date Of Journey</th>
		</tr>
		<tr>
			<td><%=pnr_no %></td>
			<td><%=tcode %></td>
			<td><%=train_name %></td>
			<td><%=total_fare %></td>
			<td><%=date %></td>
		</tr>
	</table>
	<br>
	<!-- <br>
	<table class="table">
	  <tr class="header">
		<th>
		  Particulars
		</th>
		<th>
		  Rate
		</th>
		<th>
		  Qty
		</th>
		<th>
		  Amount
		</th>
	  </tr>
	  <tr>
		<td>Head and Shoulder</td>
		<td>100</td>
		<td>2</td>
		<td>200</td>
	  </tr>
	  <tr>
		<td>Britania</td>
		<td>25</td>
		<td>2</td>
		<td>50</td>
	  </tr>
	  <tr>
		<td>Tomatoes</td>
		<td>40</td>
		<td>1</td>
		<td>40</td>
	  </tr>
	  <tr>
		<td>Chocolates</td>
		<td>5</td>
		<td>12</td>
		<td>60</td>
	  </tr>
	  <tr class="total">
		<td></td>
		<td>Total</td>
		<td>17</td>
		<td>350</td>
	  </tr>
	  <tr>
		<td></td>
		<td>CGST</td>
		<td>5%</td>
		<td>17.5</td>
	  </tr>
	  <tr>
		<td></td>
		<td>SGST</td>
		<td>5%</td>
		<td>17.5</td>
	  </tr>
	  <tr>
		<td></td>
		<td>RND-Off</td>
		<td>0</td>
		<td>17.5</td>
	  </tr>
	  <tr class="net-amount">
		<td></td>
		<td>Net Amnt</td>
		<td></td>
		<td>385</td>
	  </tr>
	</table> -->
	
	<%--
	PreparedStatement ps=con.prepareStatement("select * from train_info where source=? and destination=?");
	ps.setString(1,source); 
	ps.setString(2,dest); 
	ResultSet rs=ps.executeQuery(); %>
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
				}--%>
<%
	PreparedStatement ps1=conn.prepareStatement("select TRANSACTION_ID from TICKET_BOOKING_INFO where pnr_no=?");
	ps1.setString(1,pnr_no);
	ResultSet rs1=ps1.executeQuery();
	rs1.next();
	String pnr=rs.getString(1); 
	int TRAIN_CODE=rs.getInt(2); 
	String SOURCE=rs.getString(3);
	String DEST=rs.getString(4);
	String BOOKING_DATE=rs.getString(5);
	String TRANSACTION_ID=rs.getString(6);
	String PAID_AMOUNT=rs.getString(7);
	String EMAIL=rs.getString(8);
	String MOBILE_NO=rs.getString(9);
	%>
	Payment Method:Card<br>
	Transaction ID: <%=TRANSACTION_ID%>
	<br>Username: <%=session.getAttribute("username")%> [Biller] <br>
	Thank You ! Please visit again
  </div>
</div>
  <br>
  <button class="btn bg-primary text-white" onclick="window.print()">Print</button>
  <a href="/rail/dashboard.jsp"><button class="btn bg-primary text-white">Go to home</button></a>
  </body>
  </html>