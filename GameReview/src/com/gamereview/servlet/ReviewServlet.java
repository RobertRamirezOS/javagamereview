package com.gamereview.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gamerreview.model.Game;
import com.gamerreview.model.Review;

/**
 * Servlet implementation class Review
 */
@WebServlet("/review")
public class ReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	private static List<Game> games = new ArrayList<>();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReviewServlet() {
        super();
        
        //Initialize data
        this.initializeData();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/review.jsp";
		
		request.setAttribute("test", "roberttest");//puting dynamic information into the jsp
		request.setAttribute("games", games);  // Adds the game data to the page
		
		
		getServletContext()//  forwards to the jsp
		.getRequestDispatcher(url)
		.forward(request, response);// this forward to the jsp
	}
	
	public void initializeData() {
		
		
		// God of war game with review
		Game game1 = new Game();
		game1.setGameTitle("GodOfWar");
		game1.setGameImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0P3FKEG-RzN_Iw8c8Tj8PS2U6JR803LXCPREy_BGA1YcNwuCRog");
		
		Review game1Review1 = new Review();
		game1Review1.setSummary("I hated this game");
		game1Review1.setRating(2);
		game1Review1.setReview("I couldn't get past level 1.... too hard");
		// End of God of war game with review
		
		
		game1.getGameReview().add(game1Review1);

		
		games.add(game1);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
