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
input{
  background-color: white;
}
</style>
<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"
defer></script>
<script src="mobile_validation.js" defer></script>
<script src="characters_validation.js" defer></script>
<script src="pass_validation.js" defer></script>
<script src="email_validation.js" defer></script>
<script src="js/otp.js" defer></script>
<script src="https://smtpjs.com/v3/smtp.js" defer></script>
</head>

<body>
  <%String email=(String)session.getAttribute("email"); 
		String username=(String)session.getAttribute("username");
		if(email!=null){%>
			<jsp:include page="header_login.jsp"/>
		<%} else{%>
			<jsp:include page="header_without_login.jsp"/>
		<%}%>
      
  <!-- Carousel -->
  <div class="container-lg my-3">
    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
      <div id="carouselExampleAutoplaying" class="container carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="icon/1.jpeg" height="500rem" class="d-block w-100" alt="Slide 1">
            <div class="carousel-caption d-none d-md-block">
            </div>
          </div>
          <div class="carousel-item">
            <img src="icon/2.jpg" height="500rem" class="d-block w-100" alt="Slide 2">
            <div class="carousel-caption d-none d-md-block">
            </div>
          </div>
          <div class="carousel-item">
            <img src="icon/3.jpg" height="500rem" class="d-block w-100" alt="Slide 2">
            <div class="carousel-caption d-none d-md-block">
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