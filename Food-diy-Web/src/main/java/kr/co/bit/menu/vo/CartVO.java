package kr.co.bit.menu.vo;


public class CartVO {
	
	private int no;
	private String id;
	private String name;
	private String price;
	private String size;
	
	private String bread;
	private String cheese;
	private String topping;
	private String vegetable;
	private String sauce;
	private String regDate;
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
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
	public String getTopping() {
		return topping;
	}
	public void setTopping(String topping) {
		this.topping = topping;
	}
	public String getVegetable() {
		return vegetable;
	}
	public void setVegetable(String vegetable) {
		this.vegetable = vegetable;
	}
	public String getSauce() {
		return sauce;
	}
	public void setSauce(String sauce) {
		this.sauce = sauce;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	
	@Override
	public String toString() {
		return "CartVO [no=" + no + ", id=" + id + ", name=" + name + ", price=" + price + ", size=" + size + ", bread="
				+ bread + ", cheese=" + cheese + ", topping=" + topping + ", vegetable=" + vegetable + ", sauce="
				+ sauce + ", regDate=" + regDate + "]";
	}

	
	
	
}
