package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Supplier;
import com.oop.service.SupplierServiceImpl;
import com.oop.service.ISupplierService;


public class AddSupplierServlet extends HttpServlet {

	
	private static final long serialVersionUID = 1L;

	
	public AddSupplierServlet() {
		super();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		Supplier Supplier = new Supplier();
		
		Supplier.setName(request.getParameter("SupplierName"));
		Supplier.setEmail(request.getParameter("Email"));
		Supplier.setPhone(request.getParameter("Phone"));
		Supplier.setAddress(request.getParameter("Address"));
		Supplier.setGender(request.getParameter("Gender"));
		Supplier.setAccountNumber(request.getParameter("AccountNumber"));
		Supplier.setBankUserName(request.getParameter("BankUserName"));
		Supplier.setBranch(request.getParameter("Branch"));
		Supplier.setArtCategories(request.getParameter("ArtCategories"));
		Supplier.setUserName(request.getParameter("UserName"));
		Supplier.setPassword(request.getParameter("Password"));
		

		ISupplierService iSupplierService = new SupplierServiceImpl();
		iSupplierService.addSupplier(Supplier);

		request.setAttribute("Supplier", Supplier);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListSupplier.jsp");
		dispatcher.forward(request, response);
	}

}
