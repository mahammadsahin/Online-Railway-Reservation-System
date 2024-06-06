<%@page import="java.sql.*" %>
<% int tcode=Integer.parseInt(request.getParameter("tcode"));
    Connection conn=(Connection)application.getAttribute("con");
	PreparedStatement ps=conn.prepareStatement("delete from train_info where train_code="+tcode);
	int i=ps.executeUpdate();
	response.sendRedirect("dashboard.jsp");
%>
