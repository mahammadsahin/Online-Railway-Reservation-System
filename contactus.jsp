<!DOCTYPE html>
<html>

<head>
    <title>Sending Mail</title>
    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <script type="text/javascript">
        function sendEmail() {
            Email.send({
                Host: "smtp.elasticemail.com",
                Username: "sah27912@gmail.com",
                Password: "1116011B45A3272532186667C92A6280D37E",
                To: 'Service.Provider.1@hotmail.com',
                From: "sah27912@gmail.com",
                Subject: "This is the subject",
                Body: "And this is the body"
            }).then(
                message => alert(message)
            );
        }
    </script>
</head>

<body>
    <form method="post">
        <input type="button" value="Send Mail" onclick="sendEmail()" />
    </form>
</body>

</html>