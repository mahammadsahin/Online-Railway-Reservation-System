<%@page import="java.sql.*"%>
<html>
<body>
<%
	String email=request.getParameter("email");
	Connection con=(Connection)application.getAttribute("con");
	PreparedStatement ps=con.prepareStatement("select email from user_info where email=?");
	ps.setString(1,email);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		out.print("already registered");
	}
	else{
		out.print("Hurrey! this one is available for you");
		%>
	    <input type="button" class="bg-primary rounded-4" style="display: inline; width: 15%; font-size: small;" 
		onclick="sendOTP(), document.getElementById('id04').style.display = 'block'" value="Send OTP">
		<%
	}%>
</body>
</html>