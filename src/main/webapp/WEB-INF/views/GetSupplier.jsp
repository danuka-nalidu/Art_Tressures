<%@page import="com.oop.model.Supplier"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>SLIIT OOP Supplier Management</title>

<!-- Custom Css -->
    <link rel="stylesheet" href="SupplierStyles.css">

    <!-- FontAwesome 5 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">

</head>
<body>

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
            <img  src="././images/art logo.jpg" width="100px" height="100px" style="border-radius: 50%;">

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
    

	<h2 class="h2">Get Supplier Page</h2>

	 Supplier Management App for OOP jsp servlet.
	<br>
	<br>
	<%
		Supplier Supplier = (Supplier) request.getAttribute("Supplier");
	%>

	<form method="POST" action="UpdateSupplierServlet">
		<table>
    <tr>
        <td>Supplier Name</td>
        <td><input type="text" name="SupplierName" value="<%=Supplier.getName()%>" /></td>
    </tr>
     <tr>
     	 <td>Phone Number</td>
        <td><input type="text" name="Address" value="<%=Supplier.getAddress()%>" /></td>
    </tr>
    <tr>
        <td>Email</td>
        <td><input type="text" name="Email" value="<%=Supplier.getEmail()%>" /></td>
    </tr>
    <tr>
       <td>Address</td>
        <td><input type="text" name="Phone" value="<%=Supplier.getPhone()%>" /></td>
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
        <td><input type="text" name="AccountNumber" value="<%=Supplier.getAccountNumber()%>" /></td>
    </tr>
    <tr>
        <td>Bank User Name</td>
        <td><input type="text" name="BankUserName" value="<%=Supplier.getBankUserName()%>" /></td>
    </tr>
    <tr>
        <td>Branch</td>
        <td><input type="text" name="Branch" value="<%=Supplier.getBranch()%>" /></td>
    </tr>
</table>
<h2>Artwork Category</h2>
<table>
    <tr>
        <td>
            <label for="art_categories">Select Art Categories:</label>
            <select id="art_categories" name="ArtCategories" multiple>
                <option value="painting" <%=Supplier.getArtCategories().contains("painting") ? "selected" : "" %>>Painting</option>
                <option value="sculpture" <%=Supplier.getArtCategories().contains("sculpture") ? "selected" : "" %>>Sculpture</option>
                <option value="photography" <%=Supplier.getArtCategories().contains("photography") ? "selected" : "" %>>Photography</option>
            </select>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>User Name</td>
        <td><input type="text" name="UserName" value="<%=Supplier.getUserName()%>" /></td>
    </tr>
    <tr>
        <td>Password</td>
        <td><input type="Password" name="Password" value="<%=Supplier.getPassword()%>" /></td> 
    </tr>
    <tr>
		<input type="hidden" name="SupplierID" value="<%=Supplier.getSupplierID()%>" />
        <td colspan="2"><input type="submit" value="update" class="add-button" /></td>
    </tr>
    <tr>
        <td colspan="2"><input type="reset" value="Reset" class="reset-button" /></td>
    </tr>
</table>

	</form>

	<table>
		<tr>
			<td colspan="2">
				<form method="POST" action="DeleteSupplierServlet">
					<input type="hidden" name="SupplierID" value="<%=Supplier.getSupplierID()%>" /> <input type="submit"
						value="Delete Supplier" class="delete-button"/>
				</form>
			</td>
		</tr>
	</table>

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

</body>
</html>





