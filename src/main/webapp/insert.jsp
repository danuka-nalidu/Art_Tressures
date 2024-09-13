<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

    <!-- Custom Css -->
    <link rel="stylesheet" href="ArtWorkStyles.css">

    <!-- FontAwesome 5 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
 
</head>
<body>
<!-- Navbar top -->
    <div class="navbar-top">
        <div class="title">
            <h1 style="font-family:'Dancing Script', cursive";>Supplier Profile</h1>
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
            <img src="images/art logo.jpg" alt="" width="100" height="100">

            <div class="name">
                Art Treasure
            </div>
            <div class="job">
                Bidding System
            </div>
        </div>

        <div class="sidenav-url">
            <div class="url">
                <a href="index.jsp">Home</a>
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
                <a href="DisplayArtworkServlet" >  Artwork History</a>
                <hr align="center">
                   </div>
        </div>
    </div>
    <!-- End -->
    
    <div class="main">
         
        <div class="card">
            <div class="card-body" style="width:60%";>
                <i class="fa fa-pen fa-xs edit"></i>
                
                <div class="form">
				   <center> <form action="insert" method="post" onsubmit="return validateForm()"></center>
				   <center> <h2 style= "font-family: 'Dancing Script', cursive; center; font-size: 150%;">Add Artwork</h2></center>
				        <label for="name">Name:</label>
				        <input type="text" id="name" name="name" required><br><br>
			
				        <label for="description">Description:</label><br>
				        <textarea id="description" name="description" rows="4" cols="50" required></textarea><br><br>
				
						<label for="bid_price">Bid Price:</label>
				        <input type="number" id="bid_price" name="bid_price" min="10" required><br><br>
				
				        <label for="start_date">Start Date:</label>
				        <input type="date" id="start_date" name="start_date" required><br><br>
				
				        <label for="end_date">End Date:</label>
				        <input type="date" id="end_date" name="end_date" required><br><br>
				
						<label for="minimum_price">Minimum Bid:</label>
				        <input type="number" id="min_bid_price" name="min_bid_price" min="5"  required ><br><br>
				        
				        <center> <input type="submit" style= "background-color:#0056b3;" value="Submit"></center>
				    </form></center></div>
			</div>  
        </div>
        
     <center>    <h2>SOCIAL MEDIA</h2></center>
        <div class="card">
            <div class="card-body">
                <i class="fa fa-pen fa-xs edit"></i>
                <center> <div class="social-media">
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
                </div></center>
            </div>
        </div>
    </div>
 <!-- End -->
    <script>
        function validateForm() {
            var startDateInput = document.getElementById("start_date");
            var endDateInput = document.getElementById("end_date");
            var startDate = new Date(startDateInput.value);
            var endDate = new Date(endDateInput.value);
            var currentDate = new Date();
            
            if (startDate < currentDate) {
                alert("Start date cannot be a past date.");
                startDateInput.value = "";
                return false;
            }
            if (endDate <= currentDate) {
                alert("End date must be a future date.");
                endDateInput.value = "";
                return false;
            }
            
            if (endDate <= startDate) {
                alert("End date cannot be the same as or earlier than the start date.");
                endDateInput.value = "";
                return false;
            }
            
            return true;
        }
    </script>
</body>
</html>