<jsp:useBean id="t2" class="uptrain.UpdateTrain"/>
<jsp:setProperty name="t2" property="*"/>

<div style="text-align:center;margin-top:25%">
<font color="green">
<script type="text/javascript">
function Redirect(){
    window.location="dashboard.jsp";
}
document.write("<h2><%=t2.validate() %></h2><br><Br>");
document.write("<h3>Redirecting you to Dashboard page....</h3>");
setTimeout('Redirect()', 3000);
</script>
</font>
</div>