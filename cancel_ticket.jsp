<%@page import="java.sql.*" %>
<% int pnr_no=Integer.parseInt(request.getParameter("pnr_no"));
    Connection con=(Connection)application.getAttribute("con");
	//PreparedStatement ps=con.prepareStatement("delete  from ticket_booking_info where pnr_no="+pnr_no);
	PreparedStatement ps=con.prepareStatement("update pnr_status set status='Cancelled' where pnr_number="+pnr_no);
	int i=ps.executeUpdate();
	response.sendRedirect("dashboard.jsp");
%>
