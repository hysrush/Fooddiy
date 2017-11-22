package kr.co.bit.menu.vo;

import java.util.List;
import java.util.Map;

public class CartVO {
	
	private String name;
	private String price;
	private String size;
	
	private String bread;
	private String cheese;
	private List<Map<String, String>> topping;
	private List<Map<String, String>> vegetable;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
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
	public List<Map<String, String>> getTopping() {
		return topping;
	}
	public void setTopping(List<Map<String, String>> topping) {
		this.topping = topping;
	}
	public List<Map<String, String>> getVegetable() {
		return vegetable;
	}
	public void setVegetable(List<Map<String, String>> vegetable) {
		this.vegetable = vegetable;
	}
	public List<String> getSauce() {
		return sauce;
	}
	public void setSauce(List<String> sauce) {
		this.sauce = sauce;
	}
	private List<String> sauce;

	@Override
	public String toString() {
		return "CartVO [name=" + name + ", price=" + price + ", size=" + size + ", bread=" + bread + ", cheese="
				+ cheese + ", topping=" + topping + ", vegetable=" + vegetable + ", sauce=" + sauce + "]";
	}
	
	
}
