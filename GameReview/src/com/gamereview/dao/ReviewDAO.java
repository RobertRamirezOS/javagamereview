package com.gamereview.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import com.gamereview.service.ConnectionDerby;
import com.gamerreview.model.Review;

public class ReviewDAO {
	
	private ConnectionDerby databaseManager = new ConnectionDerby();
	
	
	public void saveReview(Review review) {
		//create table game(id varchar(32), title varchar(100), summary varchar(200), image varchar(1000), rating integer)");
		String SQL = "Insert into review (id, game_id, summary, rating, review) values (?,?,?,?,?)";
				
		
		
		List<Object> params = new ArrayList<Object>();
		params.add(review.getId().toString());
		params.add(review.getGameId().toString());
		params.add(review.getSummary());
		params.add(review.getRating());
		params.add(review.getReview());
	
		
		System.out.println("Saving review is "+ review.getReview());
		databaseManager.updateQuery(SQL, params);
		
	}
	
	public List<Review> getReview(String gameId) {//this will create the game with info specified and it add the game once it get the results
		List<Review> reviews = new ArrayList<>();
		try {
			String SQL = "select * from review where game_id = '"+ gameId + "'";
			System.out.println(SQL);
			ResultSet result =databaseManager.getData(SQL);//get all games from data base
			while(result.next()) {
				Review review = new Review();//creates the game OBJECT
				review.setId(UUID.fromString(result.getString("id")));//pull all information and populate the game object for the all 5
				review.setGameId(UUID.fromString(result.getString("game_id")));
				review.setSummary(result.getString("summary"));
				review.setRating(result.getInt("rating"));
				review.setReview(result.getString("review"));
				
				System.out.println("Getting "+review.getReview());
				
				reviews.add(review);//finally add the game to the list 
			}
		}
		catch(Exception e) {
			e.printStackTrace(System.err);
		}
		return reviews;
		
	}

}

