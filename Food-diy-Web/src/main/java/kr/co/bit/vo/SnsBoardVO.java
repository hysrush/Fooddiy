package kr.co.bit.vo;

public class SnsBoardVO {

	private int no;
	private String title;
	private String content;
	private String fileName;
	private int like;
	private String regDate;
	private int viewCnt;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
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
		return "SnsBoardVO [no=" + no + ", title=" + title + ", content=" + content + ", fileName=" + fileName
				+ ", like=" + like + ", regDate=" + regDate + ", viewCnt=" + viewCnt + "]";
	}
	
	
	
	
	
	
	
	
	
}
