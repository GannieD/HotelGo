<%-- 
    Document   : newjsp
    Created on : 2019-9-15, 14:35:37
    Author     : Xinghao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <title>HotelGo</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="css/demo.css">
        <meta name="format-detection" content="telephone=no">
        <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
   
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Montserrat:400,700%7CLato%7CRoboto">
    <link rel="stylesheet" href="css/style.css">
    </head>
    
    
    <body>
       
      <div class="page">
      <!-- Page Header-->
        <header class="page-head">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap">
          <nav data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fullwidth" data-md-layout="rd-navbar-fullwidth" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-sm-stick-up-offset="150px" data-lg-stick-up-offset="150px" class="rd-navbar">
            <div class="rd-navbar-inner">      
              <!-- RD Navbar Panel-->
              <div class="rd-navbar-wrapper">
                <div class="rd-navbar-panel">
                  <!-- RD Navbar Toggle-->
                  <button data-rd-navbar-toggle=".rd-navbar-nav-wrap" class="rd-navbar-toggle"><span></span></button>
                  <!-- RD Navbar Brand-->
                  <div class="rd-navbar-brand"><a href="index.html" class="brand-name">
                      <div class="logo"><img src="images/logo.png" alt=""></div></a></div>
                </div>
                <div class="rd-navbar-nav-wrap">
                  <!-- RD Navbar Nav-->
                  <ul class="rd-navbar-nav">
                    <li><a href="hotels.html"><span>hotels</span><span class="triangle"></span></a></li>
                   <li><a href="#"><span>about</span><span class="triangle"></span></a></li>
                    <li><a href="#"><span>contacts</span><span class="triangle"></span></a></li>
                    <li><a class="navbar-brand" onclick="window.location='register.jsp'" data-toggle="tab" id="Register-Tab">Register</a></li>
                    <li>  <a class="navbar-brand" onclick="window.location='login.jsp'" href="" data-toggle="tab" id="Login-Tab">Login</a></li>
                  </ul>
                </div><a href="#" class="btn btn-orange-2 btn-lg btn-icon"><span class="icon icon-lg icon-white material-icons-location_on"></span><span>find us</span></a>
              </div>
            </div>
          </nav>
        </div>
      </header>
     <!-- Page Content-->
      <main class="page-content"> 
        <section class="section-sm-95 bg-image bg-image-2 text-center section-sm-bottom-100 section-60">
          <div class="shell">
            <h1 class="txt-white">Hotels</h1>
            <div class="range">
              <div class="cell-lg-8 cell-lg-preffix-2">               
                <!-- RD Mailform-->
                <form class="rd-mailform text-left form-search">
             
                  <div class="range offset-top-22">
                    <div class="cell-xs-12">
                      <div class="form-group select2-custom">
                        <label for="from" class="form-label">Destination</label>
                        <select id="from" data-placeholder="Where are you departing from?" data-minimum-results-for-search="Infinity" data-constraints="@Required" class="form-control select-filter">
                          <option>Where are you looking for?</option>
                          <option>Sydney</option>
                          <option>Melbourne</option>
                          <option>Gold Coast</option>
                         
                        </select>
                      </div>
                    </div>
                    <div class="cell-sm-6 offset-top-45">
                      <div class="form-group date">
                        <label for="datetimepicker1" class="form-label">Check in</label>
                        <input id="datetimepicker1" type="text" data-time-picker="date" placeholder="mm/dd/yyyy" data-constraints="@Required" class="form-control"><span class="material-icons-event icon icon-md icon-primary"></span>
                      </div>
                    </div>
                    <div class="cell-sm-6 offset-top-45">
                      <div class="form-group date">
                        <label for="datetimepicker2" class="form-label">Check out</label>
                        <input id="datetimepicker2" type="text" data-time-picker="date" placeholder="mm/dd/yyyy" data-constraints="@Required" class="form-control"><span class="material-icons-event icon icon-md icon-primary"></span>
                      </div>
                    </div>
                    <div class="cell-xs-6 cell-md-4 offset-top-45">
                      <div class="form-group">
                        <!--Select 2-->
                        <label for="select-1" class="form-label">Rooms</label>
                        <select id="select-1" data-placeholder="-" data-minimum-results-for-search="Infinity" class="form-control select-filter">
                          <option>-</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </div>
                    </div>
                    <div class="cell-xs-6 cell-md-4 offset-top-45">
                      <div class="form-group">
                        <!--Select 2-->
                        <label for="select-2" class="form-label">Adults</label>
                        <select id="select-2" data-placeholder="-" data-minimum-results-for-search="Infinity" class="form-control select-filter">
                          <option>-</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </div>
                    </div>
                    <div class="cell-xs-6 cell-md-4 offset-top-45">
                      <div class="form-group">
                        <!--Select 2-->
                        <label for="select-3" class="form-label">Children</label>
                        <select id="select-3" data-placeholder="-" data-minimum-results-for-search="Infinity" class="form-control select-filter">
                          <option>-</option>
                          <option>1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                        </select>
                      </div>
                    </div>
                    <div class="cell-xs-12 offset-top-37">
                      <button type="submit" data-text="book a hotel" class="btn btn-orange btn-fullwidth btn-winona btn-sm"><span>Search a Hotel</span></button>
                    </div>
                    
                  </div>
                </form>
              </div>
            </div>
          </div>
        </section>
        <!--Section Most popular Cruises-->
        <section class="section-bottom-80 section-top-80">
          <div class="shell">
            <div class="range">
              <div class="cell-sm-6 cell-md-4">
                <div class="thumbnail-custom thumbnail-custom-variant-3"><img src="images/hyatt.jpg" alt="" width="370" height="370">
                  <div class="caption">
                    <h4>Hyatt Regency Sydney</h4>
                    <p>3 nights from</p>
                    <div class="h4 price">$1,285</div>
                    <p>Book by:15-09-2019</p><a href="#" data-text="see more" class="btn btn-winona btn-transparent btn-xs">see more</a>
                  </div>
                </div>
              </div>
              <div class="cell-sm-6 cell-md-4 offset-top-30 offset-sm-top-0">
                <div class="thumbnail-custom thumbnail-custom-variant-3"><img src="images/stam.jpg" alt="" width="370" height="370">
                  <div class="caption">
                    <h4> Stamford Plaza Hotel & Conference Centre </h4>
                    <p>4 nights from</p>
                    <div class="h4 price">$1,085</div>
                    <p>Book by: 15-09-2019</p><a href="#" data-text="see more" class="btn btn-winona btn-transparent btn-xs">see more</a>
                  </div>
                </div>
              </div>
                <div class="cell-sm-6 cell-md-4 offset-top-30 offset-sm-top-0">
                <div class="thumbnail-custom thumbnail-custom-variant-3"><img src="images/hilton.jpg" alt="" width="370" height="370">
                  <div class="caption">
                    <h4> Hilton Sydney  </h4>
                    <p>3 nights from</p>
                    <div class="h4 price">$1,305</div>
                    <p>Book by: 15-09-2019</p><a href="orderplacing.jsp" data-text="see more" class="btn btn-winona btn-transparent btn-xs">see more</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!--Section Testimonials-->
        <section class="section-71 section-bottom-80 bg-primary">
          <div class="shell">
            <h2 class="text-center">What Our Customers Say?</h2>
            <div class="range">
              <div class="cell-md-6">
                <div class="unit unit-xs unit-xs-horizontal unit-spacing-xs">
                  <div class="unit-left">
                    <div class="round img-auto"><img src="images/index-18-84x84.jpg" alt="" width="84" height="84" class="round-green"></div>
                  </div>
                  <div class="unit-body">
                    <blockquote class="quote">
                      <p>
                        <q>"I will use HotelGo again! IÃ¢ÂÂve told all my friends how great these guys are and how great is the service they provide."</q>
                      </p>
                      <p>
                        <cite>- Monica</cite>
                        <time datetime="2016">20.08.2019</time>
                      </p>
                    </blockquote>
                  </div>
                </div>
              </div>
              <div class="cell-md-6 offset-top-50 offset-md-top-0">
                <div class="unit unit-xs unit-xs-horizontal unit-spacing-xs">
                  <div class="unit-left">
                    <div class="round img-auto"><img src="images/index-19-84x84.jpg" alt="" width="84" height="84" class="round-green"></div>
                  </div>
                  <div class="unit-body">
                    <blockquote class="quote">
                      <p>
                        <q>Ã¢ÂÂWe had an unforgettable Travel experience with HotelGo. Great personalized service! Do not hesitate to use HotelGo. Highly recommend."</q>
                      </p>
                      <p>
                        <cite>- Christin</cite>
                        <time datetime="2016">28.08.2019</time>
                      </p>
                    </blockquote>
                  </div>
                </div>
              </div>
              <div class="cell-xs-12 text-center offset-top-50"><a href="#" data-text="All Testimonials" class="btn btn-xs btn-winona btn-orange-3">All Testimonials</a></div>
            </div>
          </div>
        </section>
      </main>
      <!-- Page Footer-->
      <footer class="page-foot bg-base text-center text-md-left">
        <section class="section-82">
          <div class="shell">
            <div class="range">
              
              <div class="cell-sm-6 cell-md-3 offset-top-65 offset-sm-top-0">
                <h6>Have Questions?</h6>
                <div class="reveal-block offset-top-23"><a href="callto:#">+61 000 000 000</a></div>
                <div class="reveal-block offset-top-10"><a href="mailto:#">info@hotelgo.com</a></div>
                <p class="offset-top-10">24/7 Dedicated Customer Support</p>
              </div>
              <div class="cell-sm-6 cell-md-4 cell-md-preffix-1 offset-top-65 offset-md-top-0 cell-sm-preffix-3">
                
                <form data-form-output="form-output-global" data-form-type="subscribe" method="post" action="bat/rd-mailform.php" class="rd-mailform offset-top-34">
                  <div class="form-group">
                    <input id="contact-email" type="email" name="email" data-constraints="@Required @Email" placeholder="Enter your e-mail" class="form-control">
                  </div>
                  <button type="submit" data-text="sign up" class="btn btn-orange btn-winona btn-xs offset-top-21"><span>Sign up!</span></button>
                </form>
              </div>
            </div>
          </div>
        </section>
        <section class="bg-gray-dark section-10">
          <div class="shell">
            
          </div>
        </section>
      </footer>
    </div>
    <!-- Global Mailform Output-->
    <div id="form-output-global" class="snackbars"></div>
    <!-- PhotoSwipe Gallery-->
    <div tabindex="-1" role="dialog" aria-hidden="true" class="pswp">
      <div class="pswp__bg"></div>
      <div class="pswp__scroll-wrap">
        <div class="pswp__container">
          <div class="pswp__item"></div>
          <div class="pswp__item"></div>
          <div class="pswp__item"></div>
        </div>
        <div class="pswp__ui pswp__ui--hidden">
          <div class="pswp__top-bar">
            <div class="pswp__counter"></div>
            <button title="Close (Esc)" class="pswp__button pswp__button--close"></button>
            <button title="Share" class="pswp__button pswp__button--share"></button>
            <button title="Toggle fullscreen" class="pswp__button pswp__button--fs"></button>
            <button title="Zoom in/out" class="pswp__button pswp__button--zoom"></button>
            <div class="pswp__preloader">
              <div class="pswp__preloader__icn">
                <div class="pswp__preloader__cut">
                  <div class="pswp__preloader__donut"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
            <div class="pswp__share-tooltip"></div>
          </div>
          <button title="Previous (arrow left)" class="pswp__button pswp__button--arrow--left"></button>
          <button title="Next (arrow right)" class="pswp__button pswp__button--arrow--right"></button>
          <div class="pswp__caption">
            <div class="pswp__caption__cent"></div>
          </div>
        </div>
      </div>
    </div>
       
         <script  type="text/javascript" src="js/core.min.js"></script>
    <script  type="text/javascript" src="js/script-index.js" ></script>                   
        
    </body>
</html>
