package com.multi.mvc300;

public class FoodVO {
	String id;
	String pw;
	String name;
	String favorite;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFavorite() {
		return favorite;
	}
	public void setFavorite(String favorite) {
		this.favorite = favorite;
	}
	@Override
	public String toString() {
		return "FoodVO [id=" + id + ", pw=" + pw + ", name=" + name + ", favorite=" + favorite + "]";
	}
	
	
}
