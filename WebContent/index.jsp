<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid">
		<!-- ROW1 start -->

		<div class="row rowcolor1">

			<div class="col-md-1"></div>
			<div class="col-md-3" id="a">
				<h5>contact us on +91 4066217777</h5>
			</div>

			<div class="col-md-2"></div>

			<div class="col-md-1" id="a">
				<h5>
					<a style="color: white;" href="signinsignup.jsp"><button id="btn">
							<i class="fas fa-sign-in-alt "></i> sign in
						</button></a>
				</h5>
			</div>

			<div class="col-md-1" id="a">
				<h5>
					<a style="color: white;" href="signinsignup.jsp"><button id="btn">
							<i class="fas fa-user-plus  "></i>sign up
						</button></a>
				</h5>
			</div>
			<div class="col-md-2"></div>

			<div class="col-md-2 icon">
				<h6>
					<i class="fab fa-facebook-f"></i> <i class="fab fa-google-plus-g"></i>
					<i class="fab fa-twitter"></i> <i class="fas fa-envelope"></i>
				</h6>
			</div>
			<br>
			<br>
		</div>

		<!-- ROW1 END -->

		<!-- ROW2 START -->
		<div class="row rowcolor2">
			<div class="col-md-1"></div>
			<div class="col-md-3" id="a">
				<br> <img src="images/logo.png"><br>
				<br>
			</div>
			<div class="col-md-2"></div>



			<div class="col-md-5 ">
				<br> <select><option value="electronics">ELECTRONICS</option></select>
				<select><option value="men">MEN</option></select> <select><option
						value="women">WOMEN</option></select> <select><option
						value="baby&kids">BABY & KIDS</option></select> <select><option
						value="home&furniture">HOME & FURNITURE</option></select><br>
				<br>
			</div>

		</div>
		<!-- ROW2 END-->

		<!-- ROW3 START -->

		<div class="row row3">
			<div class="col-md-1"></div>
			<div class="col-md-1" id="b">
				<a href="#" style="color: black"><h3>
						<b>MyAccount
					</h3>
					</b></a>
			</div>

			<div class="col-md-6"></div>
			<div class="col-md-3" id="b" style="padding-top: 2.1em;">
				<a href="#">HOME</a>/ <a href="#" style="color: black">MyAccount</a>
			</div>
		</div>

		<!-- ROW3 END -->


		<!-- 4 ROW START -->

		<div class="container-fluid">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
					<li data-target="#myCarousel" data-slide-to="3"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="images/6ba3efd52627f2af.jpg" alt="Los Angeles"
							style="width: 100%;">
					</div>

					<div class="item">
						<img src="images/08d3e861b53705df.jpg" alt="Chicago"
							style="width: 100%;">
					</div>

					<div class="item">
						<img src="images/023d2d4a9cf86f42.jpg" alt="New york"
							style="width: 100%;">
					</div>

					<div class="item">
						<img src="images/54e55ddb877be152.jpg" alt="New york"
							style="width: 100%;">
					</div>
				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class="row dark ml mar-left">
			<div class="col-md-offset-1 col-md-10">
				<h4 class="text-white">Deals of the Day</h4>
			</div>
			<div class="col-md-1">
				<a href="#" class="btn btn-primary">View all</a>
			</div>
		</div>
		<br />

		<div class="row ml mar-left">
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/1.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Men's Footwear</b>
				</p>
				<p>Upto 60 + Extra 10% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/2.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Adidas, Reebok &amp; Puma</b>
				</p>
				<p>Upto 50 + Extra 5% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/3.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Laptop Bags</b>
				</p>
				<p>From &#8377;&nbsp;249</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/4.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Memory Cards</b>
				</p>
				<p>Extra 5% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/5.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Timex, Maxima...</b>
				</p>
				<p>Under &#8377;999 + Extra 7% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/6.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Skybags, American...</b>
				</p>
				<p>Under &#8377;999 + Extra 5% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
		</div>

		<div class="row dark ml mar-left">
			<div class="col-md-offset-1 col-md-10">
				<h4 class="text-white">Featured Brands</h4>
			</div>
			<div class="col-md-1">
				<a href="#" class="btn btn-primary">View all</a>
			</div>
		</div>
		<br />

		<div class="row ml mar-left">
			<div class="col-md-3  center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/7.jpg" class="col-md-12 pad" /></a><br />

			</div>
			<div class="col-md-3  center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/8.jpg" class="col-md-12 pad" /></a><br />

			</div>
			<div class="col-md-3  center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/9.jpg" class="col-md-12 pad" /></a><br />

			</div>
			<div class="col-md-3 center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/10.jpg" class="col-md-12 pad" /></a><br />

			</div>

		</div>

		<div class="row dark ml mar-left">
			<div class="col-md-offset-1 col-md-10">
				<h4 class="text-white">Mobile New Launches</h4>
			</div>
			<div class="col-md-1">
				<a href="#" class="btn btn-primary">View all</a>
			</div>
		</div>
		<br />

		<div class="row ml mar-left">
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/11.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Redmi Note 6 Pro</b>
				</p>
				<p>12MP+5MP | 20MP+2MP</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/12.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Realme 2</b>
				</p>
				<p>13MP+2MP | 8MP</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/13.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Realme c1</b>
				</p>
				<p>13MP+2MP | 5MP Camera</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/14.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Nokia 6.1 Plus</b>
				</p>
				<p>16MP+5MP Camera</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/15.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Lenovo A5</b>
				</p>
				<p>16MP | 8MP Camera</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/16.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Redmi Note 5 Pro</b>
				</p>
				<p>12MP+5MP Camera</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
		</div>

		<div class="row dark ml mar-left">
			<div class="col-md-offset-1 col-md-10">
				<h4 class="text-white">Home Decor Range</h4>
			</div>
			<div class="col-md-1">
				<a href="#" class="btn btn-primary">View all</a>
			</div>
		</div>
		<br />

		<div class="row ml mar-left">
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/17.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Decorative Botteles</b>
				</p>
				<p>From &#8377;199</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/18.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Wall Clocks</b>
				</p>
				<p>Minimum 50% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/19.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>FengShui Showpieces</b>
				</p>
				<p>Under &#8377;999</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/20.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Wall Shelves</b>
				</p>
				<p>Upto 80% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/21.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Laser Lights</b>
				</p>
				<p>Upto 60% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/22.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Hookahs & Bongs</b>
				</p>
				<p>Under &#8377;599</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
		</div>

		<div class="row dark ml mar-left">
			<div class="col-md-offset-1 col-md-10">
				<h4 class="text-white">Fashion Accessories</h4>
			</div>
			<div class="col-md-1">
				<a href="#" class="btn btn-primary">View all</a>
			</div>
		</div>
		<br />

		<div class="row ml mar-left">
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/23.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Ray-Ban, Fastrack...</b>
				</p>
				<p>20-60% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/24.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Cross, Woodland...</b>
				</p>
				<p>Top Rated</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/25.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Casio, Maxima...</b>
				</p>
				<p>Upto 50% 0ff</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/26.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Casio, Fastrack...</b>
				</p>
				<p>10-50% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/27.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Titan, Fastrack...</b>
				</p>
				<p>20-80% off</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
			<div class="col-md-2 prod center-block text-center">
				<br clear="all" />
				<a href="#"><img src="images/28.jpeg" class="col-md-12 pad" /></a><br />
				<p>
					<b>Fastrack</b>
				</p>
				<p>Under &#8377;999</p>
				<a href="#" class="btn btn-primary pad">View<br clear="all" /></a><br
					clear="all" />
				<br clear="all" />
			</div>
		</div>

		<!-- 4 ROW END -->
		<!--  ROW5 START-->
		<div class="row" style="background-color: #37474F;">
			<div class="col-md-1"></div>
			<div class="col-md-2" style="text-align: center; color: #919c9b;">
				<h1>ABOUT US</h1>
				<p>pellentesque habitant morbi tristique senectus et netus et
					malesuada frames ac turpis egestas</p>
				<hr>
				<small style="color: white;"><b>JOIN OUR MONTHLY
						NEWSLETTER</b> </small>

				<form>

					<input type="text" style="color: black; border-style: none"><i
						class="fa fa-paper-plane my-icon"></i>
				</form>
			</div>



			<div class="col-md-3" style="align-content: center; color: white;">
				<h1>BLOG</h1>
				<p>
					<img src="images/detailsquare1.jpg" width="50" height="60">BLOG
					POST NAME
				</p>
				<P>
					<img src="images/detailsquare2.jpg" width="50" height="60">BLOG
					POST NAME
				</P>
				<p>
					<img src="images/detailsquare3.jpg" width="50" height="60">VERY
					VERY LONG BLOG POST NAME
				</p>
			</div>



			<div class="col-md-3 " style="align-content: center; color: #919c9b;">
				<br>
				<p style="color: white">CONTACT</p>
				<p>TECHASPECT SOLUTION PVT LTD</p>
				<p>PLOT NO 38 N HEIGHTS 3RD FLOOR</p>
				<p>HITECH CITY PHASE 2 MADHAPUR</p>
				<p>HYDERBAD, TELANGANA</p>
				<p>500081</p>
				<p>INDIA</p>

				<form>
					<input type="submit" class="contact" value="GO TO CONTACT PAGE">
				</form>
			</div>

			<div class="col-md-3" id="a">
				<br>
				<br> <img src="images/detailsquare1.jpg" width="50" height="60">
				<img src="images/detailsquare2.jpg" width="50" height="60"
					style="margin-left: 10px"> <img
					src="images/detailsquare3.jpg" width="50" height="60"
					style="margin-left: 10px"><br />
				<br> <img src="images/detailsquare1.jpg" width="50" height="60">
				<img src="images/detailsquare2.jpg" width="50" height="60"
					style="margin-left: 10px"> <img
					src="images/detailsquare3.jpg" width="50" height="60"
					style="margin-left: 10px">
			</div>
		</div>
		<!-- ROW5 END -->
		<!-- 6 ROW START -->
		<div class="row row7">
			<p>
				<span class="glyphicon">&#xe194;</span> 2018. TechAspect Solutions
				Private Ltd.
			</p>
		</div>
		<script src="js/jquery-3.3.1.js"></script>
		<script src="bootstrap/js/bootstrap.js"></script>
		<!-- 6 ROW END -->
</body>
</html>