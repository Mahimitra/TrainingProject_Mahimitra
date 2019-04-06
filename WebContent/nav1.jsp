<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>



<!-- ROW1 start -->

<div class="row rowcolor1">

	<div class="col-md-1"></div>
	<div class="col-md-2" id="a">
		<h5>contact us on +91 4066217777</h5>
	</div>

	<div class="col-md-4"></div>

	<%
		String res = null;
		HttpSession ses = request.getSession(false);

		if (ses == null | !request.isRequestedSessionIdValid()) {
	%>


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

	<%
		} else {
			String name = (String) session.getAttribute("name");
			if (name != null)
				res = "Welcome " + name;
			else
				res = "welcome";
	%>


	<div class="col-md-3">
		<div class="dropdown">
			<button class="btn btn-default dropdown-toggle"
				style="color: white; background-color: black; border: none;"
				type="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"><%=res%>&nbsp;<i
					class="fas fa-caret-down"></i>
			</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="customerinfo.jsp">My account</a> <br>
				<a class="dropdown-item" href="customerinfo.jsp">Change Password</a>
				<br> <a class="dropdown-item" href="logout.jsp">Logout</a><br>
			</div>
		</div>
	</div>



	<%
		}
	%>

	<div class="col-md-2"></div>

	<div class="col-md-2 icon">
		<h6>
			<i class="fab fa-facebook-f"></i> <i class="fab fa-google-plus-g"></i>
			<i class="fab fa-twitter"></i> <i class="fas fa-envelope"></i>
		</h6>
	</div>
	<br> <br>
</div>

<!-- ROW1 END -->