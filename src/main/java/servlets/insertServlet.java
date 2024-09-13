package servlets;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Artwork;
import services.artworkDB;

@WebServlet("/insertServlet")
public class insertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String bid_price = request.getParameter("bid_price");
        String startDate = request.getParameter("start_date");
        String endDate = request.getParameter("end_date");
        String minBid = request.getParameter("min_bid_price");
         
        //String bidPriceString = request.getParameter("bid_price");
       /* float bidPrice = Float.parseFloat(bidPriceString);
        String start_date_str = request.getParameter("Start_date");
        String end_date_str = request.getParameter("end_date");
            
        if (start_date_str != null && end_date_str != null) {
            try {
                Start_date = new Date(dateFormat.parse(start_date_str).getTime());
                end_date = new Date(dateFormat.parse(end_date_str).getTime());
            } catch (ParseException e) {
                e.printStackTrace();
                // Handle the invalid date format
            }
        }*/

        Artwork artwork = new Artwork();
        
        artwork.setName(name);
        artwork.setDescription(description);
        artwork.setbidPrice(bid_price);
        artwork.setstartDate(startDate);
        artwork.setendDate(endDate);
        artwork.setminBid(minBid);
        
        boolean isTrue = artworkDB.insertartwork(artwork);
        
        if (isTrue == true) {
            RequestDispatcher dis = request.getRequestDispatcher("/DisplayArtworkServlet");
            dis.forward(request, response);
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
            dis2.forward(request, response);
        }
    }
}
