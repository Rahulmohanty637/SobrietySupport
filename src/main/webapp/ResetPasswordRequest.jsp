<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
    margin: 0;
    padding: 0;
    background-color: rgb(189, 148, 70);
    font-family: sans-serif;
}

.resetcontainer{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 350px;
    min-height: 200px;
    background-color: white;
    border: 3px solid rgb(79, 134, 134);
    border-radius: 10px;
    padding: 40px;
}

.title{
    text-align: center;
}

.resetcontainer input{
    width: 100%;
    margin-bottom: 20px;
}

.resetcontainer input[type="email"]{
    border: none;
    border-bottom: 2px solid black;
    outline: none;
    height: 40px;
    color: black;
    font-weight: bold;
    background: transparent;
    font-size: 16px;
    box-sizing: border-box;
}

button{
    padding: 6px;
    background: rgb(185, 148, 79);
    width: 100%;
    border: 2px solid teal;
    border-radius: 20px;
    cursor: pointer;
}




</style>
</head>
<body>
<!-- password_reset_request.jsp -->
<form action="PasswordResetServlet" method="post">
   <div class="resetcontainer">
        <h3 class="title">Reset password</h3>
        <form>
            <input type="email" id="usernameOrEmail" name="usernameOrEmail" required placeholder="Enter your username" >
            <input type="submit" value="Request Password Reset">
        </form>
    </div>
</form>

</body>
</html>