package kr.co.bit.cart.vo;

import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class CartVO {
	
	
	private String bread;
	private String cheese;
	private Map topping;
	private Map vegetable;
	private Map sauce;
	
	public String getBread() {
		return bread;
	}
	public void setBread(String bread) {
		this.bread = bread;
	}
	public String getCheese() {
		return cheese;
	}
	public void setCheese(String cheese) {
		this.cheese = cheese;
	}
	public Map getTopping() {
		return topping;
	}
	public void setTopping(Map topping) {
		this.topping = topping;
	}
	public Map getVegetable() {
		return vegetable;
	}
	public void setVegetable(Map vegetable) {
		this.vegetable = vegetable;
	}
	public Map getSauce() {
		return sauce;
	}
	public void setSauce(Map sauce) {
		this.sauce = sauce;
	}
	
}
