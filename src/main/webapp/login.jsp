

<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.demo.controller.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>Login</title>
        <script src="https://code.jquery.com/jquery-2.1.4.min.js">
        </script>
        <script src="https://cdn.rawgit.com/nnattawat/flip/master/dist/jquery.flip.min.js">
        </script>
        <script>
           
            $(function(){
                 $("#card").flip({
                trigger: 'manual'
              });
            });
           
            function signUpBtnAction()
            {
                document.getElementById("card").height = "400px";
                $("#card").flip(true);
                
                /* if(inSignUp == false)
                {
                    $("#confirmText").show();
                    $("#confirmInput").show();
                    document.getElementById("tipText").innerHTML = "Create your Hotelgo.com account today"
                    document.getElementById("btnText").innerHTML = "Sign up"
                    document.getElementById("registerText").innerHTML = "Already have an account? <span style='cursor: pointer; color: green;' onclick='signUpBtnAction()'><b>Sign in</b></span>"
                    document.getElementById("signInText").innerHTML = "Sign up"
                    inSignUp = true
                }
                else
                {
                    $("#confirmText").hide();
                    $("#confirmInput").hide();
                    document.getElementById("tipText").innerHTML = "You can sign in using your Hotelgo.com account to access our services."
                    document.getElementById("btnText").innerHTML = "Sign in"
                    document.getElementById("registerText").innerHTML = "Don't have an account yet? <span style='cursor: pointer; color: #c5464a;' onclick='signUpBtnAction()'><b>Sign up</b></span>"
                    document.getElementById("signInText").innerHTML = "Sign in"
                    inSignUp = false
                }
                */
            }
            function goSignInBtnAction()
            {
                $("#card").flip(false);
            }
            function signBtnAction()
            {
     
                
                if(inSignUp == false)
                {
                   
                }
                else
                {
                    $("#signForm").submit();
                    
                    var firstPw = document.getElementById("firstPw").value.toString()
                    var confirmPw =  document.getElementById("confirmPw").value.toString()
                    
                    if(firstPw != confirmPw)
                    {
                        alert("Please confirm your password ")
                    }
                    else
                    {
                        
                    }
                }
            }

        </script>    
         <style type="text/css">
             .cardBox
            {            
                position: relative;
                text-align: center;
                margin-left: auto;
                margin-right: auto;
                width: 350px;
                height: 400px;
                text-align: center;
            }
            .front 
            {
                background: white;
                position: relative;
                text-align: center;
                margin-left: auto;
                margin-right: auto;
                top: 20px;
                width: 350px;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                padding: 20px;
                padding-bottom: 50px;
    
            }
            .back 
            {
                background: white;
                position: relative;
                text-align: center;
                margin-left: auto;
                margin-right: auto;
                top: 20px;
                width: 350px;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                padding: 20px;
                padding-bottom: 50px;
    
            }
            .boxText
            {
                font: .8em Arial, Tahoma, Verdana;
                background: #fff url(../images/bg.gif) repeat-x; 
                color: black;
                text-align: left;
            }
            .loginBar
            {
                border:1px solid gray;
                border-radius:5px;
                background:transparent;
                color:black;
                width:345px;
                height:30px;
                top:0;
                right:0;
            }
             .signInBtn
            {
                position:relative;
                background:#c5464a;
                border:none;
                border-radius:5px 5px 5px 5px;
                width:350px;
                height:40px;
                top:15px;
                right:0px;
                cursor:pointer
          
            }
            .text
            {
                font-size:16px;
                color:#F9F0DA;
            }
            
        </style>
    </head>
    <%
        String emailErr = request.getParameter("emailErr");
        String passErr = request.getParameter("passErr");
        String emptyErr = request.getParameter("empty");
    %>
    
    <body>
        <div id="card" class="cardBox">
            <div id="frontBox" class="front" style="top:100px;">
                <div class="boxText">
                <h1 id="signInText">Sign in</h1>
                <p id="tipText">You can sign in using your Hotelgo account to access our services.</p>
              
                <p>Email address</p>
                <br>
                <form id="signForm" action="ConnServlet" method="post" style="position:relative; top:-18px;">
                <input id="forwardType" value="register" style="display:none">
                <input class="loginBar" id="username">
                <p>Password</p>
                <input class="loginBar" id="password">  
                </form>
                </div>
                   <button class="signInBtn" onclick="signBtnAction()"><span id="btnText"class="text">Sign in</span></button>
                   <p id="registerText" class="boxText" style="position: relative; float: top; top: 30px; text-align: center;" >Don't have an account yet? <span style="cursor: pointer; color: #c5464a;" onclick="signUpBtnAction()" id="signUpBtn"><b>Sign up</b></span></p>
         
            </div>
            
             <div id="backBox" class="back" style="top:100px;">
                <div class="boxText">
                <h1 id="signInText">Fast registration</h1>
                <p id="tipText">Spend only 30 seconds to create your HotelGo account today</p>
              
                <p>Email address</p>
                <br>
                <form id="signForm" action="ConnServlet" method="post" style="position:relative; top:-18px;">
                <input id="forwardType" value="register" style="display:none">
                <input class="loginBar" id="email">
                <p>Password</p>
                <input class="loginBar" id="firstPw">
                <p id="confirmText" style="">Confirm Password</p>
                <input id="confirmInput" id="confirmPw" style="" class="loginBar">
                </form>
                </div>
                   <button class="signInBtn" onclick="signBtnAction()"><span id="btnText"class="text">Sign up now</span></button>
                   <p id="registerText" class="boxText" style="position: relative; float: top; top: 30px; text-align: center;" >Already have an account? <span style='cursor: pointer; color: #c5464a;' id="goSignInBtn" onclick='goSignInBtnAction()'><b>Sign in</b></span>
            </div>
        </div>

    </body>

</html>
