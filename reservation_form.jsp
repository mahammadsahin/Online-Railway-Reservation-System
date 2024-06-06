<%@page import="java.sql.*" %>
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
.weekDay{
	font-size: 12px;
}
</style>
<link rel="stylesheet" type="text/css" media="all" href="jsdatepick-calendar\jsDatePick_ltr.min.css" />
<link rel="stylesheet" type="text/css" media="all" href="jsdatepick-calendar\jsDatePick_ltr.css" />
<script type="text/javascript" src="jsdatepick-calendar\jsDatePick.min.1.3.js"></script>
<script language="javascript" type="text/javascript" src="jsdatepick-calendar\datetimepicker.js"></script>
<script type="text/javascript">
	window.onload = function () {
		new JsDatePick({
			useMode: 2,
			target: "inputField",
			dateFormat: "%d-%M-%Y"
			/*selectedDate:{				This is an example of what the full configuration offers.
				day:5,						For full documentation about these settings please see the full version of the code.
				month:9,
				year:2006
			},
			yearsRange:[1978,2020],
			limitToToday:false,
			cellColorScheme:"beige",
			dateFormat:"%m-%d-%Y",
			imgPath:"img/",
			weekStartDay:1*/
		});
	};
	function checkDate() {
		var d1 = document.getElementById("inputField");
		if (d1.value == "") {
			alert("Please select today's date or within next 120 days to reserve your seat");
			return false;
		} else {
			var sdate = d1.value.substring(0, 2);
			var smonth = d1.value.substring(3, 6);
			var syear = d1.value.substring(7, 11);
			//alert(sdate+" "+smonth+" "+syear);
			var m1 = "";
			if (smonth == "JAN") m1 = 0; 
			else if (smonth == "FEB") m1 = 1; 
			else if (smonth == "MAR") m1 = 2; 
			else if (smonth == "APR") m1 = 3; 
			else if (smonth == "MAY") m1 = 4; 
			else if (smonth == "JUN") m1 = 5; 
			else if (smonth == "JUL") m1 = 6; 
			else if (smonth == "AUG") m1 = 7; 
			else if (smonth == "SEP") m1 = 8; 
			else if (smonth == "OCT") m1 = 9; 
			else if (smonth == "NOV") m1 = 10; 
			else if (smonth == "DEC") m1 = 11;
			var date1 = new Date();
			var cdate = date1.getDate()
			var cmonth = date1.getMonth();
			var cyear = date1.getFullYear();
			if (syear < cyear) {
				alert("Please select today's date or within next 120 days to reserve your seat");
				return false;
			} else if (syear >= cyear + 2) {
				alert("Please select today's date or within next 120 days to reserve your seat");
				return false;
			} else if (syear == cyear && m1 < cmonth) {
				alert("Please select today's date or within next 120 days to reserve your seat");
				return false;
			} else if (cmonth < 8 && syear == cyear + 1){           // less than 8 means less than sep because java script treat jan as 0 and dec as 11
				alert("Please select today's date or within next 120 days to reserve your seat");
				return false;
			} else if (cmonth == 8 && cdate == 1 && syear == cyear + 1){           // less than 8 means less than sep because java script treat jan as 0 and dec as 11
				alert("Please select today's date or within next 120 days to reserve your seat");
				return false;
			} else if (cmonth >= 8 && cdate >= 1 && syear == cyear + 1) {
				alert("You cant select that year.");
				return false;
			} else if (m1 == cmonth + 4 && sdate > cdate) {
				alert("Please select today's date or within next 120 days to reserve your seat");
				return false;
			} else if (m1 > cmonth + 4) {
				alert("Please select today's date or within next 120 days to reserve your seat");
				return false;
			} else if (m1 == cmonth && sdate < cdate) {
				alert("Please select today's date or within next 120 days to reserve your seat");
				return false;
			}
		}
		return true;
	}	</script>
</head>

<body>
   <%String email=(String)session.getAttribute("email"); 
	if(email!=null){%>
		<jsp:include page="header_login.jsp"/>
	<%} else{
		response.sendRedirect("/rail/"); 
	}%>
	<h1 class="text-center m-5">Reserve Your Seat</h1>
	<form action="reservation1.jsp" class="container bg-info-subtle rounded-5">
	<% Connection conn=(Connection)application.getAttribute("con"); 
	PreparedStatement ps=conn.prepareStatement("select source from train_info"); 
	ResultSet rs=ps.executeQuery();%>
	
	<div class="wrapper">
		<div class="search-container m-5">
			<select name="source" style="-webkit-appearance: none;" class="bg-white w-75 rounded-3 m-3 text-center search" required>
				<option value="" selected disabled>From Where?</option>
				<% java.util.ArrayList al=new java.util.ArrayList();
					while(rs.next()) { 
						String source=rs.getString(1); 
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
			<!-- <input id="inputField" type="text" size="20" readonly="readonly" name="date"> -->
			<input id="inputField" type="text" placeholder="Select Date" class="rounded-3 search mr-5" name="date" style="width: 158px;">
			<!-- <input type="submit" onclick="return checkDate()" value="submit" style="font-family: sans-serif; font-size: 20px;" size="30"> -->
			<button type="submit" onclick="return checkDate()" value="submit" class="button ml-3 p-3" size="30">Search</button>
		</div>
	</div>
	</form>
</body>
</html>