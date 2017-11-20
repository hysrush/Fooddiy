package kr.co.bit.community.vo;

public class ClaimBoardVO {
	
	private int no;
	private String title;
	private String content;
	private String type;		// 문의 'I' / 칭찬 'P' / 불만 'C' / 제안 'S' / 기타 'X'
//	private String file;  첨부파일임.

	private String writer;		// User ID
	private String email;		// User Email
	private String phone;		// User Phone
	
	private String visitDate;	// 방문일
	private String visitStore;	// 방문 매장명
	
	private String regDate;
	private int viewCnt;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getVisitDate() {
		return visitDate;
	}
	public void setVisitDate(String visitDate) {
		this.visitDate = visitDate;
	}
	public String getVisitStore() {
		return visitStore;
	}
	public void setVisitStore(String visitStore) {
		this.visitStore = visitStore;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	@Override
	public String toString() {
		return "ClaimBoardVO [no=" + no + ", writer=" + writer + ", title=" + title + ", content=" + content + ", type="
				+ type + ", visitDate=" + visitDate + ", visitStore=" + visitStore + ", email=" + email + ", phone="
				+ phone + ", regDate=" + regDate + ", viewCnt=" + viewCnt + "]";
	}
	
}
