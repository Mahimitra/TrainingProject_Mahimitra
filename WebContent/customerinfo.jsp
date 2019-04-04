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
					<a style="color: white;" href="index.jsp"><button id="btn">
							<i class="fas fa-sign-in-alt "></i> sign in
						</button></a>
				</h5>
			</div>

			<div class="col-md-1" id="a">
				<h5>
					<a style="color: white;" href="index.jsp"><button id="btn">
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

		<!--ROW4 START  -->

		<div class="row rowcolor2">

			<div class="col-md-1"></div>

			<!--  ROW4 COL1 START-->
			<div class="col-md-7">

				<div class="row">
					<br>
					<p>
						<font size="3px">Change your personal details or password
							here.</font>
					</p>
					<br>
					<p>Pellentesque habitant morbi tristique senectus et netus et
						malesuada frames ac turpis egastas.</p>
					<hr>
				</div>

				<h2>
					<b>CHANGE PASSWORD</b>
				</h2>
				<hr width="13%" align="left" style="border-top: 2.3px solid #8AD4C5" />

				<form action="change" method="post">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Old password</label> <input
								type="password" name="f1" class="form-control" id="inputEmail4">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-12"></div>
						<div class="form-group col-md-6">
							<label for="inputEmail4">New password</label> <input
								type="password" class="form-control" name="f2" id="inputEmail4">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Retype password</label> <input
								type="password" class="form-control" name="f3"
								id="inputPassword4">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-4"></div>
						<div class="form-group col-md-4">
							<button type="submit" class="btn btn-default" id="btn1">
								<i class="far fa-save"></i>Save new Password
							</button>
						</div>
					</div>
					<br>

					<% String res1=(String)session.getAttribute("ChangeStatus"); 
  						if(res1!=null){
  						if(res1.equals("fail")){
  						%>
					<div class=" row alert alert-danger" role="alert">
						<strong>Oh snap!</strong> Try again ...
					</div>
					<%
  						 }else if(res1.equals("success")){%>
					<div class=" row alert alert-success" role="alert">
						<strong>COngrats...</strong> success!!! ...
					</div>
					<% }else if(res1.equals("wrong")){%>
					<div class=" row alert alert-danger" role="alert">
						<strong>Oh snap!</strong> wrong credentials...
					</div>
					<% } else{%>
					<div class=" row alert alert-danger" role="alert">
						<strong>Oh snap!</strong> mismatch...
					</div>

					<% }}%>
				</form>

				<div class="row"></div>
				<hr />
				<h2>
					<b>PERSONAL DETAILS</b>
				</h2>
				<hr width="13%" align="left" style="border-top: 2.3px solid #8AD4C5" />

				<form>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">First name</label> <input type="text"
								class="form-control" id="inputEmail4">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Lastname</label> <input type="text"
								class="form-control" id="inputPassword4">
						</div>

						&nbsp&nbsp&nbsp Gender<br> &nbsp&nbsp&nbsp<input type="radio"
							name="gender" value="male"> Male<br>
						&nbsp&nbsp&nbsp<input type="radio" name="gender" value="female">
						Female<br> &nbsp&nbsp&nbsp<input type="radio" name="gender"
							value="other"> Other
					</div>
					<br>
					<div class="form-row">
						<div class="form-group col-md-12">
							<label for="inputPassword4">Adress</label><br>
							<textarea rows="2" cols="77" style="border-radius: 4px;">
      							</textarea>
						</div>

					</div>
					<div class="form-row">
						<div class="form-group col-md-1">
							<label for="inputEmail4">city</label> <input name="city"
								type="text">
						</div>
						<div class="form-group col-md-2"></div>
						<div class="form-group col-md-1">
							<label for="inputPassword4">Zip</label> <input name="Zip"
								type="text">
						</div>
						<div class="form-group col-md-2"></div>
						<div class="form-group col-md-1">
							<label for="inputPassword4">State</label> <input list="city"
								name="city">
							<datalist id="city">
								<option value="Hyderabad">
								<option value="Chennai">
								<option value="Banglore">
							</datalist>
						</div>
						<div class="form-group col-md-2"></div>
						<div class="form-group col-md-1">
							<label for="inputPassword4">Country</label> <input list="Country"
								name="Country">
							<datalist id="Country">
								<option value="India">
								<option value="Australia">
								<option value="England">
							</datalist>
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Contact number</label> <input
								type="text" class="form-control" id="inputEmail4">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Email</label> <input type="text"
								class="form-control" id="inputPassword4">
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-4"></div>
						<div class="form-group col-md-4">
							<button type="submit" class="btn btn-default" id="btn1">
								<i class="far fa-save"></i>Save Changes
							</button>
						</div>
					</div>
				</form>

			</div>

			<!--  ROW4 COL1 END-->

			<!-- ROW4 COL2 START -->
			<div class="col-md-3">
				<br> <br>
				<h5>
					<strong>CUSTOMER SECTION</strong>
				</h5>
				<ul class="nav nav-pills nav-stacked">
					<li class="active abc"><a href="#"><span
							class="glyphicon glyphicon-list "></span> <font color="white">Orders</font></a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-heart abc"></span> <font
							color="#4fbfa8">My Wishlist</font></a></li>
					<li><a href="#"><span class="glyphicon glyphicon-user abc"></span>
							<font color="#4fbfa8">My Account </font></a></li>
					<li><a href="index.jsp"><span
							class="glyphicon glyphicon-log-out abc"></span> <font
							color="#4fbfa8">Logout</font></a></li>
				</ul>
			</div>


			<!-- ROW4 COL2 END -->

		</div>
		<!-- ROW4 END -->

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

		<!--  ROW6 START-->
		<div class="row" style="background-color: #212121;">
			<div class="col-md-2"></div>
			<div class="col-md-3">
				<h1 style="color: white; font-size: 120%;">2018.TechAspect
					Solutions Private Limited</h1>
				<br>
			</div>
		</div>

		<!-- ROW6 END -->

	</div>
	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>