<%-- 
    Document   : cancel_booking
    Created on : Dec 9, 2022, 4:43:12 PM
    Author     : Janindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Cancel Booking</title>
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
                <h2 class="title-2">CANCEL BOOKING</h2>
                <br>
                <center>
                <table name="cncel" border="0">
                    <form action="cancel_booking" class="seat_cancellation_form" method="post">
                        <tr>
                            <td><font color="orange">Enter seat to remove: </font></td>
                            <td><input type="text" name ="seat_to_remove"></td>
                        </tr> 
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Cancel Booking"></td>
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
