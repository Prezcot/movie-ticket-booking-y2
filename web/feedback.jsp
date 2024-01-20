<%-- 
    Document   : feedback
    Created on : Dec 11, 2022, 6:44:23 PM
    Author     : chari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible"content="IE-edge">
        <meta name="vieport" content="width=device-width,initial-scale=1.0">
        <title>Feedback</title>
    </head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Rubik:wght@300&display=swap');

        * { 
            margin: 0;
            padding: 0;
            box-sizing:border-box;
            font-family: 'Rubik', sans-serif;
         }

         body{
            background-color: #1e1f26;
            display: grid;
            grid-template-columns: 1300px;
            justify-content: space-evenly;
        }

        .title{
            margin-right: 1rem;
            margin-top: 1rem;
            margin-bottom: 1rem;
            color:#cd8c38;
        }



        .title-2{
            color: #cd8c38;
            margin-left: 35rem; 
        }
  
        input
        {
            padding-top: 5%;
            padding-bottom: 5%;
            padding-left: 5%;
            padding-right: 5%;
            
        }
        input#msg
        {
            padding-top: 10%;
            padding-bottom: 20%;
            padding-left: 5%;
            padding-right: 30%;
            
        }
    </style>
    <body>
        <selection class="top-bar">
          <div class="left-content">
            <h1 class="title">ABC<br>Movies</h1>


              <div class="center-content">
                <h2 class="title-2">FEEDBACK FORM</h2>
                <br>
                <center>
                <table name="frm" border="0">
                    <form name="feedbackform" action="feedback_servlet" method="post">
                        <tr>
                            <td><font color="orange">Subject: </font></td>
                            <td><input type="text" name="subject"></td>
                        </tr>
                        <tr>
                            <td><font color="orange">Feedback: </font></td>
                            <td><input type="text" name="message" id="msg"></td>  
                        </tr>
                        <tr>
                            <td></td>
                            <td colspan="2"><input type="submit" value="Submit Feedback"></td>
                        </tr>
                        
                    </form>
                </table>
                </center>
              </div>
          </div>
          <div class="footer"> </div>
          <ul class="footer"></ul>
        </selection>
    </body>
</html>
