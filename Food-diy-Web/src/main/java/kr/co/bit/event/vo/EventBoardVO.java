package kr.co.bit.event.vo;

import org.springframework.web.multipart.MultipartFile;

public class EventBoardVO {

	private int no;
	private String title;
	private MultipartFile imgFile; // 첨부파일
	private String content;
	private String startDate;
	private String endDate;
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
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "EventBoardVO [no=" + no + ", title=" + title + ", imgFile=" + imgFile + ", content=" + content
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", regDate=" + regDate + "]";
	}

	
	
	
	
	
	
}
