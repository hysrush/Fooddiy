package kr.co.bit.vo;

public class UserStamp {

	private int stamp;
	private String id;

	
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getStamp() {
		return stamp;
	}

	public void setStamp(int stamp) {
		this.stamp = stamp;
	}

	@Override
	public String toString() {
		return "UserPointVO [stamp=" + stamp + ", id=" + id + "]";
	}

}
