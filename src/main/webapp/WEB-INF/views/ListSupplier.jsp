<%@page import="com.oop.model.Supplier"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.oop.service.SupplierServiceImpl"%>
<%@page import="com.oop.service.ISupplierService"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
                <a href="#index.jsp" class="active">Home</a>
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
    
	<h3>List of Suppliers</h3>
	<br>
	<br>
	  
    <!-- Main -->
    <div class="main">
      <div class="card">
            <div class="card-body">
                <i class="fa fa-pen fa-xs edit"></i>
		<table border="1" cellpadding="12">
		 <caption><h2>List of Suppliers</h2></caption>
		 <a href="supplierhomeView.jsp">Add Supplier</a>
		 <tbody>
		  <tr>
                <th>Supplier ID</th>
                <th>SupplierName</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
                <th>Gender</th>
                <th>AccountNumber</th>
                <th>BankUserName</th>
                <th>Branch</th>
                <th>art category</th>
                <th>UserName</th>
                <th>Password</th>
                <th>select</th>
                
            </tr>
            <%
	            ISupplierService iSupplierService = new SupplierServiceImpl();
				ArrayList<Supplier> arrayList = iSupplierService.getSuppliers();
				
				for(Supplier Supplier : arrayList){
			%>
			 <tr>
				<td> <%=Supplier.getSupplierID() %> </td>
				<td> <%=Supplier.getName() %> </td>
				<td> <%=Supplier.getEmail() %> </td>
				<td> <%=Supplier.getAddress() %> </td>
				<td> <%=Supplier.getPhone() %> </td>
				<td> <%=Supplier.getGender() %> </td>
				<td> <%=Supplier.getAccountNumber() %> </td>
				<td> <%=Supplier.getBankUserName() %> </td>
				<td> <%=Supplier.getBranch() %> </td>
				<td> <%=Supplier.getArtCategories() %> </td>
				<td> <%=Supplier.getUserName() %> </td>	
				<td> <%=Supplier.getPassword() %> </td>
				<td> 
				<form method="POST" action="GetSupplierServlet">
				<input type="hidden" name="SupplierID" value="<%=Supplier.getSupplierID()%>"/>
				<input type="submit" value= "Select Supplier" class="select-button" /> 
				 </form>
				 </td>	
				</tr>			
			<%	
			   }
            %>
            </tbody>     
		</table>
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
        </div>
    </div>
    <!-- End -->
</body>
</html>