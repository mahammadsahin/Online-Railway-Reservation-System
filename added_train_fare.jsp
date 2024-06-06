<%@page import="java.sql.*" %>
<%  int tcode=Integer.parseInt(request.getParameter("tcode"));
	String coach=(request.getParameter("coach"));
	String base_fare=(request.getParameter("base_fare"));
	String internet_charge=(request.getParameter("internet_charge"));
    Connection con=(Connection)application.getAttribute("con");
    PreparedStatement ps1=con.prepareStatement("select * from TRAIN_COACH where train_code=?");
    ps1.setInt(1,tcode);
    ResultSet rs=ps1.executeQuery();
    int total_seats=0;
    if(rs.next()){
    	if(coach.equals("Sleeper")){
    		total_seats=rs.getInt("SLEEPER_CLASS");
    		coach="sleeper";
    	}
    	else if(coach.equals("FirstAC")){
    		total_seats=rs.getInt("FIRSTAC_CLASS");
    		coach="1ac";
    	}
    	else if(coach.equals("SecondAC")){
    		total_seats=rs.getInt("SECONDAC_CLASS");
    		coach="2ac";
    	}
		PreparedStatement ps=con.prepareStatement("insert into TRAIN_FARE values(?,?,?,?,?,?)");
		ps.setInt(1,tcode);
		ps.setString(2,coach);
		ps.setString(3,base_fare);
		ps.setString(4,internet_charge);
		ps.setInt(5,total_seats);
		ps.setInt(6,total_seats);
		int i=ps.executeUpdate();
		response.sendRedirect("dashboard.jsp");
	}
%>