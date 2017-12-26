package kr.co.bit.vo;

public class OrderVO {

	private int no;
	private String storeName;
	private String id;
	private String order_price;
	private String final_price;
	private String menu;
	private String eatType;
	private String payment;
	private int orderStatus;		// 0 : 주문취소 , 2 : 대기중 , 3 : 준비중  , 4 : 준비완료
	private String regDate;
	private String num; //비회원만 가지는 주문 번호
	private String email; // 비회원에게 주문번호 전달


	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
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
	public String getOrder_price() {
		return order_price;
	}
	public void setOrder_price(String order_price) {
		this.order_price = order_price;
	}
	public String getFinal_price() {
		return final_price;
	}
	public void setFinal_price(String final_price) {
		this.final_price = final_price;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getEatType() {
		return eatType;
	}
	public void setEatType(String eatType) {
		this.eatType = eatType;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public int getOrderStatus() {
		return orderStatus;
	}
	public void setOrderStatus(int orderStatus) {
		this.orderStatus = orderStatus;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "OrderVO [no=" + no + ", storeName=" + storeName + ", id=" + id + ", order_price=" + order_price
				+ ", final_price=" + final_price + ", menu=" + menu + ", eatType=" + eatType + ", payment=" + payment
				+ ", orderStatus=" + orderStatus + ", regDate=" + regDate + ", num=" + num + ", email=" + email + "]";
	}
}
