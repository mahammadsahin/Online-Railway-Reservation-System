<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="shortcut icon" href="ICON/favicon.svg" type="image/svg">
    <!-- font awsame -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="css/Global.css">
    <link rel="stylesheet" href="css/AboutUs.css">
    <link rel="stylesheet" href="css/Index.css">
    <script src="mobile_validation.js" defer></script>
<script src="characters_validation.js" defer></script>
<script src="pass_validation.js" defer></script>
<script src="email_validation.js" defer></script>
<script src="js/otp.js" defer></script>
<script src="https://smtpjs.com/v3/smtp.js" defer></script>
    <style>
        * {
          box-sizing: border-box;
          font-family: "Courier Prime", monospace;
          font-size: 2.2rem;
      }
      </style>
    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"
        defer></script>
</head>

<body>
    <% String email=(String)session.getAttribute("email"); 
		String username=(String)session.getAttribute("username");
		if(email!=null){%>
			<jsp:include page="header_login.jsp"/>
		<%} else{%>
			<jsp:include page="header_without_login.jsp"/>
		<%}%>

    <div class="about-section justify-content-center">
        <h1>About Us Page</h1>
        <p>Some text about who we are and what we do.</p>
        <p>Resize the browser window to see that this page is responsive by the way.</p>
    </div>

    <div class="mb-5">
        <h2 class="mt-2 text-center">Our Team</h2>
        <div class="container d-flex align-items-center justify-content-center flex-wrap">
            <div class="box">
                <div class="body">
                    <div class="imgContainer">
                        <img src="icon/Sahin.png" alt="">
                    </div>
                    <div class="content d-flex flex-column align-items-center justify-content-center ">
                        <div class="text-center rounded-5">
                            <h3 class="text-white fs-1">Sk Mahammad Sahin</h3>
                            <p class="text-white fs-3">B.Sc. Computer Science</p>
                            <div class="rounded-5">
                              <a href="https://instagram.com/sk.mahammad.sahin?utm_source=qr&igshid=MzNlNGNkZWQ4Mg%3D%3D" target="_blank" rel="noopener noreferrer"><i class="fa-brands fa-instagram"></i></a></a>
                                <a href="https://www.linkedin.com/in/mahammadsahin" target="_blank"
                                    rel="noopener noreferrer"><i class="fa-brands fa-linkedin-in"></i></a>
                                <a href="https://wa.me/916294745858?text=Hi,%20Sahin" target="_blank"
                                    rel="noopener noreferrer"><i class="fa-brands fa-whatsapp"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="box">
                <div class="body">
                    <div class="imgContainer">
                        <img src="icon/Jyotishman.jpeg" alt="Jyotishman" class="rounded-5">
                    </div>
                    <div class="content d-flex flex-column align-items-center justify-content-center ">
                        <div class="text-center rounded-5">
                            <h3 class="text-white fs-1">Jyotishman Chakraborty</h3>
                            <p class="text-white fs-3">B.Sc. Computer Science</p>
                            <div class="rounded-5">
                              <a href="https://wa.me/919564343479?text=Hi,%20Jyotishman" target="_blank"
                              rel="noopener noreferrer"><i class="fa-brands fa-whatsapp"></i></a>
                                <a href="http://www.linkedin.com/in/jyotishman-chakraborty-312345255" target="_blank" rel="noopener noreferrer"><i
                                        class="fa-brands fa-linkedin-in"></i></a>
                                <a href="https://www.facebook.com/Jyotishman.Chakraborty.22?mibextid=ZbWKwL" target="_blank" rel="noopener noreferrer"><i
                                        class="fa-brands fa-facebook"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="box">
                <div class="body">
                    <div class="imgContainer">
                        <img src="icon/Shampa.jpeg" alt="Shampa" class="rounded-5">
                    </div>
                    <div class="content d-flex flex-column align-items-center justify-content-center ">
                        <div class="text-center rounded-5">
                            <h3 class="text-white fs-1">Shampa Khan</h3>
                            <p class="text-white fs-3">B.Sc. Computer Science</p>
                            <div class="rounded-5">
                                <a href="https://instagram.com/shampa296?igshid=MzNlNGNkZWQ4Mg==" target="_blank" rel="noopener noreferrer"><a href="https://instagram.com/shampa296?igshid=MzNlNGNkZWQ4Mg==" target="_blank" rel="noopener noreferrer"><i class="fa-brands fa-instagram"></i></a></a>
                                <a href="https://www.linkedin.com/in/shampa-khan-1287b6268" target="_blank" rel="noopener noreferrer"><i
                                        class="fa-brands fa-linkedin-in"></i></a>
                                <a href="https://www.facebook.com/shampa.khan.739?mibextid=ZbWKwL" target="_blank" rel="noopener noreferrer"><i
                                        class="fa-brands fa-facebook"></i></a>
                            </div>
                        </div>
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