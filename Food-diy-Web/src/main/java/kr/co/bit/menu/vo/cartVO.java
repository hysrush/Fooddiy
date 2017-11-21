package kr.co.bit.menu.vo;

import java.util.List;
import java.util.Map;

public class cartVO {
	
	private String name;
	private String size;
	private String bread;
	private String cheese;
	
	// key : 재료명 , value : 가격
	private List<Map<String, String>> topping;   
	
	// key : 재료먕 , value: 빼기, 적음, 보통, 많음
	private List<Map<String, String>> vegeable;
	private List<Map<String, String>> sauce;

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
	public List<Map<String, String>> getVegeable() {
		return vegeable;
	}
	public void setVegeable(List<Map<String, String>> vegeable) {
		this.vegeable = vegeable;
	}
	public List<Map<String, String>> getSauce() {
		return sauce;
	}
	public void setSauce(List<Map<String, String>> sauce) {
		this.sauce = sauce;
	}
	@Override
	public String toString() {
		return "cartVO [bread=" + bread + ", cheese=" + cheese + ", topping=" + topping + ", vegeable=" + vegeable
				+ ", sauce=" + sauce + "]";
	}
}
