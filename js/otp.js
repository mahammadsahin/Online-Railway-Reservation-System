function sendOTP(){
    let email = document.getElementById('email');
    const otpverify = document.getElementsByClassName('otpverify')[0];
    let otp_val = Math.floor(Math.random()*10000);
    let emailbody = `
        <h1>Wellcome to CVM</h1> <br>
        <h2>Your OTP is </h2>${otp_val}
    `;
    Email.send({
        SecureToken : "cb0a2365-fa7a-4f58-b870-b9ce501d77a3",
        To : email.value,
        From : "Service.Provider.1@hotmail.com",
        Subject : "OTP - Do Not Reply",
        Body : emailbody
    }).then(
      message => {
        if(message === "OK"){
            otpverify.style.display = "block";
            const otp_inp = document.getElementById('otp_inp');
            const otp_btn = document.getElementById('otp-btn');
            otp_btn.addEventListener('click',()=>{
                // now check whether sent email is valid
                if(otp_inp.value == otp_val){
                    alert("Email address verified...");
                    document.getElementById('id04').style.display='none';
                    return true;
                }
                else{
                    alert("Invalid OTP");
                    return false;
                }
            })
        }
      }
    );
}
