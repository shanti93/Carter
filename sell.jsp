
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%ResultSet brand =null;%>
<%ResultSet model =null;%>
<%ResultSet year =null;%>
<%ResultSet zipcode =null;%>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.select-style {
    ;
    width: 200px;
    height: 30px;
    border-radius: 50px;
    overflow: visible;
    background: #1a8cff url("img/icon-select.png") repeat 90% 50%;
}

.select-style select {
    padding : 0px 0px 0px 0px;
    width: 200px;
    height: 30px;
    border: none;
    box-shadow: none;
    background: #1a8cff;
    text-align: center;
    font-size: 18pt ;
    border-radius: 50px;
  
    background-image: none;
    color  :  white;
}

.select-style select:focus {
    outline: none;
}
.mdl-layout {
    align-items: center;
    justify-content: center;
    width : 40%;
    padding :20px 20px;
        border-color: #666;
    border-style: solid;
    border-width: 0 0 2px 0;
}
.mdl-layout__content {
    padding: 30px;
    flex: none;
        border-color: #666;
    border-style: solid;
    border-width: 0 0 2px 0;
}
.mdl-textfield__error {
    width: 60%;
    left: 0;
 text-align: left;
     border-color: #666;
    border-style: solid;
    border-width: 0 0 2px 0;
    
}

.mdl-textfield__input{
    border-bottom: 5px solid #fff;
    text-decoration: none;
margin: 0;
font-size: 14px;
font-weight: 400;
}

.mdl-textfield__label{
 color: white;
}
</style>
  <title>Home</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  

<!--===============================================================================================-->
  <link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="fonts/themify/themify-icons.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="fonts/elegant-font/html-css/style.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">

  
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/lightbox2/css/lightbox.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="css/util.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel='stylesheet prefetch' href='http://storage.googleapis.com/code.getmdl.io/1.0.1/material.teal-red.min.css'>
<link rel='stylesheet prefetch' href='http://fonts.googleapis.com/icon?family=Material+Icons'>


    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="sell.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="UTF-8">
    <title>Sell</title>
    <link rel="shortcut icon" href="../favicon.ico">
    <link rel="stylesheet" type="text/css" href="demo.css" />
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link rel="stylesheet" type="text/css" href="animate.css" />
    <script type="text/javascript">
        // Please don't use this code on your site
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-7243260-2']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>

</head>
<body class="animsition">
<%
    try{
    	Class.forName("oracle.jdbc.driver.OracleDriver");

//Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection = 
         DriverManager.getConnection
         ("jdbc:oracle:thin:@oracle.cise.ufl.edu:1521:orcl", "katragad", "Venkat93*");

       Statement statement = connection.createStatement() ;

       
       
	
	
		
%>

 <!-- Header -->
	<header class="header1">
		<!-- Header desktop -->
		<div class="container-menu-header">
			<div class="topbar">
				<div class="topbar-social">
					<a href="#" class="topbar-social-item fa fa-facebook"></a> <a
						href="#" class="topbar-social-item fa fa-instagram"></a> <a
						href="#" class="topbar-social-item fa fa-pinterest-p"></a> <a
						href="#" class="topbar-social-item fa fa-snapchat-ghost"></a> <a
						href="#" class="topbar-social-item fa fa-youtube-play"></a>
				</div>

				<span class="topbar-child1"> Buy and Sell Cars </span>

				<div class="topbar-child2">
					<span class="topbar-email"> admin@carter.com </span>


				</div>
			</div>

			<div class="wrap_header">
				<!-- Logo -->
				<a href="index.jsp" class="logo"> <img
					src="images/icons/logo.png" alt="IMG-LOGO">
				</a>

				<!-- Menu -->
				<div class="wrap_menu">
					<nav class="menu">
						<ul class="main_menu">
							<li><a href="index.jsp">Home</a></li>

							<li><a href="buyrequest.jsp">Buy</a></li>

							<li class="sale-noti"><a href="sell.jsp">Sell</a></li>

							<li><a href="about.jsp">About</a></li>

							<li><a href="contact.jsp">Contact</a></li>
						</ul>
					</nav>
				</div>


				<!-- Header Icon -->
				<div class="header-icons">
					<a href="login/index.jsp" class="header-wrapicon1 dis-block">
						<img src="images/icons/icon-header-01.png" class="header-icon1"
						alt="ICON"> &nbsp; <font color="b7b7b7">Login </font>
					</a>


				</div>
			</div>
		</div>
		</div>
	</header>


  <!-- Banner -->
  <section class="banner bgwhite p-t-80 p-b-70" >
	
<form action="index.jsp">
    <div class="container" style="background-color :  #e0e0d1;">
      	<div class="row">
 		<div class="col-md-4" >

   <label id="img_category_label"class="field"for="img_category"data-value="";">
	<span >Brand</span>
	<div id="img_category" class="psuedo_select" name="img_category">
	<% brand =statement.executeQuery("SELECT distinct BRAND FROM CARS");%>
		<span class="selected"></span>
		<ul id="img_category_options"class="options">
			
			<%  while(brand.next()){ %>
            		<li class="option"><%= brand.getString(1) %></li>
        			<% } %>
			
		</ul>
	</div>
</label>


    <script  src="js/index.js"></script>
  <script src='http://storage.googleapis.com/code.getmdl.io/1.0.1/material.min.js'></script>


</div>
       <div class="col-md-4">
 
   <label id="img_category_label"class="field"for="img_category"data-value="">
	<span>Type</span>
	<div id="img_category" class="psuedo_select" name="img_category">
		<span class="selected"></span>
		<ul id="img_category_options"class="options">
			<li class="option"data-value="suv">Suv</li>
			<li class="option"data-value="limousine">Limousine</li>
			<li class="option"data-value="coupe">Coupe</li>
			<li class="option"data-value="hatchback">Hatchback</li>
			<li class="option"data-value="convertable">Convertable</li>
			<li class="option"data-value="wagon">Wagon</li>
			<li class="option"data-value="bus">Bus</li>
			<li class="option"data-value="others">Others</li>
		</ul>
	</div>
</label>


    <script  src="js/index.js"></script>


</div>
 <div class="col-md-4">
 
   <label id="img_category_label"class="field"for="img_category"data-value="">
	<span >Model</span>
	<div id="img_category" class="psuedo_select" name="img_category">
	<% model =statement.executeQuery("SELECT distinct MODEL FROM CARS");%>
		<span class="selected"></span>
		<ul id="img_category_options"class="options">
			
			<%  while(model.next()){ %>
            		<li class="option"><%= model.getString(1) %></li>
        			<% } %>
			
		</ul>
	</div>
</label>


    <script  src="js/index.js"></script>


</div>
</div>

            	<div class="row">
 		<div class="col-md-4" >

   <label id="img_category_label"class="field"for="img_category"data-value="" ">

	
	<span >Gear Box</span>
	<div id="img_category" class="psuedo_select" name="img_category">
		<span class="selected"></span>
		<ul id="img_category_options"class="options">
			<li class="option"data-value="automatic">Automatic</li>
			<li class="option"data-value="manual">Manual</li>
		</ul>
	</div>

</label>


    <script  src="js/index.js"></script>


</div>
       <div class="col-md-4">
 
   <label id="img_category_label"class="field"for="img_category"data-value="">
	<span>Price</span>
	<div id="img_category"class="psuedo_select"name="img_category">
		<span class="selected"></span>
		<ul id="img_category_options"class="options">
			<li class="option"data-value="commercial">Commercial</li>
			<li class="option"data-value="residential">Residential</li>
		</ul>
	</div>
</label>


    <script  src="js/index.js"></script>


</div>
 <div class="col-md-4">
 
   <label id="img_category_label"class="field"for="img_category"data-value="">
	<span>Fuel Type</span>
	<div id="img_category"class="psuedo_select"name="img_category">
		<span class="selected"></span>
		<ul id="img_category_options"class="options">
			<li class="option"data-value="commercial">ABC</li>
			<li class="option"data-value="residential">Def</li>
		</ul>
	</div>
</label>


    <script  src="js/index.js"></script>


</div>
</div>

<div class="row">
 		<div class="col-md-4" >
<div style = "margin-top: 29px ; margin-bottom : 0px; margin-left : 27px; width :70%;">
<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
        <input class="mdl-textfield__input"  	type="text" id="username" />
        <label class="mdl-textfield__label" style="color : #666">Power</label>
      </div>
</div>
</div>
<div class="col-md-4" >
<div style = "margin-top: 29px ; margin-bottom : 0px; margin-left : 27px; width :70%;">
<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
        <input class="mdl-textfield__input" type="text" id="username" />
        <label class="mdl-textfield__label" style="color : #666" for "usermane">Kilometers</label>
      </div>
</div> 
</div><div class="col-md-4" >
<div style = "margin-top: 29px ; margin-bottom : 0px; margin-left : 27px; width :70%; font-color: #666 ">
<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
        <input class="mdl-textfield__input" type="text" id="username" />
        <label class="mdl-textfield__label" style="color : #666 ;"for "usermane">Year of Registration</label>
      </div>
</div>
</div>
</div>
          	<div class="row">
 		<div class="col-md-4" >

   <label id="img_category_label"class="field"for="img_category"data-value="" ">

	<span>Fuel Type</span>
	<div id="img_category"class="psuedo_select"name="img_category">
		<span class="selected"></span>
		<ul id="img_category_options"class="options">
			<li class="option"data-value="commercial">Commercial</li>
			<li class="option"data-value="residential">Residential</li>
		</ul>
	</div>

</label>


    <script  src="js/index.js"></script>


</div>
       <div class="col-md-4">
 
   <label id="img_category_label"class="field"for="img_category"data-value="">
	<span>Postal Code</span>
	<div id="img_category"class="psuedo_select"name="img_category">
		<span class="selected"></span>
		<ul id="img_category_options"class="options">
			<li class="option"data-value="commercial">Commercial</li>
			<li class="option"data-value="residential">Residential</li>
		</ul>
	</div>
</label>


    <script  src="js/index.js"></script>


</div>
 <div class="col-md-4">
 
   <label id="img_category_label"class="field"for="img_category"data-value="">
	<span>Month  of Registration</span>
	<div id="img_category"class="psuedo_select"name="img_category">
		<span class="selected"></span>
		<ul id="img_category_options"class="options">
			<li class="option"data-value="commercial">ABC</li>
			<li class="option"data-value="residential">Def</li>
		</ul>
	</div>
</label>


    <script  src="js/index.js"></script>


</div>
</div>
<div class="row">
   
<div class="col-md-8">
  
<textarea id="subject" name="subject" placeholder="Description...." style="margin-top: 29px; margin-left: 25px; height:30px; width : 90%;"></textarea>
  </div>
 <div class="col-md-4">
<input type="checkbox" name="vehicle" value="Bike" style="margin-top: 29px; margin-left: 28px; "> Damage repaired?<br>
</div>
 <br>
 <br>
 <br><br><br>
 </div>
  </div>
 <br>
 <script>
 function x(){
	 alert("Your ad has been posted succesfully!");
 }
 </script>
          
              <input type="submit" value ="Post the ad" onclick = "x()" class="flex-c-m size2 m-text2 bg3 hov1 trans-0-4">
         </form>
  </section>
          <!-- block2 -->
          <div class="block2 wrap-pic-w pos-relative m-b-30">
            <img src="images/icons/bg-01.jpg" alt="IMG">

            <div class="block2-content sizefull ab-t-l flex-col-c-m">
              <h4 class="m-text4 t-center w-size3 p-b-8">
                Sign up & get 20% off
              </h4>

              <p class="t-center w-size4">
                Be the frist to know about the latest fashion news and get exclu-sive offers
              </p>

              <div class="w-size2 p-t-25">
                <!-- Button -->
                <a href="#" class="flex-c-m size2 bg4 bo-rad-23 hov1 m-text3 trans-0-4">
                  Sign Up
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- New Product -->
  <section class="newproduct bgwhite p-t-45 p-b-105">
    <div class="container">
      <div class="sec-title p-b-60">
        <h3 class="m-text5 t-center">
          Featured Products
        </h3>
      </div>

      <!-- Slide2 -->
      <div class="wrap-slick2">
        <div class="slick2">

          <div class="item-slick2 p-l-15 p-r-15">
            <!-- Block2 -->
            <div class="block2">
              <div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
                <img src="images/item-02.jpg" alt="IMG-PRODUCT">

                <div class="block2-overlay trans-0-4">
                  <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                    <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                    <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                  </a>

                  <div class="block2-btn-addcart w-size1 trans-0-4">
                    <!-- Button -->
                    <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                      Add to Cart
                    </button>
                  </div>
                </div>
              </div>

              <div class="block2-txt p-t-20">
                <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">
                  Herschel supply co 25l
                </a>

                <span class="block2-price m-text6 p-r-5">
                  $75.00
                </span>
              </div>
            </div>
          </div>

          <div class="item-slick2 p-l-15 p-r-15">
            <!-- Block2 -->
            <div class="block2">
              <div class="block2-img wrap-pic-w of-hidden pos-relative">
                <img src="images/item-03.jpg" alt="IMG-PRODUCT">

                <div class="block2-overlay trans-0-4">
                  <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                    <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                    <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                  </a>

                  <div class="block2-btn-addcart w-size1 trans-0-4">
                    <!-- Button -->
                    <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                      Add to Cart
                    </button>
                  </div>
                </div>
              </div>

              <div class="block2-txt p-t-20">
                <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">
                  Denim jacket blue
                </a>

                <span class="block2-price m-text6 p-r-5">
                  $92.50
                </span>
              </div>
            </div>
          </div>

          <div class="item-slick2 p-l-15 p-r-15">
            <!-- Block2 -->
            <div class="block2">
              <div class="block2-img wrap-pic-w of-hidden pos-relative">
                <img src="images/item-05.jpg" alt="IMG-PRODUCT">

                <div class="block2-overlay trans-0-4">
                  <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                    <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                    <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                  </a>

                  <div class="block2-btn-addcart w-size1 trans-0-4">
                    <!-- Button -->
                    <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                      Add to Cart
                    </button>
                  </div>
                </div>
              </div>

              <div class="block2-txt p-t-20">
                <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">
                  Coach slim easton black
                </a>

                <span class="block2-price m-text6 p-r-5">
                  $165.90
                </span>
              </div>
            </div>
          </div>

          <div class="item-slick2 p-l-15 p-r-15">
            <!-- Block2 -->
            <div class="block2">
              <div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
                <img src="images/item-07.jpg" alt="IMG-PRODUCT">

                <div class="block2-overlay trans-0-4">
                  <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                    <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                    <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                  </a>

                  <div class="block2-btn-addcart w-size1 trans-0-4">
                    <!-- Button -->
                    <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                      Add to Cart
                    </button>
                  </div>
                </div>
              </div>

              <div class="block2-txt p-t-20">
                <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">
                  Frayed denim shorts
                </a>

                <span class="block2-oldprice m-text7 p-r-5">
                  $29.50
                </span>

                <span class="block2-newprice m-text8 p-r-5">
                  $15.90
                </span>
              </div>
            </div>
          </div>

          <div class="item-slick2 p-l-15 p-r-15">
            <!-- Block2 -->
            <div class="block2">
              <div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelnew">
                <img src="images/item-02.jpg" alt="IMG-PRODUCT">

                <div class="block2-overlay trans-0-4">
                  <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                    <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                    <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                  </a>

                  <div class="block2-btn-addcart w-size1 trans-0-4">
                    <!-- Button -->
                    <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                      Add to Cart
                    </button>
                  </div>
                </div>
              </div>

              <div class="block2-txt p-t-20">
                <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">
                  Herschel supply co 25l
                </a>

                <span class="block2-price m-text6 p-r-5">
                  $75.00
                </span>
              </div>
            </div>
          </div>

          <div class="item-slick2 p-l-15 p-r-15">
            <!-- Block2 -->
            <div class="block2">
              <div class="block2-img wrap-pic-w of-hidden pos-relative">
                <img src="images/item-03.jpg" alt="IMG-PRODUCT">

                <div class="block2-overlay trans-0-4">
                  <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                    <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                    <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                  </a>

                  <div class="block2-btn-addcart w-size1 trans-0-4">
                    <!-- Button -->
                    <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                      Add to Cart
                    </button>
                  </div>
                </div>
              </div>

              <div class="block2-txt p-t-20">
                <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">
                  Denim jacket blue
                </a>

                <span class="block2-price m-text6 p-r-5">
                  $92.50
                </span>
              </div>
            </div>
          </div>

          <div class="item-slick2 p-l-15 p-r-15">
            <!-- Block2 -->
            <div class="block2">
              <div class="block2-img wrap-pic-w of-hidden pos-relative">
                <img src="images/item-05.jpg" alt="IMG-PRODUCT">

                <div class="block2-overlay trans-0-4">
                  <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                    <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                    <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                  </a>

                  <div class="block2-btn-addcart w-size1 trans-0-4">
                    <!-- Button -->
                    <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                      Add to Cart
                    </button>
                  </div>
                </div>
              </div>

              <div class="block2-txt p-t-20">
                <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">
                  Coach slim easton black
                </a>

                <span class="block2-price m-text6 p-r-5">
                  $165.90
                </span>
              </div>
            </div>
          </div>

          <div class="item-slick2 p-l-15 p-r-15">
            <!-- Block2 -->
            <div class="block2">
              <div class="block2-img wrap-pic-w of-hidden pos-relative block2-labelsale">
                <img src="images/item-07.jpg" alt="IMG-PRODUCT">

                <div class="block2-overlay trans-0-4">
                  <a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
                    <i class="icon-wishlist icon_heart_alt" aria-hidden="true"></i>
                    <i class="icon-wishlist icon_heart dis-none" aria-hidden="true"></i>
                  </a>

                  <div class="block2-btn-addcart w-size1 trans-0-4">
                    <!-- Button -->
                    <button class="flex-c-m size1 bg4 bo-rad-23 hov1 s-text1 trans-0-4">
                      Add to Cart
                    </button>
                  </div>
                </div>
              </div>

              <div class="block2-txt p-t-20">
                <a href="product-detail.html" class="block2-name dis-block s-text3 p-b-5">
                  Frayed denim shorts
                </a>

                <span class="block2-oldprice m-text7 p-r-5">
                  $29.50
                </span>

                <span class="block2-newprice m-text8 p-r-5">
                  $15.90
                </span>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </section>



  <!-- Shipping -->
  <section class="shipping bgwhite p-t-62 p-b-46">
    <div class="flex-w p-l-15 p-r-15">
      <div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 respon1">
        <h4 class="m-text12 t-center">
          Free Delivery Worldwide
        </h4>

        <a href="#" class="s-text11 t-center">
          Click here for more info
        </a>
      </div>

      <div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 bo2 respon2">
        <h4 class="m-text12 t-center">
          30 Days Return
        </h4>

        <span class="s-text11 t-center">
          Simply return it within 30 days for an exchange.
        </span>
      </div>

      <div class="flex-col-c w-size5 p-l-15 p-r-15 p-t-16 p-b-15 respon1">
        <h4 class="m-text12 t-center">
          Store Opening
        </h4>

        <span class="s-text11 t-center">
          Shop open from Monday to Sunday
        </span>
      </div>
    </div>
  </section>

  <!-- Back to top -->
  <div class="btn-back-to-top bg0-hov" id="myBtn">
    <span class="symbol-btn-back-to-top">
      <i class="fa fa-angle-double-up" aria-hidden="true"></i>
    </span>
  </div>

  <!-- Container Selection1 -->
  <div id="dropDownSelect1"></div>



<!--===============================================================================================-->
  <script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
  <script type="text/javascript" src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
  <script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
  <script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
  <script type="text/javascript" src="vendor/select2/select2.min.js"></script>
  <script type="text/javascript">
    $(".selection-1").select2({
      minimumResultsForSearch: 20,
      dropdownParent: $('#dropDownSelect1')
    });
  </script>
<!--===============================================================================================-->
  <script type="text/javascript" src="vendor/slick/slick.min.js"></script>
  <script type="text/javascript" src="js/slick-custom.js"></script>
<!--===============================================================================================-->
  <script type="text/javascript" src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
  <script type="text/javascript" src="vendor/lightbox2/js/lightbox.min.js"></script>
<!--===============================================================================================-->
  <script type="text/javascript" src="vendor/sweetalert/sweetalert.min.js"></script>
  <script type="text/javascript">
    $('.block2-btn-addcart').each(function(){
      var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
      $(this).on('click', function(){
        swal(nameProduct, "is added to cart !", "success");
      });
    });

    $('.block2-btn-addwishlist').each(function(){
      var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
      $(this).on('click', function(){
        swal(nameProduct, "is added to wishlist !", "success");
      });
    });
  </script>

<!--===============================================================================================-->
  <script src="js/main.js"></script>
  <%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

</body>
</html>
