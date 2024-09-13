<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
     
    <!-- Custom Css -->
    <link rel="stylesheet" href="ArtWorkStyles.css">

    <!-- FontAwesome 5 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
 
</head>
<body><!-- Navbar top -->
    <div class="navbar-top">
        <div class="title">
            <h1>Supplier Profile</h1>
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
            <img src="https://imdezcode.files.wordpress.com/2020/02/imdezcode-logo.png" alt="" width="100" height="100">

            <div class="name">
                Art Treasure
            </div>
            <div class="job">
                Bidding System
            </div>
        </div>

        <div class="sidenav-url">
            <div class="url">
                <a href="#profile" class="active">Profile</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="#settings">Settings</a>
                <hr align="center">
            </div>
                         <div class="url">
                <a href="insert.jsp">Add artwork</a>
                <hr align="center">
                   </div>
                    <div class="url">
                <a href="DisplayArtworkServlet">  Artwork History</a>
                <hr align="center">
                   </div>
        </div>
    </div>
    <!-- End -->
    
    <div class="main">
         
        <div class=" card" style="margin-bottom:60%";>
            <div class="card-body"  >
                <i class="fa fa-pen fa-xs edit"></i>
<c:forEach var="arts" items="${artwork}">

    <center><h1>Edit ${arts.name}</h1><center>
    <form action="UpdateCustomerServlet" method="post"  >
   
   		<label for="name">ID:</label>
        <input type="text" id="id" name="id" placeholder="${arts.id}" value="${arts.id}" readonly required><br><br>
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="${arts.name}" required><br><br>

        <label for="description">Description:</label><br>
        <textarea id="description" name="description" rows="4" cols="50" placeholder="${arts.description}" required></textarea><br><br>

		<label for="bid_price">Bid Price:</label>
        <input type="number" id="bid_price" name="bid_price" placeholder="${arts.bidPrice}" required><br><br>

        <label for="start_date">Start Date (${arts.startDate}) :</label>
        <input type="date" id="start_date" name="start_date" required><br><br>

        <label for="end_date">End Date (${arts.endDate}) :</label>
        <input type="date" id="end_date" name="end_date" required><br><br>

		<label for="minimum_price">Minimum Bid:</label>
        <input type="number" id="min_bid_price" name="min_bid_price" placeholder="${arts.minBid}" required><br><br>
        
       <center>  <input type="submit" value="Edit"> </center>     
  </form>
            
        </c:forEach>
        <h2>SOCIAL MEDIA</h2>
        <div class="card">
            <div class="card-body" style ="width:70%;">
                <i class="fa fa-pen fa-xs edit"></i>
                <div class="social-media" style="width: 90%;">
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
 <!-- End -->
</body>
</html>
 