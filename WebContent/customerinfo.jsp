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
<link rel="stylesheet" href="fontawesome-free-5.5.0-web/css/all.css">

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
			<div class="col-md-1" id="b">
				<h3>
					<b>MyAccount </b>
				</h3>

			</div>

			<div class="col-md-6"></div>
			<div class="col-md-3" id="b" style="padding-top: 2.1em;">
				<p>
					<a href="index.jsp">HOME</a> / MyAccount
				</p>
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

					<%
						String res1 = (String) session.getAttribute("ChangeStatus");
						if (res1 != null) {
							if (res1.equals("fail")) {
					%>
					<div class=" row alert alert-danger" role="alert">
						<strong>Oh snap!</strong> Try again ...
					</div>
					<%
						} else if (res1.equals("success")) {
					%>
					<div class=" row alert alert-success" role="alert">
						<strong>COngrats...</strong> success!!! ...
					</div>
					<%
						} else if (res1.equals("wrong")) {
					%>
					<div class=" row alert alert-danger" role="alert">
						<strong>Oh snap!</strong> wrong credentials...
					</div>
					<%
						} else {
					%>
					<div class=" row alert alert-danger" role="alert">
						<strong>Oh snap!</strong> mismatch...
					</div>

					<%
						}
						}
					%>
				</form>

				<div class="row"></div>
				<hr />
				<h2>
					<b>PERSONAL DETAILS</b>
				</h2>
				<hr width="13%" align="left" style="border-top: 2.3px solid #8AD4C5" />

				<form action="Personal" method="post">
				
				<%
						String mail=(String)session.getAttribute("Email");
						String fname=(String)session.getAttribute("fname");
						String lname=(String)session.getAttribute("lname");
				%>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">First name</label> <input type="text"
								class="form-control" id="inputEmail4" name="f1" value=<%= fname %> disabled="disabled">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Last name</label> <input type="text"
								class="form-control" id="inputPassword4" name="f2" value=<%= lname %> disabled="disabled">
						</div>

						&nbsp;&nbsp;&nbsp; 
						Gender<br> &nbsp;&nbsp;&nbsp;
						<input type="radio" name="f3" value="male" > Male<br>
						&nbsp;&nbsp;&nbsp;
						<input type="radio" name="f3" value="female" >Female<br> 
						&nbsp;&nbsp;&nbsp;
						<input type="radio" name="f3" value="other" > Other
					</div>
					<br>
					<div class="form-row">
						<div class="form-group col-md-12">
							<label for="inputPassword4">Address</label><br>
							<textarea rows="2" cols="77" style="border-radius: 4px;" name="f4">
      							</textarea>
						</div>

					</div>
					<div class="form-row">
						<div class="form-group col-md-1">
							<label for="inputEmail4">city</label> <input name="f5"
								type="text">
						</div>
						<div class="form-group col-md-2"></div>
						<div class="form-group col-md-1">
							<label for="inputPassword4">Zip</label> <input name="f6"
								type="text">
						</div>
						<div class="form-group col-md-2"></div>
						<div class="form-group col-md-1">
							<label for="inputPassword4">State</label> <input list="state"
								name="f7">
							<datalist id="state">
								<option value="AndhraPradesh">
								<option value="ArunachalPradesh">
								<option value="Assam">
								<option value="Bihar">
								<option value="Chhattisgarh">
								<option value="Goa">
								<option value="Gujarat">
								<option value="Haryana">
								<option value="Himachal Pradesh">
								<option value="Jammu and Kashmir">
								<option value="Jharkand">
								<option value="Karnataka">
								<option value="Kerala">
								<option value="MadhyaPradesh">
								<option value="Maharastra">
								<option value="Manipur">
								<option value="Meghalaya">
								<option value="Mizoram">
								<option value="Nagaland">
								<option value="Odissa">
								<option value="Punjab">
								<option value="Rajasthan">
								<option value="Sikkim">
								<option value="Tamilnadu">
								<option value="Telangana">
								<option value="Tripura">
								<option value="UttarPradesh">
								<option value="Uttarkand">
								<option value="Westbengal">
								<option value="NRI">
							</datalist>
						</div>
						<div class="form-group col-md-2"></div>
						<div class="form-group col-md-1">
							<label for="inputPassword4">Country</label> <input list="Country"
								name="f8">
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
								type="text" class="form-control" id="inputEmail4" name="f9">
						</div>
						
						<div class="form-group col-md-6">
							<label for="inputPassword4">Email</label> <input type="text"
								class="form-control" id="email"  name="f10" value=<%=mail %> readonly="readonly">
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
					<li><a href="#"><span class="glyphicon glyphicon-list abc"></span>
							<font color="#4fbfa8">Orders</font></a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-heart abc"></span> <font
							color="#4fbfa8">My Wishlist</font></a></li>
					<li class="active"><a href="#"><span
							class="glyphicon glyphicon-user abc"></span> <font color="white">My
								Account </font></a></li>
					<li><a href="logout.jsp"><span
							class="glyphicon glyphicon-log-out abc"></span> <font
							color="#4fbfa8">Logout</font></a></li>
				</ul>
			</div>


			<!-- ROW4 COL2 END -->

		</div>
		<!-- ROW4 END -->

		<!--  ROW5 START-->
		<%@ include file="footer1.html"%>
		<!-- ROW5 END -->

		<!--  ROW6 START-->
		<%@ include file="footer.html"%>
		<!-- ROW6 END -->

	</div>
	<script src="js/jquery-3.3.1.js"></script>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>