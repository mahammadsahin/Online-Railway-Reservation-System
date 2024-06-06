
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=3.0">
  <title>Help</title>
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
<style>
  * {
    box-sizing: border-box;
    font-family: "Courier Prime", monospace;
    font-size: 2.2rem;
}
</style>
</head>

<body>
  <%String email=(String)session.getAttribute("email"); 
		String username=(String)session.getAttribute("username");
		if(email!=null){%>
			<jsp:include page="header_login.jsp"/>
		<%} else{%>
			<jsp:include page="header_without_login.jsp"/>
		<%}%>

  <!-- side nav -->
  <!-- <span type="button" onclick="openNav()" class="sideNav"> &#9776; </span>
  <div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="Dashboard.html">Dashboard</a>
    <a href="BusDetails.html">Add Bus/Change Route</a>
    <a href="Profile.html">Edit Profile</a>
    <a href="Aboutus.html">About Us</a>
    <a href="Contact.html">Contact Us</a>
    <a href="Help.html" class="text-white active">Help</a>
    <a href="Setting.html">Setting</a>
    <a onclick="logout()" href="Index.html">
      <i class="fas fa-sign-out-alt"></i>
      Logout
    </a>
  </div> -->

  <div class="container-fluid">
    <div class="row">
      <div class="col-lx-12">
        <!-- <div class="card"> -->
        <div class="card-body">
          <div class="row justify-content-center mt-4">
            <div class="col-xl-5 col-lg-8">
              <div class="text-center">
                <h1>Frequently Asked Questions?</h1>
                <p class="text-muted">
                  If several languages coalesce, the grammar of the resulting
                  language is more simple and regular than that of the
                  individual
                </p>
                <div>
                  <a class="btn btn-outline-primary border-primary-subtle" href="mailto:skmahammadsahin@gmail.com">Email
                    Us</a>
                  <a class="btn btn-outline-primary border-dark-subtle" target="_blank"
                    href="https://api.whatsapp.com/send/?phone=916294745858&text=Hi%2C+Sahin&type=phone_number&app_absent=0">Send
                    us a Whatsapp Message</a>
                </div>
              </div>
            </div>
            <!-- end col -->
          </div>
          <!-- end row -->
          <div class="row justify-content-center mt-5">
            <div class="col-9">
              <ul class="nav nav-tabs nav-tabs-custom nav-justified justify-content-center faq-tab-box" id="pills-tab"
                role="tablist">
                <li class="nav-item" role="presentation">
                  <button class="nav-link active" id="pills-genarel-tab" data-bs-toggle="pill"
                    data-bs-target="#pills-genarel" type="button" role="tab" aria-controls="pills-genarel"
                    aria-selected="true">
                    <span class="fs-1">General Questions</span>
                  </button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="pills-privacy_policy-tab" data-bs-toggle="pill"
                    data-bs-target="#pills-privacy_policy" type="button" role="tab" aria-controls="pills-privacy_policy"
                    aria-selected="false">
                    <span class="fs-1">Privacy Policy</span>
                  </button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="nav-link" id="pills-teachers-tab" data-bs-toggle="pill"
                    data-bs-target="#pills-pricing_plan" type="button" role="tab" aria-controls="pills-pricing_plan"
                    aria-selected="false">
                    <span class="fs-1">Pricing &amp; Plans</span>
                  </button>
                </li>
              </ul>
            </div>
            <div class="col-lg-9">
              <div class="tab-content pt-3" id="pills-tabContent">
                <div class="tab-pane fade active show border-0 bg-light-subtle" id="pills-genarel" role="tabpanel"
                  aria-labelledby="pills-genarel-tab">
                  <div class="row g-4 mt-2">
                    <div class="col-lg-6">
                      <h3>What is Lorem Ipsum ?</h3>
                      <p class="text-primary">
                        If several languages coalesce, the grammar of the
                        resulting language is more simple and regular than
                        that of the individual languages. The new common
                        language will be more simple and regular than the
                        existing
                      </p>
                    </div>
                    <div class="col-lg-6">
                      <h3>Why do we use it ?</h3>
                      <p class="text-primary">
                        Their separate existence is a myth. For science,
                        music, sport, etc, Europe uses the same vocabulary.
                      </p>
                    </div>
                    <div class="col-lg-6">
                      <h3>Where does it come from ?</h3>
                      <p class="text-primary">
                        If several languages coalesce, the grammar of the
                        resulting language is more simple and regular than
                        that of the individual languages. The new common
                        language will be more simple and regular than the
                        existing
                      </p>
                    </div>
                    <div class="col-lg-6">
                      <h3>Where can I get some?</h3>
                      <p class="text-primary">
                        If several languages coalesce, the grammar of the
                        resulting language is more simple and regular than
                        that of the individual languages.
                      </p>
                    </div>
                  </div>
                </div>

                <div class="tab-pane fade border-3 bg-light" id="pills-privacy_policy" role="tabpanel"
                  aria-labelledby="pills-privacy_policy-tab">
                  <div class="row g-4 mt-2">
                    <div class="col-lg-6">
                      <h3>Where can I get some ?</h3>
                      <p class="text-primary">
                        If several languages coalesce, the grammar of the
                        resulting language is more simple and regular than
                        that of the individual languages. The new common
                        language will be more simple and regular than the
                        existing
                      </p>
                    </div>
                    <div class="col-lg-6">
                      <h3>Where does it come from ?</h3>
                      <p class="text-primary">
                        If several languages coalesce, the grammar of the
                        resulting language is more simple and regular than
                        that of the individual languages. The new common
                        language will be more simple and regular than the
                        existing
                      </p>
                    </div>
                    <div class="col-lg-6">
                      <h3>Why do we use it ?</h3>
                      <p class="text-primary">
                        If several languages coalesce, the grammar of the
                        resulting language is more simple and regular than
                        that of the individual languages. The new common
                        language will be more simple and regular than the
                        existing
                      </p>
                    </div>
                    <div class="col-lg-6">
                      <h3>What is Genius privacy policy</h3>
                      <p class="text-primary">
                        If several languages coalesce, the grammar of the
                        resulting language is more simple and regular than
                        that of the individual languages. The new common
                        language will be more simple and regular than the
                        existing
                      </p>
                    </div>
                  </div>
                </div>

                <div class="tab-pane fade border-0 bg-light" id="pills-pricing_plan" role="tabpanel">
                  <div class="row g-4 mt-4">
                    <div class="col-lg-6">
                      <h3>Where does it come from ?</h3>
                      <p class="text-primary">
                        If several languages coalesce, the grammar of the
                        resulting language is more simple and regular than
                        that of the individual languages. The new common
                        language will be more simple and regular than the
                        existing
                      </p>
                    </div>
                    <div class="col-lg-6">
                      <h3>Why do we use it ?</h3>
                      <p class="text-primary">
                        If several languages coalesce, the grammar of the
                        resulting language is more simple and regular than
                        that of the individual languages. The new common
                        language will be more simple and regular than the
                        existing
                      </p>
                    </div>
                    <div class="col-lg-6">
                      <h3>What is Lorem Ipsum ?</h3>
                      <p class="text-primary">
                        If several languages coalesce, the grammar of the
                        resulting language is more simple and regular than
                        that of the individual languages. The new common
                        language will be more simple and regular than the
                        existing
                      </p>
                    </div>
                    <div class="col-lg-6">
                      <h3>What is Lorem Ipsum?</h3>
                      <p class="text-primary">
                        If several languages coalesce, the grammar of the
                        resulting language is more simple and regular than
                        that of the individual languages. The new common
                        language will be more simple and regular than the
                        existing
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- end row -->
          <!-- </div> -->
        </div>
      </div>
    </div>
  </div>
</body>

</html>