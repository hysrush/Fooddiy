package kr.co.bit.member.vo;

public class MemberVO {
	
	private int no;
	private String id;
	private String name;
	private String pw;
	private String birth;
	private String sex;
	private String email;
	private int phone1;
	private int phone2;
	private int phone3;
	//private 사진첨부 보류  알아오기
	private String grade;
	private String root;
	private String type;
	private String regDate;
	
	
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

	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhone1() {
		return phone1;
	}

	public void setPhone1(int phone1) {
		this.phone1 = phone1;
	}

	public int getPhone2() {
		return phone2;
	}

	public void setPhone2(int phone2) {
		this.phone2 = phone2;
	}

	public int getPhone3() {
		return phone3;
	}

	public void setPhone3(int phone3) {
		this.phone3 = phone3;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getRoot() {
		return root;
	}

	public void setRoot(String root) {
		this.root = root;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "MemberVO [no=" + no + ", id=" + id + ", name=" + name + ", pw=" + pw + ", birth=" + birth + ", sex="
				+ sex + ", email=" + email + ", phone1=" + phone1 + ", phone2=" + phone2 + ", phone3=" + phone3
				+ ", grade=" + grade + ", root=" + root + ", type=" + type + ", regDate=" + regDate + "]";
	}

	public static void memberUpdate(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}

}