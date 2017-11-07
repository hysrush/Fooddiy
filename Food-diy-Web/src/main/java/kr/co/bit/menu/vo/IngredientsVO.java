package kr.co.bit.menu.vo;

public class IngredientsVO {

	private int no;
	private String name;
	private int price;
	private int cnt;
	private int type;
	private String regDate;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "IngredientsVO [no=" + no + ", name=" + name + ", price=" + price + ", cnt=" + cnt + ", type=" + type
				+ ", regDate=" + regDate + "]";
	}
	
	
	
}
