package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Artwork;
import services.artworkDB;
 

@WebServlet("/UpdateCustomerServlet")
public class updateartworkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private boolean isSuccess = false;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer idartwork = Integer.valueOf(request.getParameter("id"));
		String name = request.getParameter("name");
		String description = request.getParameter("description");
		String bid_price = request.getParameter("bid_price");
        String startDate = request.getParameter("start_date");
        String endDate = request.getParameter("end_date");
        String minBid = request.getParameter("min_bid_price");
        
        System.out.print(idartwork+name+description+bid_price+startDate+endDate+minBid);
        
        Artwork artwork = new Artwork(idartwork,name,description,bid_price,startDate,endDate,minBid);
        
        isSuccess = artworkDB.updateartwork(artwork);
        
        if (isSuccess == true) {
            RequestDispatcher dis = request.getRequestDispatcher("/DisplayArtworkServlet");
            dis.forward(request, response);
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
            dis2.forward(request, response);
        }
		
	}

}
