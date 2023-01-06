<%@page import="com.entity.User"%>
<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.CltDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team Java</title>
<%@ include file="all_component/allCss.jsp"%>
<style type="text/css">

.crd-ho:hover {
	background-color: #fcf7f7;
}

.bg-cl {
	background-color: #ffff1a;
}

.bg-cl:hover {
	background-color: #ff751a;
	text-decoration: none;
}

.btn{
background-color: rgb(212, 233, 255);
text-color: green;
}

.btn-danger {
color: green;
}

#home img{
	background-image: url("image/nen.png");
	width: 100%;
	height: 100vh;
	background-size: cover;
	background-position: top  center;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: flex-start;
}

#banner {
    background-image: url("image/banner4.png");
    width: 100%;
    height: 72vh;
    background-size: cover;
    background-position: top 70px center;
    background-repeat: no-repeat;
    background-attachment: fixed;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: flex-start;
}

.about {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(18rem,auto));
	gap: 2rem;
}

.about-img img {
	border-radius: 3rem 0 3rem 3rem;
}

.about-text span {
	font-size: 1 rem;
	text- transform: uppercase;
	font-weight: 500;
	color: var(]-main-color);
}

.about-text p {
	font-size: 0.938rem;
	margin: 1rem 0 1rem;
}

</style>
</head>
<body style="background-color: #f7f7f7;">

	<%
	User u = (User) session.getAttribute("userobj");
	%>
	<%@include file="all_component/navbar.jsp"%> <br> <br>
	
	<section id="home">
	 <img src="image/nen.png">
     
    </section>
	
	<div class="container-fluid back-image">
		<h2 class="text-center text-danger"></h2>
	</div>

	<!-- Start skirt -->
	<div class="container text-center mt-5 py-5">
		<h3 class="text-center">Skirt</h3>
		<hr class="mx-auto">
        <p>Here you can see our skirt products</p>
		<div class="row">
			<%
			CltDAOImpl dao2 = new CltDAOImpl(DBConnect.getConn());
				List<BookDtls> list2 = dao2.getVipBooks();
				for (BookDtls b : list2) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="cart-body">
						<image alt="" src="book/<%=b.getPhotoName()%>"
							style="width:150px; height:150px" class="image-thumblin ml-5">
						
							<%
													if (b.getBookCategory().equals("Old")) {
													%>
							Categories:<%=b.getBookCategory()%></p>
						<div class="row">
							<a href="view_books.jsp?bid=<%=b.getBookId()%>"
								class="btn btn-success btn-sm ml-5">View Details</a> <a href=""
								class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%><i
								class="fa-solid fa-dollar-sign"></i></a>
						</div>
						<%
						} else {
						%> </p>
						<div class="row">

							<%
							if (u == null) {
							%>
							
							<%
														} else {
														%>
							
							<%
							}
							%>
						</div>
						<%
						}
						%>
						
					</div>
				</div>
			</div>
			<%
			}
			%>

		</div> <br>
		<div class="text-center mt-1">
			<a href="all_skirt.jsp"
				class="btn btn-success btn-sm text-green">View All</a>
		</div>

	</div>
	<!-- End skirt -->

	<!-- Start shirt -->
	<div class="container text-center mt-5 py-5">
		<h3 class="text-center">Shirt</h3>
		<hr class="mx-auto">
        <p>Here you can see our shirt products</p>
		<div class="row">

			<%
			CltDAOImpl dao = new CltDAOImpl(DBConnect.getConn());
				List<BookDtls> list = dao.getTyp1Book();
				for (BookDtls b : list) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="cart-body">
						<image alt="" src="book/<%=b.getPhotoName()%>"
							style="width:150px; height:150px"
							class="image-thumblin btn-sm ml-5">
						
						<div class="row">

							<%
							if (u == null) {
							%>
							<%
							} else {
							%>
							<%
							}
							%>

						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>
		<div class="text-center mt-1"> <br>
			<a href="all_shirt.jsp" class="btn btn-success btn-sm text-green">View
				All</a>
		</div>

	</div>
	<!-- End shirt -->

	<hr>

	<!-- Start dresses -->
	<div class="container text-center mt-5 py-5">
		<h3 class="text-center">Dresses</h3>
		<hr class="mx-auto">
        <p>Here you can see our Dresses products</p>
		<div class="row">
			<%
			CltDAOImpl dao3 = new CltDAOImpl(DBConnect.getConn());
				List<BookDtls> list3 = dao2.getTyp2Books();
				for (BookDtls b : list3) {
			%>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="cart-body">
						<image alt="" src="book/<%=b.getPhotoName()%>"
							style="width:150px; height:150px"
							class="image-thumblin btn-sm ml-5">
						<div class="row ">

							<%
							if (u == null) {
							
							} else {
							%>
						
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>

		</div>
		<div class="text-center mt-1"> <br>
			<a href="all_dresses.jsp" class="btn btn-success btn-sm text-green">View
				All</a>
		</div>

	</div>
	<!-- End Old Book -->
	
	<section id="banner" class="my-5 py-5">
      <div class="container">
        <h4>mid session's sale</h4>
        <h1>autumn collection<br> UPTO 20% OFF</h1>
      </div>
    </section>
	
	<section id="services" class="my-5 pb-5">
      <div class="container text-center mt-5 py-5">
        <h3>Services</h3>
        <hr class="mx-auto">
        <p>Here you can see our featured products</p>
      </div>
      
      <div class="about container" id="about">
        <div class="about-img">
        	<img class="img-fluid mb-3" src="image/services/sv1.png" alt="">
        </div>
        <div class="about-text">
         	<span>TRANSPORTATION UNIT</span>
         	<p>You can request an exchange within 7 days of receiving
         	 the item if it doesn't fit due to ordering the wrong type, choosing the wrong size, the wrong color, or feeling unsatisfied.</p>
         	<p>Exchanged goods need to keep the original packaging, labels, clean, not washed. </p>
        	<p>Goods can only be exchanged for an equivalent product with the same code or for another product of greater value than the purchased item.</p>
      </div> <br>
      
       <div class="about-img">
        	<img class="img-fluid mb-3" src="image/services/sv4.jpg" alt="">
        </div>
        <div class="about-text">
         	<span> 3 STEPS TO RETURN GOODS</span>
         	<p> Location Annex Building-1st Floor Operation hours 6:00am-9:00pm</p>
         	<p>Free of charge for our hotel guest </p>
        	<p>With a fully-aquiped gym, free fitness roomfor members, you will easy to stay in shape wwhile you're here</p>
      </div> <br>
      
       <div class="about-img">
        	<img class="img-fluid mb-3" src="image/services/sv2.jpg" alt="">
        </div>
        <div class="about-text">
        <span> FASHION EXCHANGE POLICY </span>
         	<p>Besides travel by resort tour and discovery tour, Vietnam Booking also has countless other types of tours, ensuring to serve all needs
         	 as well as suitable for many ages such as:
         	 festival tour, honeymoon tour, Group tours, team building tours, pilgrimage tours, football tours, cheap tours.</p>
      </div> <br>
      
    </section>

	<%@include file="all_component/footer.jsp"%>
</body>
</html>