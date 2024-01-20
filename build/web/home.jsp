<!DOCTYPE html> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible"content="IE-edge">
    <meta name="vieport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/styles.css">
    <title>Movie booking</title>

    <style>
        
        .logout {
            
            margin-left: 1250%;
            
            
        }
        
    </style>
    
    
</head>



<body>   <!--top bar part starts-->
    <selection class="top-bar">
      <!--left content starts-->
          <div class="left-content">
            <h2 class="title">ABC<br>Movies</h2>
              <ul class="navigation">
                <li><a class="active" href="home.jsp">Home</a></li>
                <li><a href="feedback.jsp">Feedback</a></li>
                <li><a href="cancel_booking.jsp">Cancel booking</a></li>
                <li><a href="login.jsp" class="logout"><b>Logout</b></a></li>
              </ul>
          </div>
                <!--left content ends-->
    </selection>
            <!--topbar part ends here-->

            <!--main container starts here-->
    <selection class ="main-container">
      <!--sidebar starts-->
        <div class="sidebar">
            <form action="#">
              <!--categories in the sidebar starts-->
              <div class = "sidebar-groups">
                    <h3 class="sg-title">Categories</h3><br>
                    <input type="checkbox" id="adventure" name="adventure" value="adventure">
                    <label for="adventure">Adventure</label><br>
                    <input type="checkbox" id="action" name="action" value="action">
                    <label for="action">Action</label><br>
                    <input type="checkbox" id="animation" name="animation" value="animation">
                    <label for="animation">Animation</label><br>
                    <input type="checkbox" id="comedy" name="comedy" value="comedy">
                    <label for="comedy">Comedy</label><br>
                    <!--<input type="checkbox" id="science" name="science" value="science">
                    <label for="science">SCIENCE</label><br>-->
                    <input type="checkbox" id="horror" name="horror" value="horror">
                    <label for="horror">Horror</label><br>
                    <input type="checkbox" id="history" name="history" value="history">
                    <label for="history">History</label><br>
               
              </div><br>
              <!--categories in the sidebar ends-->

                           <!--language in the sidebar starts-->
              <div class = "sidebar-groups">
                    <h3 class="sg-title">Language</h3><br>
                    <input type="checkbox" id="english" name="english" value="english">
                    <label for="english">English</label><br>
                   <!--<input type="checkbox" id="spanish" name="spanish" value="spanish">
                    <label for="spanish">Spanish</label><br>--> 
                    <input type="checkbox" id="hindi" name="hindi" value="hindi">
                    <label for="hindi">Hindi</label><br>
                </div><br>
                      <!--Apply button starts-->  
                <div class = "sidebar-groups">
                  <a href="#" class="btn-l btn">Apply Filters</a>
                </div>
                            <!--Apply button ends-->
                </form>
                </div>
       <!--sidebar ends here-->

        
       <div class="movies-container" > 
        <div class="upcoming-img-box">
                 <img src="assets/images/John-Wick-4.png" alt="">
                 <p class="upcoming-title">Upcoming Movie</p>
            <div class="buttons">
                 <a href="seat_selection_page.jsp" class="btn">Book Now</a>
              </div>
            </div>
             
           
            <div class="hero-container">
   
              <!-- booking for Avatar-->
               <div class="current-movie-container">
                  <div class="poster-container">
                    <a href="#"><img src="assets/images/Avatar-2.png" class="poster" /></a>
                  </div>
                  <div class="ticket-container">
                    <div class="ticket__content">
                        <h4 class="ticket__movies-title"> Avatar 2</h4>
                        <p class="ticket__movie-solgan">
                            I can protect this family. That I can do. Wherever we go, this family is our fortress.
                        </p>
                        <p class="ticket__current-price">Rs 750</p>
                        <!--<p class="ticket__old-price">Rs 1100</p>-->
                        <button class="ticket__buy-btn">Book Now</button>
            
                    </div>
                  </div>
               </div>
            
            <!-- booking for black panther-->
               <div class="current-movie-container">
                <div class="poster-container">
                  <a href="#"><img src="assets/images/black-panther-2.png" class="poster" /></a>
                </div>
                <div class="ticket-container">
                  <div class="ticket__content">
                      <h4 class="ticket__movies-title"> Black Panther 2</h4>
                      <p class="ticket__movie-solgan">
                        Wakanda Forever! Long Live Wakanda! For Honor, For Legacy, For Wakanda!         
                     </p>
                      <p class="ticket__current-price">Rs 650</p>
                      <!--<p class="ticket__old-price">Rs 950</p>-->
                      <button class="ticket__buy-btn">Book Now</button>
            
                  </div>
                </div>
             </div>
            
             
            <!--booking for Medieval--> 
            <div class="current-movie-container">
                <div class="poster-container">
                  <a href="#"><img src="assets/images/Medieval.png" class="poster" /></a>
                </div>
                <div class="ticket-container">
                  <div class="ticket__content">
                      <h4 class="ticket__movies-title"> Medieval</h4>
                      <p class="ticket__movie-solgan">
                        Nothing good ever comes of violence.         
                    </p>
                      <p class="ticket__current-price">Rs 650</p>
                      <!--<p class="ticket__old-price">Rs 950</p>-->
                      <button class="ticket__buy-btn">Book Now</button>
              
            
                  </div>
                </div>
             </div>
            
            
             <!-- booking for Minions-->
             <div class="current-movie-container">
                <div class="poster-container">
                  <a href="#"><img src="assets/images/Minions.png" class="poster" /></a>
                </div>
                <div class="ticket-container">
                  <div class="ticket__content">
                      <h4 class="ticket__movies-title"> Minions</h4>
                      <p class="ticket__movie-solgan">
                        The rise of Guru!        
                    </p>
                      <p class="ticket__current-price">Rs 550</p>
                      <!--<p class="ticket__old-price">Rs 800</p>-->
                      <button class="ticket__buy-btn">Book Now</button>
            
                  </div>
                </div>
             </div>
            

              <!-- booking for Pathaan-->
              <div class="current-movie-container">
                <div class="poster-container">
                  <a href="#"><img src="assets/images/Pathaan.png" class="poster" /></a>
                </div>
                <div class="ticket-container">
                  <div class="ticket__content">
                      <h4 class="ticket__movies-title"> Puss-in-boots</h4>
                      <p class="ticket__movie-solgan">
                        ?Dying is not a solution.. I want to live with You..!?       
                    </p>
                      <p class="ticket__current-price">Rs 550</p>
                      <!--<p class="ticket__old-price">Rs 800</p>-->
                      <button class="ticket__buy-btn">Book Now</button>
            
                  </div>
                </div>
             </div>
            
             <!-- booking for Smile-->
             <div class="current-movie-container">
                <div class="poster-container">
                  <a href="#"><img src="assets/images/Smile.png" class="poster" /></a>
                </div>
                <div class="ticket-container">
                  <div class="ticket__content">
                      <h4 class="ticket__movies-title"> Smile</h4>
                      <p class="ticket__movie-solgan">
                        Once you see it, it's too late. Pass it on. The new face of fear.
                    </p>
                      <p class="ticket__current-price">Rs 550</p>
                      <!--<p class="ticket__old-price">Rs 800</p>-->
                      <button class="ticket__buy-btn">Book Now</button>
            
                  </div>
                </div>
             </div>
            
            
             <!-- booking for uncharted-->
             <div class="current-movie-container">
                <div class="poster-container">
                  <a href="#"><img src="assets/images/uncharted.png" class="poster" /></a>
                </div>
                <div class="ticket-container">
                  <div class="ticket__content">
                      <h4 class="ticket__movies-title"> Uncharted </h4>
                      <p class="ticket__movie-solgan">
                        Greatness From Small Beginnings ...
                    </p>          
                        <p class="ticket__current-price">Rs 650</p>
                      <!--<p class="ticket__old-price">Rs 950</p>-->
                      <button class="ticket__buy-btn">Book Now</button>
            
                  </div>
                </div>
             </div>    
            </div>
    </selection>
</body>

</html>
