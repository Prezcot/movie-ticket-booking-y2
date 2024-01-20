<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        <link href="index.css" rel="stylesheet">
        <title>DMovies</title>
        <%
            String [] seat_availability = new String[8];
            try{
               
                Connection con = null;
                Statement st = null;
                ResultSet rs = null;
                int counter = 0;
                Class.forName("com.mysql.jdbc.Driver");
                con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/movie_database","root","");
                st = con.createStatement();
  
                String query = "select * from seats";
                rs = st.executeQuery(query);
                while (rs.next()){
                    seat_availability[counter] = rs.getString(2);
                    counter++;
                    
                    
                }
                
            }
            catch(Exception e){
                out.print(e);
            
            }

               
        %>
    </head>
    <body>
        <div class ="top_panel"></div>  
        <div class="timer"><p>Time Left: </p><input type="text" value="300" id="time"></div>
        <div class="seat_selection">
            <div class="screen"></div>
            <!--<div class="seat_preview">
                <div class="seat"><p>Available</p></div>
                <div class="seat occupied"><p>Occupied</p></div>
                <div class="seat selected"><p>Selected</p></div>
            </div>-->
            <div class="seats">
                <form action="change_database" id="seat_form" method="post">
                    
                    <!-- required to pass the data into the servlet as input tags -->
                    
                    <input type="hidden" id = "1"  value="0" name="1"></input>
                    <input type="hidden" id = "2"  value="0" name="2"></input>
                    <input type="hidden" id = "3"  value="0" name="3"></input>
                    <input type="hidden" id = "4"  value="0" name="4"></input>
                    <input type="hidden" id = "5"  value="0" name="5"></input>
                    <input type="hidden" id = "6"  value="0" name="6"></input>
                    <input type="hidden" id = "7"  value="0" name="7"></input>
                    <input type="hidden" id = "8"  value="0" name="8"></input>
                    <!--<input type="submit" value ="JUST FOR TESTING *REMOVE*">-->
                    
                    



                    
                    
                <div class="row">
                    <div class="<%=seat_availability[0]%>">1</div>
                    <div class="<%=seat_availability[1]%>">2</div>
                    <div class="<%=seat_availability[2]%>">3</div>
                    <div class="<%=seat_availability[3]%>">4</div>
                    <div class="<%=seat_availability[4]%>">5</div>
                    <div class="<%=seat_availability[5]%>">6</div>
                    <div class="<%=seat_availability[6]%>">7</div>
                    <div class="<%=seat_availability[7]%>">8</div>           
                </div>
                </form>
                <div id="no_of_selected_seats">Seats Selected: 0</div>

                <script src="https://www.paypal.com/sdk/js?client-id=sb&enable-funding=venmo&currency=USD" data-sdk-integration-source="button-factory"></script>
                <div id="smart-button-container">
                    <div style="text-align: center;">
                      <div id="paypal-button-container"></div>
                    </div>
                </div>

            </div>
        </div>
        
    </body>
    


<script>
        
        
const row = document.querySelector('.row');
let no_of_selected_seats = document.getElementById('no_of_selected_seats');

var selected_seats_counter = 0;

window.onload = function() {
                timer();
        };

function timer(){
    time = document.getElementById("time").value - 1;
    document.getElementById("time").value = time;
    if (time === 0){
        window.location.href = "kicked.html";
    }
    if (time > 0){
        setTimeout(timer,1000);
    }
}




row.addEventListener('click',(e) => {
    if (e.target.classList.contains('seat') && !e.target.classList.contains('occupied')){
        e.target.classList.toggle('selected');          
        let change_id = e.target.innerHTML;
        if (e.target.classList.contains('selected')){
            selected_seats_counter++;
            no_of_selected_seats.innerHTML = "Seats Selected: " + selected_seats_counter;
            document.getElementById(change_id).value = 1;                     
            /*    
            let selected_seat = e.target.innerHTML;
            
            
            $.ajax({
                url: '/java_project/change_database',
                data: {
                    selected_seat_serverside: "testing"
                },
                type: 'POST'
            });
            */
        }
        else{
            selected_seats_counter--;
            no_of_selected_seats.innerHTML = "Seats Selected: " + selected_seats_counter;
            document.getElementById(change_id).value = 0;
        }
    }
});


//paypal js stuff



    function initPayPalButton() {
      paypal.Buttons({
        style: {
          shape: 'pill',
          color: 'black',
          layout: 'horizontal',
          label: 'paypal',
          tagline: false
          
        },

        createOrder: function(data, actions) {
          return actions.order.create({
            purchase_units: [{"amount":{"currency_code":"USD","value":selected_seats_counter}}]
          });
        },

        onApprove: function(data, actions) {
          return actions.order.capture().then(function(orderData) {
            
            // Full available details
            console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

            // Show a success message within this page, e.g.
            const element = document.getElementById('paypal-button-container');
            document.getElementById("seat_form").submit();

            // Or go to another URL:  actions.redirect('thank_you.html');
            
          });
        },

        onError: function(err) {
          console.log(err);
        }
      }).render('#paypal-button-container');
    }
    initPayPalButton();
</script>

</html>