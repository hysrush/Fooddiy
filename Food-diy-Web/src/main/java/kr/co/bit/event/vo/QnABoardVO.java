package kr.co.bit.event.vo;

import org.springframework.web.multipart.MultipartFile;

public class QnABoardVO {

	private int no;
	private String title;
	private MultipartFile imgFile; // 첨부파일
	private String content;
	private String StartDate;
	private String EndDate;
	private String regDate;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public MultipartFile getImgFile() {
	    return imgFile;
	}
	public void setImgFile(MultipartFile imgFile) {
	    this.imgFile = imgFile;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStartDate() {
		return StartDate;
	}
	public void setStartDate(String startDate) {
		StartDate = startDate;
	}
	public String getEndDate() {
		return EndDate;
	}
	public void setEndDate(String endDate) {
		EndDate = endDate;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "EventBoardVO [no=" + no + ", title=" + title + ", content=" + content + ", StartDate=" + StartDate
				+ ", EndDate=" + EndDate + ", regDate=" + regDate + "]";
	}
	
	
	
	
	
	
	
}
