<%java.util.ArrayList al=new java.util.ArrayList();%>
<%
	String passenger1=request.getParameter("passenger1");
	String passenger2=request.getParameter("passenger2");
	String passenger3=request.getParameter("passenger3");
	String passenger4=request.getParameter("passenger4");
	String passenger5=request.getParameter("passenger5");
	String passenger6=request.getParameter("passenger6");
	String mobileNo=request.getParameter("mobile");
	int net_fare=(Integer)session.getAttribute("net_fare");	
	int total_fare=0;
 %>
 <!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=3.0">
  <title>Payment Details</title>
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
  <%String email=(String)session.getAttribute("email"); 
		String username=(String)session.getAttribute("username");
		if(email!=null){%>
			<jsp:include page="header_login.jsp"/>
		<%} else{
			response.sendRedirect("/rail/"); 
		}%>

		<h1 class="text-center m-5">Payment Details</h1>
		<table class="text-center m-auto" height="auto" width="60%" style="border-collapse: collapse;">
		<form name="form1" action="payment.jsp" method="post">
			<tbody align="center">
			<tr>
				<th class="text-center">S.NO.</th>
				<th class="text-center">Name</th>
				<th class="text-center">Age</th>
				<th class="text-center">Gender</th>
				<th class="text-center">Fare</th>
			</tr>
			<%if(!passenger1.equals("")){ 
				total_fare=total_fare+net_fare; 
				al.add(passenger1+":"+request.getParameter("p1age")+":"+request.getParameter("p1gender"));%>
			<tr>
				<td>1</td>
				<td><%=passenger1 %></td>
				<td><%=request.getParameter("p1age")%></td>
				<td><%=request.getParameter("p1gender")%></td>
				<td><%=net_fare %></td>
			</tr>
		<%}
		if(!passenger2.equals("")){ 
			total_fare=total_fare+net_fare;
			al.add(passenger2+":"+request.getParameter("p2age")+":"+request.getParameter("p2gender"));%>
		<tr>
			<td>2</td>
			<td><%=passenger2 %></td>
			<td><%=request.getParameter("p2age")%></td>
			<td><%=request.getParameter("p2gender")%></td>
			<td><%=net_fare %></td>
		</tr>
		<%}if(!passenger3.equals("")){ 
			total_fare=total_fare+net_fare;
			al.add(passenger3+":"+request.getParameter("p3age")+":"+request.getParameter("p3gender"));%>
		<tr>
			<td>3</td>
			<td><%=passenger3 %></td>
			<td><%=request.getParameter("p3age")%></td>
			<td><%=request.getParameter("p3gender")%></td>
			<td><%=net_fare %></td>
		</tr>
		<%}if(!passenger4.equals("")){
			total_fare=total_fare+net_fare; 
			al.add(passenger4+":"+request.getParameter("p4age")+":"+request.getParameter("p4gender"));%>
		<tr>
			<td>4</td>
			<td><%=passenger4 %></td>
			<td><%=request.getParameter("p4age")%></td>
			<td><%=request.getParameter("p4gender")%></td>
			<td><%=net_fare %></td>
		</tr>
		<%}if(!passenger5.equals("")){
			total_fare=total_fare+net_fare; 
			al.add(passenger5+":"+request.getParameter("p5age")+":"+request.getParameter("p5gender"));%>
		<tr>
			<td>5</td>
			<td><%=passenger5 %></td>
			<td><%=request.getParameter("p5age")%></td>
			<td><%=request.getParameter("p5agegender")%></td>
			<td><%=net_fare %></td>
		</tr>
		<%}if(!passenger6.equals("")){
			total_fare=total_fare+net_fare; 
			al.add(passenger6+":"+request.getParameter("p6age")+":"+request.getParameter("p6gender"));%>
		<tr>
			<td>6</td>
			<td><%=passenger6 %></td>
			<td><%=request.getParameter("p6age")%></td>
			<td><%=request.getParameter("p6gender")%></td>
			<td><%=net_fare %></td>
		</tr>
		<%} %>
		
		<tr height="80px">
			<td align="justify" colspan="2"></td>
			<th colspan="2" class="text-danger text-center">Total Fare : </th>
			<td class="text-danger"><%=total_fare%></td>
		</tr>
	</tbody>
	
	<table align="center">
		<tr>
			<td>
				<!-- <input type="submit" name="submit" value="Proceed to Payment"> -->
				<div class="text-center m-auto mt-5 w-100">
					<button type="submit" name="submit" value="Proceed to Payment" class="m-auto w-100 button p-3" size="30">Proceed to Payment</button>
				</div>
			</td>
		</tr>
	</table>
	<!-- <tfoot>
	>
</tfoot> -->

	</form>
</table>
<%session.setAttribute("total_fare",total_fare); 
	session.setAttribute("passengerList",al);
	session.setAttribute("mobile",mobileNo);
%>
</div>
</body>
</html>