

<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.demo.controller.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en" >
    <head>  
        <meta charset="UTF-8">
        <meta name="format-detection" content="telephone=no">
        <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>HotelGo-Login</title>
        <script src="https://code.jquery.com/jquery-2.1.4.min.js">
        </script>
        <script src="https://cdn.rawgit.com/nnattawat/flip/master/dist/jquery.flip.min.js">
        </script>
        <script>
           
            $(function(){
                 $("#card").flip({
                trigger: 'manual',
                speed: 400,
                reverse: true,

              });
            });
           
            function goSignUpBtnAction()
            {
                document.getElementById("card").height = "400px";
                $("#card").flip(true);
                
              
            }
            function goSignInBtnAction()
            {
                $("#card").flip(false);
            }
            
            var userFilledAll = false
            function signUpBtnAction()
            {
               if(userFilledAll == false)
               {
                    var re = /^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
                    var email = document.getElementById("email").value;

                    var firstPw = document.getElementById("firstPw").value;
                    var confirmPw =  document.getElementById("confirmPw").value;

                    if (!re.test(email))
                    {
                      $("#emailError").show();
                      $("#signInText").hide();
                      document.getElementById("email").value = "";
                      return false;
                    }
                    if(firstPw == "")
                    {
                       $("#passwordEmptyError").show();
                       $("#signInText").hide();
                    }
                    if(confirmPw == "")
                    {
                       $("#confirmEmptyError").show();
                       $("#signInText").hide();
                    }


                    if(firstPw != "" && confirmPw != "" && re.test(email)) 
                    {
                        if(firstPw != confirmPw)
                        {
                            $("#confirmError").show();
                            $("#signInText").hide();
                            return false;
                        }
                        else
                        {
                            $("#passwordDiv").slideUp()
                            $("#infoDiv").slideDown()
                            document.getElementById("nextStepBtnText").innerHTML = "Sign up now"
                            userFilledAll = true
                            return true;
                        }
                    }
                } 
                else
                {
                    $("#signUpForm").submit();
                }
            }
            function signInBtnAction()
            {

                
                var username = document.getElementById("username").value;
                var password =  document.getElementById("password").value;
                
                if(username == "")
                {
                    $("#loginEmailEmpty").show()
                }
                if(password == "")
                {
                    $("#loginPasswordEmpty").show()
                }
                if(username != "" && password != "")
                {
                    $.ajax({
                            url:"ConnServlet",
                            data:{
                                username: document.getElementById("username").value,
                                password: document.getElementById("password").value,
                                forwardType: "login"
                            },
                            type: "POST",
                            beforeSend: function () {
                                document.getElementById("backBoxContent").style.display = "none";
                                $("#loadingLogo").show();
                                $("#card").flip(true);
                            },
                            success:function(correctInfo){
                                if(correctInfo == "true")
                                {
                                    document.getElementById("checkingText").innerHTML = "Welcome back ! " + username.toString();
                                    window.location.href = "index.jsp";
                                }
                                else
                                {
                                    $("#card").flip(false, showBackContent);
                                    //$("#card").flip(false);
                                    
                                }
                            },
                            error:function(request){
                                alert("error");
                            }
                       
                            });
                   
                }
            }
            function showBackContent()
            {
                document.getElementById("backBoxContent").style.display = "block";
                $("#loadingLogo").hide();
                $("#loginPasswordWrong").show();
                $("#forgotText").show();
                
            }
            function hideError()
            {
                $("#loginPasswordWrong").hide();
                $("#emailError").hide();
                $("#loginPasswordEmpty").hide()
                $("#loginEmailEmpty").hide()
                $("#confirmError").hide()
                $("#confirmEmptyError").hide()
                $("#passwordEmptyError").hide()
                $("#signInText").show();
            }
            function forgotPasswordAction()
            {
                $("#card").flip(true);
                //$("#fbackBoxContent").hide()
                document.getElementById("backBoxContent").style.display = "none";
                $("#fogotPasswordCard").show()
                
                
            }
            function nextStepBtnAction()
            {
                //document.getElementById("signUpForm").style.display = "none"
                //document.getElementById("signUpInformationForm").style.display = "block"
                
            }

        </script>    
         <style type="text/css">
             body
             {
                background: #f1f5fb;
                padding: 20px;
             }
             
             .cardBox
            {            
                position: relative;
                text-align: center;
                margin-left: auto;
                margin-right: auto;
                width: 350px;
                height: 420px;
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
             .signBtn
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
            <div id="frontBox" class="front" style="top:70px;">
                <div id="frontBoxContent" class="boxText">
                <h1>Sign in</h1>
                <p id="tipText">You can sign in using your Hotelgo account to access our services.</p>
              
                <p>Email address</p>
                <br> 
                <form id="signInForm" action="ConnServlet" method="post" style="position:relative; top:-18px;">
                <input id="forwardType" name="forwardType" value="login" style="display:none">
                <input class="loginBar" id="username" name="username" oninput="hideError()">
                <p id="loginEmailEmpty" style="display:none; color:red;">Plase enter your Email address</p>
                <p>Password</p>
                <input class="loginBar" type="password" id="password" name="password" oninput="hideError()"> 
                <p id="loginPasswordEmpty" style="display:none; color:red;">Plase enter your password</p>
                <p id="loginPasswordWrong" style="display:none; color:red;">The combination of email address and password you entered does not match.</p>
                </form>
                </div>
               
                   <button class="signBtn" onclick="signInBtnAction()"><span id="btnText"class="text">Sign in</span></button>
                   
                   <p id="registerText" class="boxText" style="position: relative; top: 30px; text-align: center;" >Don't have an account yet? <span style="cursor: pointer; color: #c5464a;" onclick="goSignUpBtnAction()" id="goSignUpBtn"><b>Sign up</b></span></p>
                   <p id="forgotText" class="boxText" style="position: relative; top: 30px; text-align: center; cursor: pointer; display: none;" onclick="forgotPasswordAction()">Forget your password?</p>
            </div>
            
             <div id="backBox" class="back" style="top:70px;">
                <div id="backBoxContent" class="boxText">
                <h1>Fast registration</h1>
                <p id="tipText">Spend only 30 seconds to create your HotelGo account today</p>
              
                
                
                <br>
                <form id="signUpForm" action="ConnServlet" method="post" style="position:relative; top:-18px;">
                    <div id="passwordDiv">
                        <p>Email address</p>
                        <input id="forwardType" name="forwardType" value="register" style="display:none">
                        <input class="loginBar" id="email" name="newUsername" oninput="hideError()">
                        <p id="emailError" style="display:none; color:red;">Plase enter correct Email address<p>
                        <p>Password</p>
                        <input class="loginBar" type="password" id="firstPw" value="" name="newPassword" oninput="hideError()">
                        <p id="passwordEmptyError" style="display:none; color:red;">Plase enter your new password<p>
                        <p id="confirmText" style="">Confirm Password</p>
                        <input class="loginBar" id="confirmPw" type="password" value="" oninput="hideError()">
                        <p id="confirmError" style="display:none; color:red;">The passwords you entered did not match, please try again<p>
                        <p id="confirmEmptyError" style="display:none; color:red;">Please confirm your password<p>
                    </div>
                    <div id="infoDiv" style="display:none" >
                        <p>First name</p>
                        <input class="loginBar" id="firstName" value="" name="firstName" oninput="hideError()">
                        <p>Last name</p>
                        <input class="loginBar" id="lastName" value="" name="lastName" oninput="hideError()">
                        <p>Contact number</p>
                        <input class="loginBar" id="phone" value="" name="phone" oninput="hideError()">
                    </div>
                
                </form>
                
                
                   <button id="signUpNowBtn" class="signBtn" onclick="signUpBtnAction()"><span id="nextStepBtnText"class="text">Next step</span></button>
                   <p id="signInText" class="boxText" style="position: relative; float: top; top: 30px; text-align: center; font-size:100%;" >Already have an account? <span style='cursor: pointer; color: #c5464a;' id="goSignInBtn" onclick='goSignInBtnAction()'><b>Sign in</b></span>
                </div>
                <div id="loadingLogo" align="center" style="display:none;">
                    <img style="position:relative; top:50px;" src="loading.gif" width="100%" height="100%">
                    <p id="checkingText" class="boxText" style="text-align:center;">hotelgo.com provides your best experience</p>
                </div>
                <div id="fogotPasswordCard" class="boxText" align="center" style="display:none;">   
                    <h1>Password recover</h1>
                    <p id="tipText">Quickly find back your password</p>
                    <p>Email address</p>
                    <form id="forgotPasswordForm" action="ConnServlet" method="post" style="position:relative; top:-18px;">
                    <input id="forwardType" name="forwardType" value="forgotPassword" style="display:none">
                    <input id="forgotEmail" style="" class="loginBar"  name="username" oninput="hideError()">
                    </form>
                </div>
            </div>
            
        </div>
     
    </body>

</html>
