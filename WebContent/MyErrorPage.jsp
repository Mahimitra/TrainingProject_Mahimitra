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
			<div class="col-md-2" id="b">
				<h3>
					<b>Error Page </b>
				</h3>
			</div>

			<div class="col-md-6"></div>
			<div class="col-md-3" id="b" style="padding-top: 2.1em;">
				<p><a href="index.jsp">HOME</a>/ MyAccount</p>
			</div>
		</div>

		<!-- ROW3 END -->
		<!-- Row 4 start -->
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<hr>
				<div style="font-size: 19px">
					<strong>Sorry for the Inconvenience-The Page you are
						looking does not Exist.</strong>
				</div>
				<p style="color: grey">Seems like you are tried to write or
					modify the URL.Use only the navigation links provided by the Web
					Page</p>
				<br /> <br />
				<div class="row">
					<div class="col-md-5"></div>
					<div class="col-md-2">
						<a href="index.jsp"><button type="button" class="form-control b">
							<i class="fa fa-home"></i>HOME
						</button></a>
					</div>
					<div class="col-md-5"></div>
				</div>
				<hr>
			</div>

		</div>
		<!-- Row 4 ends -->
		<!--  ROW5 START-->
		<%@ include file="footer1.html"%>
		<!-- ROW5 END -->
		<!-- 6 ROW START -->
		<%@ include file="footer.html"%>
		<script src="js/jquery-3.3.1.js"></script>
		<script src="bootstrap/js/bootstrap.js"></script>
		<!-- 6 ROW END -->
	</div>
</body>
</html>