<%@page import="java.sql.*"%>
<%
	String pass=request.getParameter("pass");
  	String cpass=request.getParameter("cpass");
	String email=request.getParameter("email");
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
		ps=con.prepareStatement("update USER_INFO set password=? where email=?");

		ps.setString(1,pass);
		ps.setString(2,email);
		int i=ps.executeUpdate();
		if(i<=0){
			out.println("Something Went wrong.");
		}
		else{
			session.setAttribute("usermsg","Password Updated Successfully");
			response.sendRedirect("change_password_form.jsp");
		}
	}
%>
