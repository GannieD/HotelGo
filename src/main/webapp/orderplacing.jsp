<%-- 
    Document   : orderplacing
    Created on : 14/09/2019, 11:28:10 PM
    Author     : zhangmengfan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
          Booking Confirmation  
        </h1>
        <%@ include file="header.html" %> <br>
        
        <img src="images/hilton.jpg" alt="" width="500" height="370"><br>
        
        <a href ="hilton.jsp">Hilton Sydney </a>
        <p style="color: black;">
            488 George Street, Sydney, NSW, 2000, Australia</p>
        <p style="color: black">
            Tel: +61-2-9266-2xxx
        </p>  
        
        <p>
            Check in: 16 September 
        </p>
        <p>
            Check out: 20 September 
        </p>
        <p>Staying 4 nights </p>
        <p>Total fees: AUD 1040.0
            <p style="color: #777">Will be paid on arrival.</p>
        </p>
        
        <p>_______________________________________________________________________________________</p>
                <div  class="verticalDiv">
                    <h2 style="color: #777">Final step to Book</h2>
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
                    <input id="datetimepicker1" type="text" date-time-picker="date" placeholder="mm/yy" data-constraints="@Required" class="form-control">
                    <p>CVC-code <span style="color: red;">*</span></p>
                    <input class="bar" style="width:50px;">
                </div> 
            </div>
            <br>
            <br>
            
        <form action="finish.jsp">
            <pre>
                <input type="submit" value="Book Now "> 
            </pre>
        </form>
  
    </body>
</html>
