package kr.co.bit.menu.vo;

public class MenuVO {

	private int no;
	private String name;
	private String mainmenu;
	private String type;
	private int price;
	private String detail;
	//private 메뉴사진첨부 보류 
	private String regDate;
	// 추천 'R' / 프리미엄 'P' / 베스트 'B' / 클래식 'C' / 아침식사 'M' / 샐러드 'S' / 추가메뉴 'N' / 음료 'D'
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
	public String getMainmenu() {
		return mainmenu;
	}
	public void setMainmenu(String mainmenu) {
		this.mainmenu = mainmenu;
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
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "MenuVO [no=" + no + ", name=" + name + ", mainmenu" + mainmenu + ", price=" + price + ", detail=" + detail + ", regDate=" + regDate
				+ ", type=" + type + "]";
	}
	
	
	
	
}
