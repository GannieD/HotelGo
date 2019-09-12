
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
           
                <div  class="verticalDiv">
                    <h2 style="color: #777">How do you want to pay?</h2>
                    <p>Name on Card <span style="color: red;">*</span></p>        
                    <input class="bar" style="width:200px;">
                    <p>Card Type <span style="color: red;">*</span></p> 
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
                    
                    <p>CVC <span style="color: red;">*</span></p>
                    <input class="bar" style="width:50px;">
                    <div class="form-group">
                        <input type="submit" value="Login" class="login-button"/>                    
                    </div>
                </div> 
            </div>
            <br>
            <br>
            <div style="text-align: center;">
          
            </div>

    </body>
</html>

