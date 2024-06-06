
<nav class="navbar navbar-expand-lg bg-primary text-white m-0">
  <div class="container-fluid h-100">
    <img src="icon/favicon.svg" alt="icon" height="40px">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
      aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item ml-3 mr-3 border rounded-3 hover">
          <a class="nav-link text-white" aria-current="page" href="/rail/">Home</a>
        </li>
        <li class="nav-item ml-4 hover border rounded-3">
          <a class="nav-link text-white" href="find_your_train.jsp">Find Your Train</a>
        </li>
        <li class="nav-item ml-4 hover border rounded-3">
          <a class="nav-link text-white" href="enter_pnr_no.jsp">PNR Status</a>
        </li>
        <li class="nav-item ml-4 hover border rounded-3">
          <a class="nav-link text-white" href="About.jsp">About Us</a>
        </li>
        <li class="nav-item ml-4 hover border rounded-3">
          <a class="nav-link text-white" href="Contact.jsp">Contact Us</a>
        </li>
      </ul>
      <ul class="nav justify-content-end">
        <li class="nav-item hover text-white pt-3 pl-4 pr-4 ml-5 pb-3"
          onclick="document.getElementById('id02').style.display = 'block'">
          <span class="glyphicon glyphicon-user text-white"></span>
          Register for free
        </li>
        <li class="nav-item hover text-white pt-3 p-1 "
          onclick="document.getElementById('id01').style.display = 'block'">
          <span class="glyphicon glyphicon-log-in text-white"></span>
          Login
        </li>
      </ul>
    </div>
  </div>
</nav>

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
      <div class="a1">
        <input class="m-2 rounded-4" placeholder="Email..." type="email" id="email" name="email" onkeyup="emailValidation()" >
        <span id="mail"></span>
        <span id="mail2"></span>
      </div>
      <div class="a2">
        <input class="m-2 rounded-4" placeholder="Mobile..." type="number" name="contact" maxlength="10" onchange="mobileValidation()"/>
      </div>
      <div class="text-center a3">
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" value="Male" name="gender" id="male" checked>
          <label for="male" class="form-check-label">Male</label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" value="Female" name="gender" id="female">
          <label for="female" class="form-check-label">Female</label>
        </div>
      </div>
      <div class="a4">
        <input class="m-2 rounded-4" placeholder="Password..." type="password" name="pass" id="pass1" />
      </div>
      <div class="a5">
        <input class="m-2 rounded-4" placeholder="Re-enter Password..." type="password" id="pass2" name="cpass" onkeyup="checkPass()">
        <span id="confirmMessage"></span>
      </div>
      <div class="text-center m-auto a6">
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

<!-- OTP verivication -->
<div id="id04" class="modal">
  <div class="modal-content animate">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id04').style.display='none'" class="close"
        title="Close Modal">&times;</span>
    </div>
    <div class="lcontainer">
      <div class="row h-100">
        <div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
          <div class="d-table-cell align-middle">
            <div class="text-center mt-4">
              <h1>OTP Verification</h1>
              <p class="lead">
                OTP sent to your email <br>
                <small>Also check your spam folder</small>
              </p>
            </div>
            <div class="card rounded-5">
              <div class="card-body">
                <div class="m-sm-4">
                  <form action="#">
                    <div class="form-group">
                        <div class="otpverify text-center" style="display: none;">
                          <input type="text" id="otp_inp" class="w-100 m-2 rounded-5 fs-4 text-center" style="display: inline;" id="otp_inp" placeholder="Enter your OTP">
                          <button type="button" id="otp-btn" class="w-75 bg-primary btn text-center m-2"  style="display: inline; width: 100px" id="otp_btn">verify</button>
                        </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="lcontainer p-5">
        <button type="button" onclick="document.getElementById('id04').style.display='none'"
          class="cancelbtn">Cancel</button>
      </div>
    </div>
  </div>
</div>

<!-- forgot password -->
<div id="id03" class="modal">
  <div class="modal-content animate w-50 m-auto p-0">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id03').style.display='none'" class="close"
        title="Close Modal">&times;</span>
    </div>
    <div class="lcontainer">
            <div class="text-center">
              <h1>Reset password Form</h1>
              <p class="lead">
                Enter your email to reset your password.
              </p>
            </div>
              <div class="card-body">
                <div class="m-sm-4">
                  <form action="forgot.jsp" method="post">
                    <div class="form-group">
                      <label>Name</label>
                      <input class="form-control form-control-lg ml-0 fs-3" type="name" name="name"
                        placeholder="Enter your name">
                      <label>Email</label>
                      <input class="form-control form-control-lg ml-0 fs-3" type="email" name="email"
                        placeholder="Enter your email">
                        <label>Mobile Number</label>
                      <input class="form-control form-control-lg ml-0 fs-3" type="number" name="contact"
                        placeholder="Enter your mobile number">
                        <label>Passwrod</label>
                        <input type="password" class="form-control form-control-lg ml-0 fs-3" name="pass" size="30" autocomplete="off" placeholder="Enter your new password">
                        <label>Re-enter Password</label>
                        <input type="password" class="form-control form-control-lg ml-0 fs-3" name="cpass" size="30" autocomplete="off" placeholder="Re-enter new password">
                    </div>
                    <div class="text-center mt-3">
                      <button type="submit" class="btn btn-lg btn-primary fs-3">Reset password</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
      <div class="lcontainer p-5 pt-0">
        <button type="button" onclick="document.getElementById('id03').style.display='none'"
          class="cancelbtn">Cancel</button>
      </div>
    </div>
  </div>
</div>