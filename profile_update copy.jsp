<%@page import="java.sql.*"%>
<%! int i=0;%>
<%
	Connection con=(Connection)application.getAttribute("con");
	PreparedStatement ps=null;
	ps=con.prepareStatement("select * from user_info where email=?");
	ps.setString(1,email);
	ResultSet rs=ps.executeQuery();
	rs.next();
	String name=rs.getString(1);
	String age=rs.getString(5); 
    //if(age==null)age="";
	String pname=rs.getString(4);
	//String filePath="../profiles/"+pname;
%>
	<table frame="box" align="center">
		<center>
			<% String umsg=(String)session.getAttribute("usermsg");
			if(umsg!=null){
			out.println("<center><font color='red'><b>"+umsg+"</b></font></center>");
			}
			i++;
			if(i>=2){
				i=0;
				session.setAttribute("usermsg","");
			}
			%>
		</center>
		<form action="update_profile.jsp">
			<tr>
				<td colspan="3">Update Profile</td></tr=>
		<tr>
			<td>Name</td>
			<td>
				<input type="text" name="name" value="<%=name%>">
			</td>
			<%--<td rowspan="3"><img src="<%=filePath%>" width="150" height="150"/></td>--%>
		</tr>
		<tr>
			<td>email : </td>
			<td><%=email%></td>
		</tr>
		<tr>
			<td>Age</td>
			<td>
				<input type="text" name="age" value="<%=age%>">
			</td>
		</tr>
		<tr>
			<td colspan="3" align="center">
				<input type="submit" value="Update">
			</td>
		</tr>
	</form>
</table>