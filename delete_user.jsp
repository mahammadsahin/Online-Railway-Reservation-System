<%@page import="java.sql.*" %>
<% String emaill=request.getParameter("emaill");
	Connection con=(Connection)application.getAttribute("con");
	PreparedStatement ps;
	ps=con.prepareStatement("delete from user_info where email="+email);
	int i=ps.executeUpdate();
	response.sendRedirect("passenger_list.jsp");
%>
