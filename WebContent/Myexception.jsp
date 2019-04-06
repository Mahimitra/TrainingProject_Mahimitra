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
			<div class="col-md-1" id="b">
				<a href="#" style="color: black"><h3>
						<b>MyAccount 
					</h3> </b></a>
			</div>

			<div class="col-md-6"></div>
			<div class="col-md-3" id="b" style="padding-top: 2.1em;">
				<a href="index.jsp">HOME</a>/ 
				<a href="customerinfo.jsp"
					style="color: black">MyAccount</a>
			</div>
		</div>

		<!-- ROW3 END -->
		<!-- Row 4 start -->
		<div class="row" align="center">
			<div class="container">
				<hr />
				<div class="row">
					<h3>Sorry for the Inconvenience - The Page you are looking for
						have a Technical Error.</h3>
					<h3>
						<small>Kindly proceed to the Home page or Report this
							issue to Website Administrator with the description mentioned
							below:</small>
					</h3>
				</div>
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-2">
						<button class="btn btn-info btn-design">
							<span class="glyphicon glyphicon-home"></span> Home
						</button>
						<br> <br>
					</div>
					<div class="col-md-2">
						<form action="report" method="post">
							<button class="btn btn-info btn-design">
								<span class="fa fa-bug"></span> Report
							</button>
						</form>
					</div>
				</div>
				<br />


				<div class="row alert alert-danger text-left">
					<%@ page isErrorPage="true" import="java.io.*"%>
					<%
						StringWriter errors = new StringWriter();
						session.setAttribute("EST", errors.toString());
						out.print(errors.toString());
					%>
				</div>
				<hr />
			</div>
		</div>
		<!-- Row-3 End -->

		<!-- Row 4 ends -->
		<!--  ROW5 START-->
		<%@ include file="footer1.html"%>
		<!-- ROW5 END -->
		<!-- 6 ROW START -->

		<%@ include file="footer.html"%>

		<!-- 6 ROW END -->
		<script src="js/jquery-3.3.1.js"></script>
		<script src="bootstrap/js/bootstrap.js"></script>
	</div>
</body>
</html>
