<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>

    <!-- Custom Css -->
    <link rel="stylesheet" href="style.css">

    <!-- FontAwesome 5 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <link rel="stylesheet"  href="./CSS/styles.css">
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
	     	background-color: #FE7457;
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
		
    
    </style>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>
	
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
            <img src="https://imdezcode.files.wordpress.com/2020/02/imdezcode-logo.png" alt="" width="100" height="100">

            <div class="name">
                ART
            </div>
            <div class="job">
                Tressures
            </div>
        </div>

        <div class="sidenav-url">
            <div class="url">
                <a href="Profile">Profile</a>
                <hr align="center">
            </div>
            <div class="url">
                <a href="#settings">Settings</a>
                <hr align="center">
            </div>
            <div class="url">
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
                <form action="delete" method="post" onsubmit="return confirm('Are you sure you want to delete your account? This action cannot be undone.');">
					<table>
						<tr>
							<td>Customer ID</td>
							<td><input type="text" name="cusid" value="<%= id %>" readonly></td>
						</tr>
						<tr>
							<td>Name</td>
							<td><input type="text" name="name" value="<%= name %>" readonly></td>
						</tr>
						<tr>
						<td>Email</td>
						<td><input type="email" name="email" value="<%= email %>" readonly></td>
						</tr>
						<tr>
							<td>Phone number</td>
							<td><input type="text" name="phone" value="<%= phone %>" readonly></td>
						</tr>
						<tr>
							<td>User name</td>
							<td><input type="text" name="uname" value="<%= userName %>" readonly></td>
						</tr>
							
					</table>
					<br>
					<input type="submit" name="submit" value="Delete" class="button">
				</form>
            </div>
        </div>
		<br><br><br>
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
    <!-- End -->
</body>
</html>