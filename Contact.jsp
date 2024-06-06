<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=3.0">
  <title>Contact Us</title>
  <link rel="shortcut icon" href="icon/favicon.svg" type="image/svg">
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://smtpjs.com/v3/smtp.js" defer></script>
  <link rel="stylesheet" href="css/Global.css">
  <link rel="stylesheet" href="css/Index.css">
  <link rel="stylesheet" href="css/cont.css">
  <style>
    * {
      @import url('https://fonts.googleapis.com/css?family=Kaushan+Script|Saira&display=swap');
      box-sizing: border-box;
      font-family: "Courier Prime", monospace;
      /* font-family: 'Kaushan Script', cursive; */
      font-size: 2.2rem;
    }
    .container {
      width: 90%;
    }
  </style>
</head>

<body>
  <%String email=(String)session.getAttribute("email"); 
  String username=(String)session.getAttribute("username");
    if(email!=null){%>
    <jsp:include page="header_login.jsp" />
    <%} else{%>
      <jsp:include page="header_without_login.jsp" />
      <%}%>
        <div class="container mt-5 row m-auto">
          <h1 class="text-center">Contact Us</h1>
          <div class="col-lg-6">
            <div class="w-100 border shadow rounded-4 bg-primary" style="margin-top: 7rem;">
              <div class=" bg-white rounded-4">
                <form class="row mb-3  p-5 text-dark" id="form1" action=""> 
                  <!-- onsubmit="sendMail();reset(); return false;" -->
                  <div class="col-md-6 p-3">
                    <input required placeholder="Name" type="text" name="name" id="name" />
                  </div>
                  <div class="col-md-6 p-3">
                    <input required placeholder="E-mail" type="email" name="email1" id="email1" />
                  </div>
                  <div class="col-md-6 p-3">
                    <input required placeholder="Phone" type="number" name="contact" id="phone" />
                  </div>
                  <div class="col-md-6 p-3">
                    <input required placeholder="Subject" type="text" name="sub" id="subject" />
                  </div>
                  <div class="col-md ml-4 p-3 pr-0 mt-5 text-center">
                    <textarea required name="msg" placeholder="write your message" id="messages" cols="30"
                      rows="1"></textarea>
                  </div>
                  <div class="text-center mt-4">
                    <button type="submit" class="btn w-75 bg-primary fs-2 text-white" onclick="sendemail()">Send</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <div class="col-lg-6">
            <div class="row container text-center w-100 m-auto mb-0">
              <div class=" col-lg-6 ">
                <div class="card p-3 rounded-5 shadow bg-primary h-100" style="color:white;">
                  <div style="color: rgb(255, 255, 255);" class="m-auto">
                    <i class="fas fa-phone" style="font-size: 4rem;"></i>
                  </div>
                  <div class="m-auto">
                    <b style="font-size: 1.8rem;">Contact:</b>
                    <a href="tel:+916294745858" style="font-size: 1.8rem; color: white;"> +916294745858</a>
                  </div>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="card p-3 rounded-5 shadow bg-primary h-100" style="color:white;">
                  <div style="color: rgb(255, 255, 255);" class="m-auto"><i class="far fa-envelope"
                      style="font-size: 5rem;"></i></div>
                  <div class="m-auto"><b style="font-size: 1.7rem;">Email:</b><a
                      href="mailto:Service.Provider.1@hotmail.com"
                      style="font-size: 1.7rem;  color: white;">Service.Provider.1<br>@hotmail.com</a></div>
                </div>
              </div>
            </div>
            <h2 class="card-title text-center pb-3"><i class='fas fa-map-marker-alt'></i> Location</h2>
            <iframe
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.838243870755!2d87.51875827535999!3d22.734252879376903!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f7f8ff65213dc3%3A0xf08646ad9858f0e0!2sChandrakona%20Vidyasagar%20Mahavidyalaya!5e0!3m2!1sen!2sin!4v1688164361750!5m2!1sen!2sin"
              width="100%" style="border:0; border-radius: 20px; height: 40rem; padding: 1rem;" class="shadow-lg"
              allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
        </div>
        <!-- <script>
          function sendMail() {
            let name = document.getElementById("name").value;
            let email1 = document.getElementById("email1").value;
            let contact = document.getElementById("contact").value;
            let subject = document.getElementById("sub").value;
            let msg = document.getElementById("msg").value;
            let body = "Name:" + name + "<br> Email:" + email1 + "<br> Contact Number:" + contact + "<br> Subject:" + subject + "<br> Message:" + message;
            Email.send({
                Host: "smtp.elasticemail.com",
                Username: "sah27912@gmail.com",
                Password: "1116011B45A3272532186667C92A6280D37E",
                To: 'Service.Provider.1@hotmail.com',
                From: "sah27912@gmail.com",
                Subject: "Contact Us Mail",
                Body: body
              }).then(
                message => alert(message)
              );
          }
        </script> -->
        <script src="https://smtpjs.com/v3/smtp.js"></script>
        <script>
            function sendemail(){
                const name = document.getElementById("name").value;
                const email1 = document.getElementById("email1").value;
                const phone = document.getElementById("phone").value;
                const sub = document.getElementById("subject").value;
                const mess = document.getElementById("messages").value;
                const body = "Name :" + name + "<br/>Email :" + email1 + "<br/>phone number: " + phone + "<br/>User Message:" + mess;
                Email.send({
                Host : "smtp.elasticemail.com",
                Username : "sah27912@gmail.com",
                Password : "1116011B45A3272532186667C92A6280D37E",
                To : "Service.Provider.1@hotmail.com",
                From : "sah27912@gmail.com",
                Subject : sub,
                Body : body
               }).then(
               message => {
                if(message=='OK'){
                document.getElementById("popup").classList.add("frame");
                document.getElementById("popup").style.visibility="visible"; 
                document.getElementById("form-conatiner").style.visibility="hidden";
                document.formgroup.reset();
                }
                else{
                console.error(message);
                document.getElementById("wrong").classList.add("frame");
                document.getElementById("wrong").style.visibility="visible"; 
                document.getElementById("form-conatiner").style.visibility="hidden";
                }
               }
               ); 
              
            // confirm mail
    
            var design = `
                <div style="display: grid; width: 100%; place-items: center;">
                    <div style="width: 95%; height: 90px; background-color: #34568b;">
                        <p style="text-align: center; font-size: 30px; color: white;">Education Analysist</p>
                    </div>
                    <div style="margin-top: 15px;">
                        <p style="font-size: 22px; text-align: center;">Thank You Your Data successfully Received</p>
                    </div>
                    <div>
                        <p style="font-size: 15px;">thank this is my official youtube channel thank so muc to show interest my video 
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur, possimus! Lorem ipsum dolor sit amet consectetur 
                            adipisicing elit. Unde ab adipisci veritatis placeat quas earum dolores magnam quam, vel impedit!
                        </p>
                    </div>
                    <div>
                        <p style="font-size: 25px; text-align: center;">Please Subscibe my channel</p>
                    </div>
                </div>`
    
            Email.send({
                Host : "smtp.elasticemail.com",
                Username : "sah27912@gmail.com",
                Password : "1116011B45A3272532186667C92A6280D37E",
                To : email,
                From : "sah27912@gmail.com",
                Subject : "Mail from Education Analysist",
                Body : design
               })
            }
            function remove(){
                document.getElementById("popup").classList.remove("frame");
                document.getElementById("popup").style.visibility="hidden";
                document.getElementById("form-conatiner").style.visibility="visible";
            }
            function wrongremove(){
                document.getElementById("wrong").classList.remove("frame");
                document.getElementById("wrong").style.visibility="hidden"; 
                document.getElementById("form-conatiner").style.visibility="visible"; 
            }
        </script>
</body>

</html>