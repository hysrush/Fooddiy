package kr.co.bit.community.vo;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ClaimBoardVO {
	
	private int no;
	@NotNull
    @Size(min=1, message="제목을 입력하세요!")
	private String title;
	@NotNull
    @Size(min=1, message="내용을 입력하세요!")
	private String content;
	@NotNull
    @Size(min=1, message="문의유형을 선택하세요!")
	private String type;		// 문의 'I' / 칭찬 'P' / 불만 'C' / 제안 'S' / 기타 'X'
	@NotNull
	private String writer;		// User ID
	@NotNull
    @Size(min=1, message="이메일ID를 입력하세요!")
	private String emailID;		// User Email
	@NotNull
    @Size(min=1, message="이메일Domain을 입력하세요!")
	private String emailDomain;
	@NotNull
	private String phone1;		// User Phone
	@NotNull
    @Size(min=1, message="중간번호를 입력하세요!")
	private String phone2;
	@NotNull
    @Size(min=1, message="끝번호를 입력하세요!")
	private String phone3;
	
	private String file;		// 파일
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
	public String getEmailID() {
		return emailID;
	}
	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}
	public String getEmailDomain() {
		return emailDomain;
	}
	public void setEmailDomain(String emailDomain) {
		this.emailDomain = emailDomain;
	}
	public String getPhone1() {
		return phone1;
	}
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	public String getPhone2() {
		return phone2;
	}
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	public String getPhone3() {
		return phone3;
	}
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
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
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	@Override
	public String toString() {
		return "ClaimBoardVO [no=" + no + ", title=" + title + ", content=" + content + ", type=" + type + ", file="
				+ file + ", writer=" + writer + ", emailID=" + emailID + ", emailDomain=" + emailDomain + ", phone1="
				+ phone1 + ", phone2=" + phone2 + ", phone3=" + phone3 + ", visitDate=" + visitDate + ", visitStore="
				+ visitStore + ", regDate=" + regDate + ", viewCnt=" + viewCnt + "]";
	}
	
}
