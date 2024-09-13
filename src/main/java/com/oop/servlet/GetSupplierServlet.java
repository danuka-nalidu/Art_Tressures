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


public class GetSupplierServlet extends HttpServlet {


	
	
	private static final long serialVersionUID = 1L;

	
	public GetSupplierServlet() {
		super();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

 		String SupplierID = request.getParameter("SupplierID");			
		ISupplierService iSupplierService = new SupplierServiceImpl();
		Supplier Supplier = iSupplierService.getSupplierByID(SupplierID);

		request.setAttribute("Supplier", Supplier);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/GetSupplier.jsp");
		dispatcher.forward(request, response);
	}

}
