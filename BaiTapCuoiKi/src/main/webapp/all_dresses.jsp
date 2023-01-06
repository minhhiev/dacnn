<%@page import="com.entity.User"%>
<%@page import="com.DB.DBConnect" %>
<%@page import="com.DAO.CltDAOImpl"%>
<%@page import="com.entity.BookDtls" %>
<%@page import="java.util.*" %>
<%@page import="java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All dresses</title>
<%@ include file="all_component/allCss.jsp"%>
<style type="text/css">


.crd-ho:hover {
	background-color: #fcf7f7;
}

.btn{
background-color: rgb(212, 233, 255);
text-color: green;
}

.btn-danger {
color: green;
}
</style>
</head>
<body>
<%
User u = (User) session.getAttribute("userobj");
%>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid">
		<div class="row p-3 text-center">
            <%
            CltDAOImpl dao = new CltDAOImpl(DBConnect.getConn());
            	List<BookDtls> list = dao.getTyp2Books();
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
							<a href="login.jsp" class="btn btn-danger btn-sm ml-3">Add
								Cart</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=b.getBookId()%>&&uid=<%=u.getId()%>"
								class="btn btn-danger btn-sm ml-3">Add Cart</a>
							<%
							}
							%>
							
								 <a
								href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%>
								<i class="fa-solid fa-dollar-sign"></i></a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			%>
			</div>
		</div>
</body>
</html>