<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html>
<head>
 
<!-- Custom Css -->
    <link rel="stylesheet" href="SupplierStyles.css">

    <!-- FontAwesome 5 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">



<meta charset="UTF-8">
<title>Supplier Registration Form</title>
</head>
<body class="body">


 <!-- Navbar top -->
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
            <img  src="images/art logo.jpg" width="100px" height="100px" style="border-radius: 50%;">
            <div class="name">
                Art Treasures
            </div>
            <div class="job">
                Auction System for your taste in Art.
            </div>
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
            <a href="insert.jsp">Add Artwork</a>
            <hr align="center">
        </div>
        <div class="url">
            <a href="DisplayArtworkServlet">Artwork History</a>
            <hr align="center">
        </div>
        </div>
    </div>
    <!-- End -->

    <!-- Main -->
    <div class="main">
        
        <div class="card">
            <div class="card-body">
	 <div class="form-container">

	<h2 class="h2">Supplier Registration</h2>
	<p class="form-description">Please fill out the form to become a supplier for the artwork
		bidding system.</p>

	<br>
	<br>

	<form method="POST" action="AddSupplierServlet">
		 <table>
            <tr>
                <td>Supplier Name</td>
                <td><input type="text" name="SupplierName" /></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="Address" /></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="email" name="Email" /></td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td><input type="tel"  name="Phone"  pattern="^\d{10}$" required/></td>
            </tr>
            

            <tr>
                <td>Gender</td>
                <td>
                    <input type="radio" name="Gender" value="male" checked="checked" tabindex="1" /> Male
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="radio" name="Gender" value="female" tabindex="2" /> Female
                </td>
            </tr>
        </table>
        <h2>Bank Details</h2>
        <table>
            <tr>
                <td>Account Number</td>
                <td><input type="text" name="AccountNumber"  pattern="^\d{16}$" required/></td>
            </tr>
            <tr>
                <td>Bank User Name</td>
                <td><input type="text" name="BankUserName" /></td>
            </tr>
            <tr>
                <td>Branch</td>
                <td><input type="text" name="Branch" /></td>
            </tr>
        </table>
        <h2>Artwork Category</h2>
        <table>
            <tr>
                <td>
                    <label for="art_categories">Select Art Categories:</label>
                    <select id="art_categories" name="ArtCategories" multiple>
                        <option value="painting">Painting</option>
                        <option value="sculpture">Sculpture</option>
                        <option value="photography">Photography</option>
                        
                    </select>
                </td>
            </tr>
        </table>

        <table>
            <tr>
                <td>User Name</td>
                <td><input type="text" name="UserName" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="Password" name="Password"  minlength="6" required/></td> 
            </tr>
            <tr>
            
             <div class="button-container">
                <td colspan="2"><input type="submit" value="Add Supplier" class="add-button" /></td>
            </tr>
            <tr>
                <td colspan="2"><input type="reset" value="Reset" class="reset-button" /></td>
            </tr>
        </table>
	</form>

	<form method="POST" action="ListSupplierServlet">
		<table>
			<tr>
				<td colspan="2"><input type="submit" value="List All Supplier"
					class="list-button" /></td>
			</tr>
		</table>
		 </div>
	</form>
	</div>
	</div>
</div>  
        </div>
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
	



</body>
</html>