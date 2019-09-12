
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
         .cardBox 
            {
                position: relative;
                text-align: center;
                margin-left: auto;
                margin-right: auto;
                top: 20px;
                width: 700px;
                height: 1000px;
                box-shadow: 0 4px 4px 0 rgba(0, 0, 0, 0.1), 0 6px 100px 0 rgba(0, 0, 0, 0.19);
                padding: 50px;
                padding-bottom: 50px;
            }
           .textStyle
           {
                font: .8em Arial, Tahoma, Verdana;
                background: #fff url(../images/bg.gif) repeat-x; 
                color: black;

           }
           .verticalDiv
           {
               position: relative; 
               float: left; 
               width: 100%; 
               text-align: left;
              
           }
           .bar
           {
                border:1px solid gray;
                border-radius:5px;
                background:transparent;
                color:white;
                width:345px;
                height:23px;
                top:0;
                right:0;
           }
        </style>
    </head>
    <body>
            <div class="cardBox">
                <h2 style="text-align: left">Booking details</h2>
                <div  class="verticalDiv" >
                <div  style="position: relative; float: left; width: 30%;">
                    <img style="width: 200px; height: 200px;" src="https://q-ec.bstatic.com/xdata/images/hotel/square200/121798349.jpg?k=c78d3ab0e0380807cf27a8b9581e629ca69950379494745e197bd3e74eb18353&o=">
                </div>
                 <div class="textStyle" style="position: relative; float: left; left: 50px; top: -20px; width: 70%; text-align: left;">
                    <h1>Sofitel Sydney Darling Harbour</h1>
                    <p style="color: #777;">12 Darling Drive, Sydney CBD, 2000 Sydney, Australia</p>
                    <p style="color: green;"><b>This property has an excellent location. Guests have rated it 9.5!</b></p>
                    <p>2 other people looked for your dates in the last 10 minutes</p>
                </div>
                </div>
                <div  class="verticalDiv">
                    <div style="position: relative; float: left; width: 30%;" class="textStyle">
                    <p><b>Check-in:</b></p>
                    <p><b>Friday, 23 August 2019</b> from 15:00</p>
                    <p><b>Check-out:</b></p>
                    <p><b>Saturday, 28 August 2019</b> until 11:00</p>
                    <p><b>Total length of stay:</b></p>
                    <p>5 nights</p>
                    </div>
                    <div style="position: relative; float: left; left: 50px; top: 10px; width: 70%;">
                        <img src="date.png" width="450px">
                    </div>
                </div>
                <p>_______________________________________________________________________________________</p>
                <div  class="verticalDiv">
                    <h2 style="color: #777">How do you want to pay?</h2>
                    <p>Cardholder's name <span style="color: red;">*</span></p>        
                    <input class="bar" style="width:200px;">
                    <p>Card type <span style="color: red;">*</span></p> 
                    <select>
                    <option>-- Select --</option>    
                    <option>American Express</option>
                    <option>Visa</option>
                    <option>MasterCard</option>
                    <option>UnionPay credit card</option>
                    </select>
                    <p>Card number <span style="color: red;">*</span></p>
                    <input class="bar" style="width:200px;">
                    <p>Expiry date <span style="color: red;">*</span></p>
                    
                    <p>CVC-code <span style="color: red;">*</span></p>
                    <input class="bar" style="width:50px;">
                </div> 
            </div>
            <br>
            <br>
            <div style="text-align: center;">
            <p>About Hotelgo.com | About SpaceX team | ASD project practice</p>
            </div>

    </body>
</html>
