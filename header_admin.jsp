
<%String username=(String)session.getAttribute("username");%>
<nav class="navbar navbar-expand-lg bg-primary text-white m-0">
    <div class="container-fluid h-100">
      <img src="icon/favicon.svg" alt="icon" height="40px">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
        aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav ">
            <li class="nav-item ml-3 mr-3 hover border rounded-3">
                <a class="nav-link text-white " aria-current="page" href="dashboard.jsp">Home</a>
            </li>
            <li class="nav-item ml-3 mr-3 hover border rounded-3">
              <a class="nav-link text-white" aria-current="page" href="add_train_form.jsp">Add Train</a>
            </li>
            <li class="nav-item ml-3 mr-3 hover border rounded-3">
              <a class="nav-link text-white" aria-current="page" href="add_train_fare.jsp">Add Train Fare</a>
            </li>
            <li class="nav-item ml-3 mr-3 hover border rounded-3">
              <a class="nav-link text-white " aria-current="page" href="passenger_list.jsp">Passengers Details</a>
            </li>
          </ul>
        
          <ul class="nav justify-content-end drop mt-2">
            <li class="nav-item dropdown">
              <span class="nav-link p-2 text-white dropdown-toggle" role="button" data-bs-toggle="dropdown"
                aria-expanded="false" data-toggle="dropdown">
                <i class="fas fa-user-circle"></i>
                <span id="user_wellcome">
                     Wellcome <%=username %>
                </span>
              </span>
              <ul class="dropdown-menu m-auto text-center">
                <!-- <li>
                  <a class="dropdown-item" href="change_password_form.jsp">
                    <i class="fa fa-fw fa-cog"></i>
                    Change Password
                  </a>
                </li> -->
                <!-- <li>
                  <hr class="dropdown-divider">
                </li> -->
                <li class="text-center m-auto">
                  <a class="dropdown-item pl-5" href="logout.jsp">
                    <i class="fa fa-fw fa-power-off"></i>
                    Logout
                  </a>
                </li>
              </ul>
            </li>
          </ul>
      </div>
    </div>
  </nav>