package kr.co.bit.menu.vo;

public class MenuVO {

	private int no;
	private String name;
	private int price;
	private String detail;
	//private 메뉴사진첨부 보류 
	private String date;
	private int type;
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
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "MenuVO [no=" + no + ", name=" + name + ", price=" + price + ", detail=" + detail + ", date=" + date
				+ ", type=" + type + "]";
	}
	
	
	
	
}
