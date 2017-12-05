package kr.co.bit.order.vo;

public class OrderVO {

	private int no;
	private String storeName;
	private String id;
	
	private String bread;
	private String cheese;
	private String topping;
	private String vegetable;
	private String sauce;
	private int qty;
	
	private String eatType;
	private int price;
	
	private String regDate;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public String getEatType() {
		return eatType;
	}

	public void setEatType(String eatType) {
		this.eatType = eatType;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "OrderVO [no=" + no + ", storeName=" + storeName + ", id=" + id + ", bread=" + bread + ", cheese="
				+ cheese + ", topping=" + topping + ", vegetable=" + vegetable + ", sauce=" + sauce + ", qty=" + qty
				+ ", eatType=" + eatType + ", price=" + price + ", regDate=" + regDate + ", getNo()=" + getNo()
				+ ", getStoreName()=" + getStoreName() + ", getId()=" + getId() + ", getBread()=" + getBread()
				+ ", getCheese()=" + getCheese() + ", getTopping()=" + getTopping() + ", getVegetable()="
				+ getVegetable() + ", getSauce()=" + getSauce() + ", getQty()=" + getQty() + ", getEatType()="
				+ getEatType() + ", getPrice()=" + getPrice() + ", getRegDate()=" + getRegDate() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	
	
	
}
