<%-- 
    Document   : details
    Created on : 11/10/2019, 8:46:18 AM
    Author     : zhangmengfan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HotelGo-Booking</title>
        <link rel="stylesheet" href="css/details.css">
    </head>
    <body>
     <header id="main-header">
            <div class="container">
        <h1>HotelGo</h1>
        </div>
        </header>
        <nav id="navbar">
          <ul>
	  <li><a href="index.jsp">Homepage</a></li>
	  </ul>  
        </nav>
	    <section id="main">
	  	  <h1>Hilton</h1>
		  <p>
		  	488 George Street, Sydney CBD, 2000 Sydney, Australia
		  </p>
		  
   	  <img src="images/hilton.jpg" alt="My Sample Image" width="500" height="600">
	  <table id="table" border=1 height="600" width="600"> 
	   <tr bgcolor=#00008b>            
	     <td align=center>Room Type</td>
	     <td align=center>Sleeps</td>
	     <td align=center>Price</td>  
	     <td align=center>Choice</td>
	     <td align=center>Select Rooms</td>
	     <td></td>
 
	   </tr>
	   <tr>            
	     <td rowspan=2>
			 <h2><a href="KGP.html">King Guest Room</a></h2>
			 <p>28 square-meter</p>
		 </td>
	     <td>2</td>
	     <td>498</td>  
	     <td>Breakfast Included</td>
	     <td align=center><input type="number" name="quantity" min="0" max="20" placeholder="1"></td>
	     <td rowspan=8> 
                 <a href="orderplacing.jsp">Reserve</a> 
		 </td>
 
	   </tr>
	   <tr>            
	     
	     <td>2</td>
	     <td>434</td>  
	     <td>Without Breakfast</td>
	     <td align=center><input type="number" name="quantity" min="0" max="20" placeholder="1">

 
	   </tr>
	   <tr>            
	    <td rowspan=2>
		 <h2><a href="DK.html">Deluxe King Guest Room</a></h2>
		 <p>30 square-meter</p>
		</td>
	     <td>2</td>
	     <td>533</td>  
	     <td>Breakfast Included</td>
	      <td align=center><input type="number" name="quantity" min="0" max="20" placeholder="0">
	
 
	   </tr>
	   
	   <tr>            
	    
	     <td>2</td>
	     <td>469</td>  
	     <td>Without Breakfast</td>
	     <td align=center><input type="number" name="quantity" min="0" max="20" placeholder="0">
	 
 
	   </tr>
	   <tr>            
	     <td rowspan=2>
		 <h2><a href="KS.html">King Suite</a></h2>
		 <p>53 square-meter</p>
	     </td>
	     <td>3</td>
	     <td>1060</td>  
	     <td>Breakfast Included</td>
	     <td align=center><input type="number" name="quantity" min="0" max="20" placeholder="0">
	   
 
	   </tr>
	   <tr>            
	   
	     <td>3</td>
	     <td>964</td>  
	     <td>Without breakfast</td>
	    <td align=center><input type="number" name="quantity" min="0" max="20" placeholder="0">
	
 
	   </tr>
	   <tr>            
	     <td rowspan=2>
		 <h2><a href="RKS.html">Relaxation King Suite</a></h2>
		 <p>86 square-meter</p>
	     </td>
	     <td>4</td>
	     <td>1267</td>  
	     <td>Breakfast Included</td>
	   <td align=center><input type="number" name="quantity" min="0" max="20" placeholder="0">

 
	   </tr>
	   <tr>            
	 
	     <td>4</td>
	     <td>1139</td>  
	     <td>Without Breakfast</td>
	      <td align=center><input type="number" name="quantity" min="0" max="20" placeholder="0">

 
	   </tr>
	   

	   </table>
   	  <div style="margin-top:500px"></div>
	    </section>
	    <aside id="sidebar">
  <form action="search" method="POST">
	  <h1>Search</h1>
	 <div><lable>Destination</label>
		 <input type="text" name="destination" placeholder="Sydney"> 
     </div>
	 <br>
	 <div>
		 <label>Check-in date</label>
		 <input type="date" name="CheckInDate">
	 </div>
	 <br>
	 <div>
	 	<label>Check-out date</label>
		<input type="date" name="CheckOutDate">
	 </div> 
	 <br>
		<div>
			<label>Adults:</label>
			<input type="number" name="adults" value="2">
		</div>
		<br>
		<div>
			<label>Children:</label>
			<input type="number" name="children" value="0">
		</div>
		<br>
		<div>
			<label>Rooms:</label>
			<input type="number" name="rooms" value="1">
		</div>
		<br>
		
		<input type="submit" name="submit" value="Search">
  </form>
  	 
	    </aside>
	
<div style="margin-top:500px"></div>
    </body>
</html>
