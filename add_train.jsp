<jsp:useBean id="t1" class="train.AddTrain"/>
<jsp:setProperty name="t1" property="*"/>
<div style="text-align:center;margin-top:25%">
    <font color="green">
    <script type="text/javascript">
    function Redirect(){
        window.location="dashboard.jsp";
    }
    document.write("<h2><%=t1.validate() %></h2>");
    setTimeout('Redirect()', 2000);
    </script>
    </font>
</div>
<script>