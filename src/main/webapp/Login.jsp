<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style type="text/css">
body{
    margin: 0;
    padding: 0;
    background-color: orange;
    font-family: sans-serif;
}

.logincontainer{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 350px;
    min-height: 500px;
    background-color: white;
    border: 3px solid teal;
    border-radius: 10px;
    padding: 40px;
    box-sizing: border-box;
}

.userlogo{
    margin: 0 auto;
    display: block;
}

.purpose{
    margin: 0;
    padding: 0 0 20px;
    color: black;
    text-align: center;
}

.inputcontainer input{
    width: 100%;
    margin-bottom: 20px;
}

.inputcontainer input[type="email"],
.inputcontainer input[type="password"] {
    border: none;
    border-bottom: 2px solid black;
    /* outline: none; */
    height: 40px;
    color: black;
    font-weight: bold;
    background: transparent;
    font-size: 16px;
    /* padding-left: 20px; */
    box-sizing: border-box;
}

.inputcontainer input[type="email"]:focus {
    border-bottom: 2px solid green;
}

.inputcontainer input[type="password"]:focus {
    border-bottom: 2px solid red;
}

.logincontainer input[type="submit"]{
    border: none;
    outline: none;
    width: 100%;
    height: 40px;
    font-size: 16px;
    background: orange;
    color: black;
    border: 2px solid teal;
    border-radius: 20px;
    justify-content: center;
    cursor: pointer;
    margin-bottom: 20px;
}

.logincontainer a{
    color: black;
    font-size: 16px;
    font-weight: bold;
    text-decoration: none;
    cursor: pointer;
    text-align: center;
    display: block;
}
</style>
</head>
<body>
 <div class="logincontainer">
      <img
        class="userlogo"
        src="//img.icons8.com/?size=160&id=108652&format=png"
        alt="user logo"
      />
      <h3 class="purpose">Login</h3>

      <form action="LoginServlet" method="post">
        <div class="inputcontainer">
          <input
            type="email"
            id="username"
            name="username"
            required
            placeholder="Enter username"
          />
        </div>

        <div class="inputcontainer">
          <input
            type="password"
            id="password"
            name="password"
            required
            placeholder="Enter password"
          />
        </div>

        <select
          id="role"
          name="role"
          required
          onchange="toggleCounselorFields()"
        >
          <option value="Patient">Patient</option>
          <option value="Counselor">Counselor</option>
        </select>
        <br /><br />
        <input type="submit" name="" value="Login" />
      </form>

      <a href="ResetPassword.jsp">Forget password</a>
    </div>
</body>
</html>