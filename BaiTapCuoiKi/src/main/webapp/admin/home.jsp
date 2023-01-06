<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Home</title>
<%@include file="allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}

.card {
border-radius: 20rem 20rem 0rem 20rem;
background-color: rgb(212, 233, 255);
}

.card-body h4{
	color: green;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	
	 
	<c:if test="${empty userobj}">
		<c:redirect url="../login.jsp" />
	</c:if>

	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_clts.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-circle-plus fa-3x text-warning"></i><br>
							<h4>Add clother</h4>
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="all_clts.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-house fa-3x text-info"></i><br>
							<h4>All</h4>		
						</div>
					</div>
				</a>
			</div> <br>
			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box-open fa-3x text-success"></i><br>
							<h4>All Order</h4>
							
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-3">
				<a data-toggle="modal" data-target="#exampleModalCenter">
					<div class="card">
						<div class="card-body text-center">
							<i
								class="fa-solid fa-arrow-right-from-bracket fa-3x text-black-50"></i><br>
							<h4>Logout</h4>
							
						</div>
					</div>
				</a>
			</div>

		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLongTitle"></h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="text-center">
						<h4>Do You Want Logout ???</h4>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<a href="../logout" type="button"
							class="btn btn-primary text-white">Logout</a>
					</div>
				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>
	<!-- End Logout modal -->

	<div style="margin-top: 139px;">
		<%@include file="footer.jsp"%></div>
</body>
</html>