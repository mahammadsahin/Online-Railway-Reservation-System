<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=3.0">
  <title>Change Password</title>
  <link rel="shortcut icon" href="icon/favicon.svg" type="image/svg">
    <!-- font awsame -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
      integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
      crossorigin="anonymous" referrerpolicy="no-referrer">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <!-- Scripts -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"
      defer></script>
  <script src="js/Index.js" defer></script>
  <script type="text/javascript" src="registration_validation.js"></script>
  <script type="text/javascript" src="mobile_validation.js"></script>
  <script type="text/javascript" src="signup_validation.js"></script>
  <script type="text/javascript" src="characters_validation.js"></script>
  <link rel="stylesheet" href="css/Global.css">
    <link rel="stylesheet" href="css/Index.css">
    <script src="js/Global.js"></script>
  <style>
    * {
      box-sizing: border-box;
      font-family: "Courier Prime", monospace;
      font-size: 2.2rem;
  }
  h1{
    font-family: "Courier Prime", monospace;
  }
  </style>
  <link rel="stylesheet" type="text/css" media="all" href="jsdatepick-calendar\jsDatePick_ltr.min.css" />
  <link rel="stylesheet" type="text/css" media="all" href="jsdatepick-calendar\jsDatePick_ltr.css" />
  <script type="text/javascript" src="jsdatepick-calendar\jsDatePick.min.1.3.js"></script>
  <script language="javascript" type="text/javascript" src="jsdatepick-calendar\datetimepicker.js"></script>
  <script src="check_ajax.js"></script>
</head>
<body>
  <%
  String type=(String)session.getAttribute("type");
  String email=(String)session.getAttribute("email"); 
  String username=(String)session.getAttribute("username");
  if(email!=null){%>
    <jsp:include page="header_login.jsp"/>
    <%if(type.equals("user")){%>
      <%!int i=0; %>
      <div class="container w-50">
      <form name="form1" action="change_password.jsp" method="post">

        <% String umsg=(String)session.getAttribute("usermsg");
        if(umsg!=null){
          out.println("<center><font color='blue'><b>"+umsg+"</b></font></center>");
        }
        i++;
        if(i>=2){
          i=0;
          session.setAttribute("usermsg","");
        }%>
      <h1 style="text-align:center">Update Password</h1>
            <div class="control">
                <div class="npass">New Password</div>
                <div class="npass">
                  <div class="lbl">
                    <input type="password" class="form-control form-control-lg ml-0 fs-3" name="pass" size="30" autocomplete="off" placeholder="Enter your new password">
                  </div>
                </div>
            </div>
            <div class="control">
                <div class="lbl">Confirm New Password</div>
                <div class="lbl">
                  <input type="password" class="form-control form-control-lg ml-0 fs-3" name="cpass" size="30" autocomplete="off" placeholder="Confirm your new password">
                </div>
            </div>
      <input type="hidden" name="email" value="<%=email%>" size="30">
      <div class="control"> 
        <button type="submit" class="btn btn-lg btn-primary fs-3" value="Update" name="submit" class="submit1" onclick="return recoverComplete()">Update password</button>      
      </div>   
        </form>
      </div>
    <%}
  } else{ 
    response.sendRedirect("/rail/"); 
  } %>
</body>
</html>