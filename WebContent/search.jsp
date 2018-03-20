<%@ page import ="java.sql.*" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>ePUC Portal</title>
		<link href="css/style.css" rel="stylesheet" type="text/css"  media="all" />
		<meta name="keywords" content="legend iphone web template, Andriod web template, Smartphone web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<link href='http://fonts.googleapis.com/css?family=Ropa+Sans' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/responsiveslides.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		  <script>
		    // You can also use "$(window).load(function() {"
			    $(function () {
			
			      // Slideshow 1
			      $("#slider1").responsiveSlides({
			        maxwidth: 1600,
			        speed: 600
			      });
			});
		  </script>
	</head>
	<body>
		<!---start-wrap---->
		
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<!---start-logo---->
				<div class="logo">
					<a href="index.html"><img src="images/logo3.jpg" title="logo" /></a>
				</div>
				<!---end-logo---->
				
				<!---start-search---->
				<div class="top-search-bar">
					<div class="header-top-nav">
						<ul>
							<li><a href="#"><img src="images/marker1.png" title="livehelp" />Live Help</a></li>
							<li><a href="#"><img src="images/marker1.png" title="customer report" />customer Report</a></li>
						</ul>
					</div>
				</div>
				<div class="clear"> </div>
				</div>
			</div>
			
				<div class="clear"> </div>
				<div class="header-nav">
					<div class="wrap">
					<div class="left-nav">
						<ul>
							<li ><a href="index.jsp">Home</a></li>
							<li><a href="https://www.bankbazaar.com/insurance/motor-insurance-guide/pollution-under-control-certificate.html">About PUC</a></li>
							<li><a href="https://parivahan.gov.in/parivahan/">More</a></li>
							<li><a href="contact.jsp">Contact Us</a></li>
						</ul>
					</div>
					<div class="right-social-icons">
						<ul>
							<li><a class="icon1" href="#"> </a></li>
							<li><a class="icon2" href="#"> </a></li>
							<li><a class="icon3" href="#"> </a></li>
							<li><a class="icon4" href="#"> </a></li>
						</ul>
					</div>
					<div class="clear"> </div>
				</div>
				<!---start-search---->
			</div>
			<!---end-header---->
			<!--start-image-slider---->
			<!------------------------------------->
			<%
  String rgn=request.getParameter("rgn");;
  int id=Integer.parseInt(rgn);
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/puc","root", "root");
  Statement st=conn.createStatement();
  ResultSet rs = st.executeQuery("select * from vehicle_info where  regno='"+id+"'");
  if(rs.next()){
      %>
			<div class="wrap">
					<!---start-content---->
					<div class="content">
						<div class="contact">
		   	<div class="section group">				
							
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h2>Already Registered</h2>
					    <form method="post" action="updatePuc.jsp">
					    	<div>
						    	<span><label>PUC Certificate Number:</label></span>
						    	<span><input type="text" value="<%=rs.getString("pucc_no")%>" name=pucNo/></span>
						    </div>
						  
						  <div>
						    	<span><label>Vehicle Registration Number:</label></span>
						    	<span><input type="text" value="<%=rs.getString("regno")%>"/></span>
						    </div>
							<div>
						    	<span><label>Manufacturer: </label></span>
						    	<span><input type="text" value="<%=rs.getString("maker")%>"/> </span>
						    </div>
							<div>
						    	<span><label>Manufactured Date: </label></span>
						    	<span><input type="text" value="<%=rs.getString("made_year")%>"/></span>
						    </div>
							<div>
						    	<span><label>Fuel Type:</label></span>
						    	<span><input type="text" value="<%=rs.getString("fuel_type")%>"/></span>
						    </div>
							<div>
						    	<span><label>Update PUC:</label></span>
						    	<span><input type="submit" value="Update" /></span>
						    </div>
						    
						  
					    </form>
				    </div>
  				</div>				
			  </div>
			  	 <div class="clear"> </div>
	</div>
	 <%
  }else{%>
	            <jsp:forward page="registerOwner.jsp" />
<% 
  }
  %>
  
			<!------------------------------------->
				<!--End-image-slider---->
					<!---start-content---->
				
					<!---End-content---->
					<div class="clear"> </div>
				</div>
					<div class="footer"> 
						<div class="wrap"> 
						<div class="footer-left">
							<ul>
								<li ><a href="index.jsp">Home</a></li>
							<li><a href="https://www.bankbazaar.com/insurance/motor-insurance-guide/pollution-under-control-certificate.html">About PUC</a></li>
							<li><a href="https://parivahan.gov.in/parivahan/">More</a></li>
							<li><a href="contact.jsp">Contact Us</a></li>
							</ul>
						</div>
						<div class="footer-right">
							<p>ePUC &#169 All Rights Reserved | Design By Angle Cracker</a></p>
						</div>
						<div class=="clear"> </div>
					</div>
					<div class="clear"> </div>
		<!---end-wrap---->
		</div>
	</body>
</html>
