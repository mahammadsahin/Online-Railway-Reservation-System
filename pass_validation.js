function checkPass(){
    let pass1 = document.getElementById('pass1').value;
    let pass2 = document.getElementById('pass2').value;
    let message = document.getElementById('confirmMessage');
    let goodColor = "#66cc66";
    let badColor = "#ff6666";
    if(pass1 == pass2){
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match!"
        return true;
    }else{
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match"
        return false;
    }
}  