package kr.co.bit.community.vo;

public class QnaBoardVO {
	
	private int no;
	private String Q;
	private String A;
	private String regDate;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getQ() {
		return Q;
	}
	public void setQ(String q) {
		Q = q;
	}
	public String getA() {
		return A;
	}
	public void setA(String a) {
		A = a;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "QnaBoardVO [no=" + no + ", Q=" + Q + ", A=" + A + ", regDate=" + regDate + "]";
	}
	

}
