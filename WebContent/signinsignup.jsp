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

		<%@ include file="nav1.jsp"%>

		<!-- ROW1 END -->

		<!-- ROW2 START -->
		<%@ include file="nav2.html"%>
		<!-- ROW2 END-->

		<!-- ROW3 START -->

		<div class="row row3">
			<div class="col-md-1"></div>
			<div class="col-md-4" id="b">
				<a href="#" style="color: black"><h3>
						<b>NEW ACCOUNT / SIGNIN 
					</h3> </b></a>
			</div>

			<div class="col-md-3"></div>
			<div class="col-md-3" id="b" style="padding-top: 2.1em;">
				<a href="index.jsp">HOME</a>/ <a href="#" style="color: black">
					NEW ACCOUNT / SIGN IN</a>
			</div>
		</div>

		<!-- ROW3 END -->


		<!-- ROW4 START -->
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-3">
				<h1>NEW ACCOUNT</h1>
				<p>not our register customer yet?</p>
				<p>with registrations with us new world of fashion,fantastic
					discounts and much more opens to you! the whole process will not
					take you more than a minute</p>
				<p>if you have any questions,please feel free to contact us,our
					customer service center is working for 24/7.</p>
				<form action="register" method="post">
					name:<br> <input type="text" name="f1"><br> <br>
					email:<br> <input type="text" name="f2"><br> <br>
					password:<br> <input type="password" name="f3"><br>
					<br> <input type="submit" value="REGISTER"><br> <br>
					<%
						String res1 = (String) session.getAttribute("RegStatus");
						if (res1 != null) {
							if (res1.equals("true")) {
					%>
					<div class=" row alert alert-success" role="alert">
						<strong>Well done!</strong> Registration is Successfull...
					</div>
					<%
						} else {
					%>
					<div class=" row alert alert-danger" role="alert">
						<strong>Oh snap!</strong> Try again raa...
					</div>
					<%
						}
						}
					%>
				</form>
			</div>

			<div class="col-md-2"></div>

			<div class="col-md-3">
				<h1>SIGN IN</h1>
				<p>already our customer</p>
				<p>get access to your orders,wish list,recommendations</p>
				<form action="login" method="post">
					email:<br> <input type="text" name="f1"><br> <br>
					password:<br> <input type="password" name="f2"><br>
					<br> <input type="submit" value="LOGIN"><br> <br>


					<%
						String status = (String) session.getAttribute("LogStatus");
						if (status != null) {
							if (status.equals("false")) {
					%>
					<div class=" row alert alert-danger" role="alert">
						<strong>Wrong credentials!</strong> Try again ...
					</div>
					<%
						}
						}
					%>
				</form>
			</div>
		</div>

		<!--ROW4 END  -->

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
				<br> <br> <img src="images/detailsquare1.jpg" width="50"
					height="60"> <img src="images/detailsquare2.jpg" width="50"
					height="60" style="margin-left: 10px"> <img
					src="images/detailsquare3.jpg" width="50" height="60"
					style="margin-left: 10px"><br /> <br> <img
					src="images/detailsquare1.jpg" width="50" height="60"> <img
					src="images/detailsquare2.jpg" width="50" height="60"
					style="margin-left: 10px"> <img
					src="images/detailsquare3.jpg" width="50" height="60"
					style="margin-left: 10px">
			</div>
		</div>
		<!-- ROW5 END -->
		<!--  ROW6 START-->
		<%@ include file="footer.html"%>

		<!-- ROW6 END -->

	</div>

	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>
