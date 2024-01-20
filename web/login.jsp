<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>login page</title>
</head>

<body>
    
    <div class="container"> 
        <form action= "login_info" method="POST" class="form" id="formid" onSubmit="return validation()">
       
            <h2>Log in</h2>
            <center><b> <span id="form" class="fill"></span></b></center>
            
            <div class="form-control">
                <input type="text" required="" class="" name="uname" id="usernameid"  autocomplete="off">
                <label> User Name</label>
                <i></i>
            </div>
            <div class="form-control">
                <input type="password" required="" class="" id="pwdid" name="pass"  autocomplete="off">
                <label>Password</label>
                <i></i>
            </div>
            <div class="links">
                
                <a href="register.jsp">Don't have an account?</a>
            </div>
            <input type="submit" value="Log in">
        </form>
    </div>
    
     <script type="text/javascript">
               
               
         function validation(){
              
                var uname  = document.getElementById('usernameid').value;
                var pwd  = document.getElementById('pwdid').value;
                
                
                   if(uname === ""||pwd === ""){
                    document.getElementById('form').innerHTML="Please fill Your Details";
                 
                       return false;
                    } 
                    
                   if(uname === ""){
                    document.getElementById('username').innerHTML="Please fill the username field";
              return false;
                 }   
                 
              if(pwd === ""){
                    document.getElementById('password').innerHTML="Please fill the password field";
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
    }

    .container {
        
        position: relative;
        width: 380px;
        height: 370px;
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
        height: 420px;
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
        height: 420px;
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

    .form-control {
        position: relative;
        
        width: 300px;
        margin-top: 35px;
    }

    .form-control input {
        position: relative; width: 100%; padding: 20px 10px 10px; background: transparent; outline: none; border: none;
        color: #23242a; font-size: 1em; letter-spacing: 0.05em; transition: 0.5s; z-index: 10;
    }

    .form-control label {
        position: absolute; left: 0; padding: 20px 0px 10px; pointer-events: none; font-size: 1em; color: #8f8f8f;
        letter-spacing: 00.05em; transition: 0.5s;
    }

    .form-control input:valid ~ label,
    .form-control input:focus ~ label {
        color: #45f3ff; transform: translateX(0px) translateY(-34px); font-size: 0.75em;
    }

    .form-control i {
        position: absolute; left: 0; bottom: 0; width: 100%; height: 2px; background: #45f3ff;
        border-radius: 4px;
        overflow: hidden;
        pointer-events: none;
        font-size: 10px;
        z-index: 9;
        transition: 0.5s;
    }

    .form-control input:valid ~i,
    .form-control input:focus ~i {
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