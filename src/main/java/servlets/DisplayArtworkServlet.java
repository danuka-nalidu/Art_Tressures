package servlets;
import java.util.List;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Artwork;
import services.ArtworkDBUtil;
import services.artworkDB;
 
 
	@WebServlet("/DisplayArtworkServlet")
	public class DisplayArtworkServlet extends HttpServlet {
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	List<Artwork> artworks = artworkDB.getallartworks();
	        request.setAttribute("artwork", artworks);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("display.jsp");
	        dispatcher.forward(request, response);
	    }
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			List<Artwork> artworks = artworkDB.getallartworks();
	        request.setAttribute("artwork", artworks);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("display.jsp");
	        dispatcher.forward(request, response);
		}
	}


