package com.gamerreview.model;

import java.util.UUID;

public class Review {
	
	private UUID id=UUID.randomUUID();
	private UUID gameId;
	private String summary;
	private Integer rating;
	private String review;
	
	
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public Integer getRating() {
		return rating;
	}
	public void setRating(Integer rating) {
		this.rating = rating;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public UUID getId() {
		return id;
	}
	public void setId(UUID id) {
		this.id = id;
	}
	public UUID getGameId() {
		return gameId;
	}
	public void setGameId(UUID gameId) {
		this.gameId = gameId;
	}
}
