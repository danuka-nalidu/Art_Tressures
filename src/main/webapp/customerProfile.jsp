<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>

    <!-- Custom Css -->
    <link rel="stylesheet" href="./CSS/styles.css">

    <!-- FontAwesome 5 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <style>
    	.button {
		    font-family: "Roboto", sans-serif;
		    font-size: 18px;
		    font-weight: bold;
		    background: #2c5884;
		    width: 160px;
		    padding: 20px;
		    text-align: center;
		    text-decoration: none;
		    text-transform: uppercase;
		    color: #fff;
		    border-radius: 5px;
		    cursor: pointer;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		    -webkit-transition-duration: 0.3s;
		    transition-duration: 0.3s;
		    -webkit-transition-property: box-shadow, transform;
		    transition-property: box-shadow, transform;
		    width: 264px; /* Approximately 10cm (10cm * 96 pixels/cm) */
		    height: 37px; /* You may need to adjust the height for your design */
	     	background-color: #639FD4;
		    color: #fff;
		    padding: 10px 20px;
		    border: none;
		    border-radius: 5px;
		    font-size: 16px;
		    cursor: pointer;
			}

		.button:hover, .button:focus, .button:active{
		    box-shadow: 0 0 20ox rgba(0, 0, 0, 0.5);
		    -webkit-transform: scale(1.1);
		    transform: scale(1.1);
		
		}
		
		#buttonnew {
			margin-top:10px;
		
		}
		
		
    </style>
</head>
<body>
    <!-- Navbar top -->
    <div class="navbar-top">
        <div class="title">
            <h1>Bidder Profile</h1>
        </div>

        <!-- Navbar -->
        <ul>
            <li>
                <a href="#message">
                    <span class="icon-count">29</span>
                    <i class="fa fa-envelope fa-2x"></i>
                </a>
            </li>
            <li>
                <a href="#notification">
                    <span class="icon-count">59</span>
                    <i class="fa fa-bell fa-2x"></i>
                </a>
            </li>
            <li>
                <a href="#sign-out">
                    <i class="fa fa-sign-out-alt fa-2x"></i>
                </a>
            </li>
        </ul>
        <!-- End -->
    </div>
    <!-- End -->

    <!-- Sidenav -->
    <div class="sidenav">
        <div class="profile">
            <img  src="images/art logo.jpg" width="100px" height="100px" style="border-radius: 50%;">

            <div class="name">
                ART
            </div>
            <div class="job">
                Tressures
            </div>
        </div>

        <div class="sidenav-url">
            <div class="url">
                <a href="#profile">Profile</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="homeartworkServlet">Artwork</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="homeartworkServlet">History</a>
                <hr align="center">
            </div> <div class="url">
                <a href="#home">Home</a>
                <hr align="center">
            </div>
        </div>
    </div>
    <!-- End -->

    <!-- Main -->
    <div class="main">
        <h2>IDENTITY</h2>
        <div class="card">
            <div class="card-body">
                <i class="fa fa-pen fa-xs edit"></i>
                <table>
                    <c:forEach var="cus" items="${cusDetails}">
	
					<c:set var="id" value="${cus.id}"/>
					<c:set var="name" value="${cus.name}"/>
					<c:set var="email" value="${cus.email}"/>
					<c:set var="phone" value="${cus.phone}"/>
					<c:set var="username" value="${cus.userName}"/>
					<c:set var="password" value="${cus.password}"/>
					
					<tr>
						<td>Bidder ID</td>
						<td>${cus.id}</td>
					</tr>
					<tr>
						<td>Bidder Name</td>
						<td>${cus.name}</td>
					</tr>
					<tr>
						<td>Bidder Email</td>
						<td>${cus.email}</td>
					</tr>
					<tr>
						<td>Bidder Phone</td>
						<td>${cus.phone}</td>
					</tr>
					<tr>
						<td>Bidder User Name</td>
						<td>${cus.userName}</td>
					</tr>
					
					<tr>
						<td>Bidder Password</td>
						<td>${cus.password}</td>
					</tr>
				
					</c:forEach>
                </table>
            </div>
        </div>

        <c:url value="updatecustomerNew.jsp" var="cusupdate"> 
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="uname" value="${username}"/>
		<c:param name="pass" value="${password}"/>
		</c:url>   	
		
		<a href="${cusupdate}">
		<input type="button" name="update" value="Update" class="button">
		</a>
		<br>
		
		<c:url value="deleteCustomerNew.jsp" var="cusdelete" >
			<c:param name="id" value="${id}"></c:param>
			<c:param name="name" value="${name}"></c:param>
			<c:param name="email" value="${email}"></c:param>
			<c:param name="uname" value="${username}"></c:param>
			<c:param name="pass" value="${password}"></c:param>
		</c:url>
		<a href="${cusdelete}">
		<input type="button" name="delete" value="Delete" class="button" id="buttonnew" style="background-color:#FE7457;">
		</a>
		
		<br><br>
        <h2>SOCIAL MEDIA</h2>
        <div class="card">
            <div class="card-body">
                <i class="fa fa-pen fa-xs edit"></i>
                <div class="social-media">
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-facebook fa-stack-1x fa-inverse"></i>
                    </span>
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
                    </span>
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-instagram fa-stack-1x fa-inverse"></i>
                    </span>
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-invision fa-stack-1x fa-inverse"></i>
                    </span>
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-github fa-stack-1x fa-inverse"></i>
                    </span>
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-whatsapp fa-stack-1x fa-inverse"></i>
                    </span>
                    <span class="fa-stack fa-sm">
                        <i class="fas fa-circle fa-stack-2x"></i>
                        <i class="fab fa-snapchat fa-stack-1x fa-inverse"></i>
                    </span>
                </div>
            </div>
        </div>
    </div>
</body>
</html>