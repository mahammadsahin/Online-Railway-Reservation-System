<%@page import="java.sql.*"%>
<%
	String pass=request.getParameter("pass");
  	String cpass=request.getParameter("cpass");
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String contact=request.getParameter("contact");
	if(pass.equals("") || cpass.equals(""))	{
		session.setAttribute("usermsg","Both Password can not be empty");
		response.sendRedirect("change_password_form.jsp");
	}
	else if(!pass.equals(cpass)){
		session.setAttribute("usermsg","Both Password must be same");
		response.sendRedirect("change_password_form.jsp");
	}
	else{
		Connection con=(Connection)application.getAttribute("con");
		PreparedStatement ps=null;
		ps = con.prepareStatement("UPDATE USER_INFO SET password = ? WHERE email = ? AND name = ? AND contact = ?");
		ps.setString(1, pass);
		ps.setString(2, email);
		ps.setString(3, name);
		ps.setString(4, contact);
		int i=ps.executeUpdate(); // execute the update statement
		if(i<=0){
			out.println("Something Went wrong.");
		}
		else{
			session.setAttribute("usermsg","Password Updated Successfully");
			response.sendRedirect("change_password_form.jsp");
		}
	}
%>
