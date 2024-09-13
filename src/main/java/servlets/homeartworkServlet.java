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


@WebServlet("/homeartworkServlet")
public class homeartworkServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		artworkDB artworkdb = new artworkDB();
		List<Artwork> artworks = artworkdb.getallartworks();
        request.setAttribute("artwork", artworks);
        RequestDispatcher dispatcher = request.getRequestDispatcher("homedisplay.jsp");
        dispatcher.forward(request, response);
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		artworkDB artworkdb = new artworkDB();
		List<Artwork> artworks = artworkdb.getallartworks();
        request.setAttribute("artwork", artworks);
        RequestDispatcher dispatcher = request.getRequestDispatcher("homedisplay.jsp");
        dispatcher.forward(request, response);
	}
}
