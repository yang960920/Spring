package com.multi.mvc200;

public class MovieVO {
	String title;
	int price;
	int people;
	int sum;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	@Override
	public String toString() {
		return "MovieVO [title=" + title + ", price=" + price + ", people=" + people + ", sum=" + sum + "]";
	}
	
	
}
