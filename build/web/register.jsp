<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>sign in</title>
    
    <!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
         <div class="container">   
        <form action="register" method="POST" class="form" id="formid" onSubmit="return validation()">
            
       
           
            <h2>Sign In</h2>
            
            <div class="user-input-box">
                <input type="text" required="" class="" name="username" id="usernameid" autocomplete="off">  
                <label>User Name</label>
                <span id="username" class="fill"></span>
                <i></i>
            </div>
            <div class="user-input-box">
                <input type="password" required="" class="" id="pwdid" name="password"  autocomplete="off">
                <label>password</label>
                <span id="pw" class="fill"></span>
                <i></i>
            </div>
            <div class="user-input-box">
                <input type="password" required="" class="" id="cpwdid" name="confirmpassword"  autocomplete="off">
                <label>Confirm password</label>
                <span id="cpw" class="fill"></span>
                <i></i>
            </div>
            <div class="user-input-box">
                <input type="email" required="" class="" name="email" id="emailid"   autocomplete="off">
                <label>Email</label>
                <span id="email" class="fill"></span>
                <i></i>
            </div>
            <div class="links">
                
                <a href="login.jsp">Already have an account?</a>
            </div>
            <input type="submit" value="Sign in">
        </form>
    </div>
    
    <script type="text/javascript">
                  
        function validation(){


               var uname  = document.getElementById('usernameid').value;
               var pwd  = document.getElementById('pwdid').value;
               var cpwd  = document.getElementById('cpwdid').value;
               var email  = document.getElementById('emailid').value;

               if(pwd!==cpwd){
                 alert("Password fields do not match !");
                return false;
               }    
        }
    </script>
    
    
    <style>
          * {
        font-family: 'Poppins', sans-serif;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
   
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        flex-direction: column;
        background: #23242a;
        background-size: cover;
        background-repeat: no-repeat;
        background-image: url("images/movie6.jpg");
    }

    .container {
        
        position: relative;
        width: 380px;
        height: 520px;
        background: #1c1c1c;
        border-radius:8px;
        overflow: hidden;
        
    }
    
    .container::before {
        content: '';
        z-index: 1;
        position: absolute;
        top: -50%;
        left: -50%;
        width: 380px;
        height: 520px;
        transform-origin:bottom right;
        background:linear-gradient(0deg, transparent, #45f3ff, #45f3ff);
        animation: animate 6s linear infinite;
    }
    
    .container::after {
        content: '';
        z-index: 1;
        position: absolute;
        top: -50%;
        left: -50%;
        width: 380px;
        height: 520px;
        transform-origin:bottom right;
        background:linear-gradient(0deg, transparent, #45f3ff, #45f3ff);
        animation: animate 6s linear infinite;
        animation-delay: -3s;
    }
    

    @keyframes animate {
        0% {
            transform: rotate(0deg);
        }

        100% {
            transform: rotate(360deg);
        }
    }

    form {
        position: absolute;
        inset: 2px;
        background: #28292d;
        padding: 40px 40px;
        border-radius: 8px;
        z-index: 2;
        display: flex;
        flex-direction: column;
        
    }
       

    h2 {
        color: #45f3ff;
        font-weight: 500;
        text-align: center;
        letter-spacing: 0.1em;
    }

    .user-input-box{
        position: relative;
        
        width: 300px;
        margin-top: 35px;
    }

    .user-input-box input {
        position: relative; width: 100%; padding: 20px 10px 10px; background: transparent; outline: none; border: none;
        color: #23242a; font-size: 1em; letter-spacing: 0.05em; transition: 0.5s; z-index: 10;
    }

    .user-input-box label {
        position: absolute; left: 0; padding: 20px 0px 10px; pointer-events: none; font-size: 1em; color: #8f8f8f;
        letter-spacing: 00.05em; transition: 0.5s;
    }

    .user-input-box input:valid ~ label,
    .user-input-box input:focus ~ label {
        color: #45f3ff; transform: translateX(0px) translateY(-34px); font-size: 0.75em;
    }

    .user-input-box i {
        position: absolute; left: 0; bottom: 0; width: 100%; height: 2px; background: #45f3ff;
        border-radius: 4px;
        overflow: hidden;
        pointer-events: none;
        z-index: 9;
        transition: 0.5s;
    }

    .user-input-box input:valid ~i,
    .user-input-box input:focus ~i {
        height: 44px;
    }

    .links {
        display: flex;
        justify-content: space-between;
    }

    .links a {
        margin: 10px 0px;
        font-size: 0.90em;
        color: #8f8f8f;
        text-decoration: beige;
    }

    .links a:hover{
        color: #8f8f8f;
    }
    .links a{
        color: #45f3ff;
    }
    
    input[type="submit"] {
        border: none;
        outline: none;
        padding: 11px 25px;
        background: #45f3ff;
        cursor: pointer;
        border-radius: 4px;
        font-weight: 600;
        width: 100px;
        margin-top: 10px;
    }

    input[type="submit"]:active {
        opacity: 0.8;
    }
        </style>
</body>
</html>