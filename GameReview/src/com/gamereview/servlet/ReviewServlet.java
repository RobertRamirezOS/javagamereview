package com.gamereview.servlet;

import java.io.IOException;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gamereview.dao.GameDAO;
import com.gamereview.service.ConnectionDerby;
import com.gamerreview.model.Game;
import com.gamerreview.model.Review;

/**
 * Servlet implementation class Review
 */
@WebServlet("/review")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	private static List<Game> games = new ArrayList<>();
	private static GameDAO gameDAO = new GameDAO();
	ConnectionDerby databasemanager = new ConnectionDerby();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewServlet() {
        super();
        
        gameDAO.createDatabase();
        
        //Initialize data
        gameDAO.initializeData();
        games = gameDAO.getGames();
        
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/review.jsp";
		
		request.setAttribute("test", "roberttest");//putting dynamic information into the jsp
		request.setAttribute("games", games);  // Adds the game data to the page
		
		
		getServletContext()//  forwards to the jsp
		.getRequestDispatcher(url)
		.forward(request, response);// this forward to the jsp
	}
	
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String summary = request.getParameter("summary");
		String rating = request.getParameter("rating");
		String review = request.getParameter("review");
		String gameId = request.getParameter("gameId");
		
		
		System.out.println("Summary:"+ summary);
		System.out.println("Rating:"+rating);
		System.out.println("Review: "+review);
		System.out.println("Id: "+gameId);
		
		
		doGet(request, response);
	}

}
