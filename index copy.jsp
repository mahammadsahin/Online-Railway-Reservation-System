<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=3.0">
  <title>Home</title>
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
  
<script type="text/javascript" src="mobile_validation.js"></script>
<script type="text/javascript" src="signup_validation.js"></script>
<script type="text/javascript" src="characters_validation.js"></script>
<link rel="stylesheet" href="css/Global.css">
  <link rel="stylesheet" href="css/Index.css">
<style>
  * {
    @import url('https://fonts.googleapis.com/css?family=Kaushan+Script|Saira&display=swap');
    box-sizing: border-box;
    font-family: "Courier Prime", monospace;
    /* font-family: 'Kaushan Script', cursive; */
    font-size: 2.2rem;
}
</style>
<script type="text/javascript" src="registration_validation.js"></script>
</head>

<body>
  <%String email=(String)session.getAttribute("email"); 
		String username=(String)session.getAttribute("username");
		if(email!=null){%>
			<jsp:include page="header_login.jsp"/>
		<%} else{%>
			<jsp:include page="header_without_login.jsp"/>
		<%}%>

  <!-- Registration -->
  <div id="id02" class="modal">
    <form id="regForm" class="modal-content animate w-50 m-auto p-0" name="form1" action="register.jsp" method="post">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      </div>
      <div class="lcontainer">
      <h2 class="text-center">Register:</h2>
      <div class="p-5 pb-0">
        <input class="m-2 rounded-4" placeholder="Full name..." type="text" name="name" maxlength="30" onchange="nameValidation()">
        <input class="m-2 rounded-4" placeholder="Email..." type="email" name="email" id="email" onchange="emailValidation()" autocomplete="off">
        <span id="mail"></span>
        <span id="mail2"></span>
        <input class="m-2 rounded-4" placeholder="Mobile..." type="text" name="contact" maxlength="10" onChange="mobileValidation()" onblur="" id="mobile1" />
        <div class="text-center">
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" value="Male" name="gender" id="male">
          <label for="male" class="form-check-label">Male</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" value="Female" name="gender" id="female">
          <label for="female" class="form-check-label">Female</label>
        </div>
      </div>
        <input class="m-2 rounded-4" placeholder="Password..." type="password" name="pass" id="pass1" />
        <input class="m-2 rounded-4" placeholder="Re-enter Password..." type="password" id="pass2" name="cpass" onchange="checkPass()" />
        <div class="text-center m-auto">
        <!-- <input type="submit" value="Sign Up!" class=" text-center rounded-4 w-75 bg-primary" onClick="return complete()" /> -->
        <button type="submit" value="Sign Up!" class="w-75 bg-primary"
            onclick="document.getElementById('id01').style.display='none'" onClick="return complete()">Sign Up!</button>
      </div>
      </div>
      </div>
      <div class="lcontainer p-5">
        <button type="button" onclick="document.getElementById('id02').style.display='none'"
          class="cancelbtn">Cancel</button>
      </div>
    </form>
  </div>

  <!-- login -->
  <div id="id01" class="modal">
    <form class="modal-content animate m-auto p-0" method="post" action="login.jsp" name="login">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id01').style.display='none'" class="close"
          title="Close Modal">&times;</span>
      </div>

      <div class="lcontainer">
        <h2 class="text-center">Login</h2>
        <div class="p-5 pb-0">
          <label for="email">User Email/Admin id :</label>
          <input class="fs-3 rounded-4" type="text" placeholder="Enter your email" name="email" required autocomplete="falsh">
          <label for="pword">Password</label>
          <input class="fs-3 rounded-4" type="password" placeholder="Enter Your Password" id="pword" name="pass" required>
<div class="text-center">
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="type" id="user" value="user" checked>
            <label for="user" class="form-check-label">User</label>
          </div>
          <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="type" id="admin" value="admin">
            <label for="admin" class="form-check-label">Admin</label>
          </div>
        </div>
        </div>
        <div class="text-center">
          <button type="submit" class="w-75 bg-primary"
            onclick="document.getElementById('id01').style.display='none'">Login</button>
            <!-- document.getElementById('id04').style.display = 'block';  -->
        </div>
        <div class="text-center"
          onclick="document.getElementById('id03').style.display = 'block'; document.getElementById('id01').style.display='none'">
          Forgot Password
        </div>

        <div class="lcontainer p-5">
          <button type="button" onclick="document.getElementById('id01').style.display='none'"
            class="cancelbtn">Cancel</button>
        </div>
      </div>
    </form>
  </div>

  <!-- forgot password -->
  <div id="id03" class="modal">
    <div class="modal-content animate">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id03').style.display='none'" class="close"
          title="Close Modal">&times;</span>
      </div>

      <div class="lcontainer">
        <div class="row h-100">
          <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
            <div class="d-table-cell align-middle">

              <div class="text-center mt-4">
                <h1>Reset password</h1>
                <p class="lead">
                  Enter your email to reset your password.
                </p>
              </div>

              <div class="card rounded-5">
                <div class="card-body">
                  <div class="m-sm-4">
                    <form action="Forgot" method="post">
                      <div class="form-group">
                        <label>Email</label>
                        <input class="form-control form-control-lg ml-0 fs-3" type="email" name="email"
                          placeholder="Enter your email">
                      </div>
                      <div class="text-center mt-3">
                        <button type="submit" class="btn btn-lg btn-primary fs-3">Reset password</button>
                      </div>
                    </form>
                  </div>
                </div>
              </div>

            </div>
          </div>
        </div>

        <div class="lcontainer p-5">
          <button type="button" onclick="document.getElementById('id03').style.display='none'"
            class="cancelbtn">Cancel</button>
        </div>
      </div>
    </div>
  </div>

  <!-- 2FA Security -->
  <div id="id04" class="modal h-100">
    <form class="modal-content animate display-4" action="." method="post">
      <div class="imgcontainer">
        <span onclick="document.getElementById('id04').style.display='none'" class="close"
          title="Close Modal">&times;</span>
      </div>

      <div class="lcontainer ">
        <div class="col-lg-6 w-100 text-center center1 text-center card-box2 two-step-div container">
          <img class="my-img" src="icon/2FA.png">
          <h2 class="d">Two Step Verification</h2>
          <p class="text-center fs-2">Lorem ipsum dolor sit amet, consectetur adipiscing elit,
            <br>sed do eiusmod tempor incididunt ut labore et dolore magna aliqua
          </p>
          <form id="form">
            <div class="digits row w-50 m-auto">
              <input class="col rounded-2 text-center m-3 fa digit-input" id="digit1" name="digit1"
                data-next-id="digit0" data-indx="0" value="" size="1" maxlength="1" autocomplete="off" type="text">
              <input class="col rounded-2 text-center m-3 fa digit-input" id="digit2" name="digit2"
                data-prev-id="digit1" data-indx="1" data-next-id="digit3" value="" size="1" maxlength="1"
                autocomplete="off" type="text">
              <input class="col rounded-2 text-center m-3 fa digit-input" id="digit3" name="digit3"
                data-prev-id="digit2" data-indx="2" data-next-id="digit4" value="" size="1" maxlength="1"
                autocomplete="off" type="text">
              <input class="col rounded-2 text-center m-3 fa digit-input" id="digit4" name="digit4"
                data-prev-id="digit3" data-indx="3" data-next-id="digit5" value="" size="1" maxlength="1"
                autocomplete="off" type="text">
              <input class="col rounded-2 text-center m-3 fa digit-input" id="digit5" name="digit5"
                data-prev-id="digit4" data-indx="4" data-next-id="digit6" value="" size="1" maxlength="1"
                autocomplete="off" type="text">
              <input class="col rounded-2 text-center m-3 fa digit-input" id="digit6" name="digit6"
                data-prev-id="digit5" data-indx="5" value="" size="1" maxlength="1" autocomplete="off" type="text">
            </div>

            <a href="#myModal" class="trigger-btn" data-toggle="modal">
              <button class="mt-5 w-25 btn btn-primary btn-embossed btn-verify">Verify</button>
            </a>

          </form>
        </div>

        <div class="lcontainer mb-0">
          <button type="button" onclick="document.getElementById('id04').style.display='none'"
            class="cancelbtn">Cancel</button>
        </div>
      </div>
    </form>
  </div>

  <!-- Carousel -->
  <div class="container-lg my-3">
    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
      <div id="carouselExampleAutoplaying" class="container carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="icon/1.jpeg" height="500rem" class="d-block w-100" alt="Slide 1">
            <div class="carousel-caption d-none d-md-block">
              <!-- <h2>First slide label</h2>
              <p>Some representative placeholder content for the first slide.</p> -->
            </div>
          </div>
          <div class="carousel-item">
            <img src="icon/2.jpg" height="500rem" class="d-block w-100" alt="Slide 2">
            <div class="carousel-caption d-none d-md-block">
              <!-- <h2>Second slide label</h2>
              <p>Some representative placeholder content for the second slide.</p> -->
            </div>
          </div>
          <div class="carousel-item">
            <img src="icon/3.jpg" height="500rem" class="d-block w-100" alt="Slide 2">
            <div class="carousel-caption d-none d-md-block">
              <!-- <h2>Third slide label</h2>
              <p>Some representative placeholder content for the second slide.</p> -->
            </div>
          </div>
        </div>
      </div>

      <!-- contant -->
      <div class="container">
        <h1 class="text-center">Wellcome Home</h1>
        <p>
          Our website provides a variety of information to assist individuals in booking railway tickets.
Passengers travelling by train often require information about the status of their ticket reservation, availability of tickets for a specific train or destination, train schedules, and special trains. However, customer service canters at railway stations struggle to handle such queries during peak hours. Additionally, there are limited reservation counters available for passengers, leading to long queues and wait times. Unfortunately, call canter facilities are not currently available to assist passengers with their inquiries.
<br>
<br>
The aim of the online railway ticket reservation system is to provide customers with train details, availability, and the ability to book tickets online. To achieve this, we developed a web application with two main parts: the user interface and the administrator interface. These parts offer specific features to meet the needs of users and administrators respectively
        </p>
      </div>


      <!-- News -->
      <div class="container mt-5 mb-5">
        <div class="row">
          <div class="col-md-6 offset-md-3">
            <h3>Latest News</h3>
            <ul class="timeline">
              <li>
                <h3>News 1</h3>
                <p class="float-right fs-3 text-success">21 March, 2023</p>
                <p class="text-info-emphasis">
                  &#8377;0 Payment Gateway Fee on Payments via UPI
                </p>
              </li>
              <li>
                <h3>News 2</h3>
                <p class="float-right fs-3 text-success">21 March, 2023</p>
                <p  class="text-info-emphasis">
                  Instant Refund on Indian Railway Reservation Cancellation</p>
              </li>
              <li>
                <h3>News 3</h3>
                <p class="float-right fs-3 text-success">21 March, 2023</p>
                <p  class="text-info-emphasis">
                  24*7 Customer Support for Train Ticket Booking</p>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>


  <!-- Footer -->
  <footer class="w-100 text-center footer pt-4">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-4 col-md-4 text-white">
          <h2>Info</h2>
          <ul class="list-unstyled quick-links">
            <li><a href="/rail/" class="text-white">
              <i class="fa fa-angle-double-right"></i> PNR Status</a>
            </li>
            <li><a href="About.jsp" class="text-white"><i class="fa fa-angle-double-right"></i> About</a>
            </li>
            <li><a href="Help.jsp" class="text-white"><i class="fa fa-angle-double-right"></i> FAQ</a></li>
          </ul>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 text-white">
          <h2>Popular Trains</h2>
          <ul class="list-unstyled quick-links">
            <li><i class="fa fa-angle-double-right"></i> 22691 Rajdhani Exp
            </li>
            <li><i class="fa fa-angle-double-right"></i> 12425 Jammu Rajdhani
            </li>
            <li><i class="fa fa-angle-double-right"></i> 12916 Ashram Express</li>
          </ul>
        </div>
        <div class="col-xs-12 col-sm-4 col-md-4 text-white">
          <h2>Top Train Routes</h2>
          <ul class="list-unstyled quick-links">
            <li><i class="fa fa-angle-double-right"></i>Agra to delhi trains
            </li>
            <li><i class="fa fa-angle-double-right"></i>chennai to delhi trains
            </li>
            <li><i class="fa fa-angle-double-right"></i>Ahmedabad to surat trains</li>
          </ul>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
          <ul class="list-unstyled list-inline social text-center">
            <li class="list-inline-item"><a href="https://www.fb.com"><img src="icon/logo-facebook.svg"
                  alt="Social Media" width="25px" height="25px"></a></li>
            <li class="list-inline-item"><a href="https://twitter.com"><img src="icon/logo-twitter.svg"
                  alt="Social Media" width="25px" height="25px"></a></li>
            <li class="list-inline-item"><a href="https://www.instagram.com"><img src="icon/logo-instagram.svg"
                  alt="Social Media" width="25px" height="25px"></a>
            </li>
            <li class="list-inline-item"><a href="https://www.google.com"><img src="icon/logo-google.svg"
                  alt="Social Media" width="25px" height="25px"> </a></li>
            <li class="list-inline-item"><a href="https://www.linkedin.com"><img src="icon/icon-linkedin.svg"
                  alt="Social Media" width="25px" height="25px"> </a>
            </li>
          </ul>
        </div>
        <hr>
      </div>
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
          <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Expedita nesciunt in soluta similique
            molestiae at voluptates, vel pariatur corrupti. Voluptate.</p>
          <hr>
          <h3>&#169; Created by Sahin</h3>
        </div>
      </div>
    </div>
  </footer>
</body>

</html>