package kr.co.bit.vo;

public class SnsBoardVO {

	private int no;
	private String id;  // 사용자 id
	private String pic; // 사용자 사진
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
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
		return "SnsBoardVO [no=" + no + ", id=" + id + ", pic=" + pic + ", title=" + title + ", content=" + content
				+ ", fileName=" + fileName + ", like=" + like + ", regDate=" + regDate + ", viewCnt=" + viewCnt + "]";
	}
	
	
	
	
	
	
	
	
	
	
}
