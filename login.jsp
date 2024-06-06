<jsp:useBean id="t2" class="user.UserLogin"/>
<jsp:setProperty name="t2" property="*"/>
<% String valid=t2.validate();
	if(!valid.equals("invalid")){
			
		String st[]=valid.split(" ");
		System.out.println(valid);
		System.out.println(st[0]+" "+st[1]);
			session.setAttribute("type",st[0]);
			session.setAttribute("email",st[1]);
			session.setAttribute("username",st[2]);
 %>
<jsp:include page="dashboard.jsp"/>
 <%	}
 	else {
		out.println("<center><font color='red'><br><br><br><br><br><br><br><br><br><br><br><br><br><br><h2>Wrong Email Id or Password...try again.</h2></font></center>");
%>
	<script>
		function Redirect(){
    		window.location="index.jsp";
		}
		setTimeout('Redirect()', 3000);
	</script>
<%}%>