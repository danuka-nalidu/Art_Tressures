<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Artwork List</title>


<!-- Custom Css -->
<link rel="stylesheet" href="ArtWorkStyles.css">

<!-- FontAwesome 5 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	text-align: center;
	padding: 20px;
}

h1 {
	color: #333;
}

table {
	border-collapse: collapse;
	width: 100%;
	max-width: 800px;
	margin: 0 auto; /* Center the table horizontally */
	background-color: #fff;
}

table, th, td {
	border: 1px solid #333;
}

th, td {
	padding: 10px;
}

th {
	background-color: #333;
	color: #fff;
}

a {
	text-decoration: none;
	color: #007BFF;
}

a:hover {
	text-decoration: underline;
}
</style>
</head>
<body style="background-color: #e8f5ff;">
	<!-- Navbar top -->
	<div class="navbar-top">
		<div class="title">
			<h1>Supplier Profile</h1>
		</div>

		<!-- Navbar -->
		<ul>
			<li><a href="#message"> <span class="icon-count">29</span> <i
					class="fa fa-envelope fa-2x"></i>
			</a></li>
			<li><a href="#notification"> <span class="icon-count">59</span>
					<i class="fa fa-bell fa-2x"></i>
			</a></li>
			<li><a href="#sign-out"> <i class="fa fa-sign-out-alt fa-2x"></i>
			</a></li>
		</ul>
		<!-- End -->
	</div>
	<!-- End -->

	<!-- Sidenav -->
	<div class="sidenav">
		<div class="profile">
			<img  src="images/art logo.jpg" width="100px" height="100px" style="border-radius: 50%;">
			<div class="name">Art Treasure</div>
			<div class="job">Bidding System</div>
		</div>

		<div class="sidenav-url">
			<div class="url">
				<a href="index.jsp" class="active">Home</a>
				<hr align="center">
			</div>
			<div class="url">
				<a href="#settings">Settings</a>
				<hr align="center">
			</div>
			<div class="url">
				<a href=" insert.jsp">Add artwork</a>
				<hr align="center">
			</div>
			<div class="url">
				<a href=" DisplayArtworkServlet"> Artwork History</a>
				<hr align="center">
			</div>
		</div>
	</div>
	<!-- End -->

	<div class="main">

		<div class="card">
			<div class="card-body">
				<i class="fa fa-pen fa-xs edit"></i>

				<h1>Artwork List</h1>
				<table border="1">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Description</th>
							<th>Bid_Price</th>
							<th>Start_Date</th>
							<th>End_Date</th>
							<th>Minimum Bid</th>
							<th>Edit</th>
							<th>Delete</th>


						</tr>
					</thead>
					<tbody>
						<c:forEach var="arts" items="${artwork}">
							<tr>
								<td>${arts.id}</td>
								<td>${arts.name}</td>
								<td>${arts.description}</td>
								<td>${arts.bidPrice}</td>
								<td>${arts.startDate}</td>
								<td>${arts.endDate}</td>
								<td>${arts.minBid}</td>
								<td><a href="singleArtworkViewServlet?id=${arts.id}">Edit</a></td>
								<td><a href="deleteArtworkServlet?id=${arts.id}">Delete</a></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<h2>SOCIAL MEDIA</h2>
		<div class="card">
			<div class="card-body">
				<i class="fa fa-pen fa-xs edit"></i>
				<div class="social-media" style="width: 90%;">
					<span class="fa-stack fa-sm"> <i
						class="fas fa-circle fa-stack-2x"></i> <i
						class="fab fa-facebook fa-stack-1x fa-inverse"></i>
					</span> <span class="fa-stack fa-sm"> <i
						class="fas fa-circle fa-stack-2x"></i> <i
						class="fab fa-twitter fa-stack-1x fa-inverse"></i>
					</span> <span class="fa-stack fa-sm"> <i
						class="fas fa-circle fa-stack-2x"></i> <i
						class="fab fa-instagram fa-stack-1x fa-inverse"></i>
					</span> <span class="fa-stack fa-sm"> <i
						class="fas fa-circle fa-stack-2x"></i> <i
						class="fab fa-invision fa-stack-1x fa-inverse"></i>
					</span> <span class="fa-stack fa-sm"> <i
						class="fas fa-circle fa-stack-2x"></i> <i
						class="fab fa-github fa-stack-1x fa-inverse"></i>
					</span> <span class="fa-stack fa-sm"> <i
						class="fas fa-circle fa-stack-2x"></i> <i
						class="fab fa-whatsapp fa-stack-1x fa-inverse"></i>
					</span> <span class="fa-stack fa-sm"> <i
						class="fas fa-circle fa-stack-2x"></i> <i
						class="fab fa-snapchat fa-stack-1x fa-inverse"></i>
					</span>
				</div>
			</div>
		</div>

		<!-- End -->
</body>
</html>
