package com.gamerreview.model;

import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/*
 *  · an internal game ID
· the game title
· the  game release date
· a link to an image for the game
· the game rating
· the review text Seed your database with some sample data
 */
public class Game {
	
	private UUID id;
	private String gameTitle;
	private String gameSummary;
	private String gameImage;
	private Integer gameRating;
	private List<Review> gameReview = new ArrayList<>();
	
	
	public UUID getId() {
		return id;
	}
	public void setId(UUID id) {
		this.id = id;
	}
	public String getGameTitle() {
		return gameTitle;
	}
	public void setGameTitle(String gameTitle) {
		this.gameTitle = gameTitle;
	}
	public String getGameImage() {
		return gameImage;
	}
	public void setGameImage(String gameImage) {
		this.gameImage = gameImage;
	}
	public Integer getGameRating() {
		return gameRating;
	}
	public void setGameRating(Integer gameRating) {
		this.gameRating = gameRating;
	}
	public List<Review> getGameReview() {
		return gameReview;
	}
	public void setGameReview(List<Review> gameReview) {
		this.gameReview = gameReview;
	}
	public String getGameSummary() {
		return gameSummary;
	}
	public void setGameSummary(String gameSummary) {
		this.gameSummary = gameSummary;
	}
}
