package kr.co.bit.sign.vo;

public class PhoneCertVO {

	private String id;
	private String pw;
	private String name;
	private String birthYear;
	private String birthMonth;
	private String birthDay;
	private String phone1;
	private String phone2;
	private String phone3;
	private String email;
	private String emailD;
	private String sex;
	private String root;
	
	
	public String getRoot() {
		return root;
	}

	public void setRoot(String root) {
		this.root = root;
	}

	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPw() {
		return pw;
	}
	
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getBirthYear() {
		return birthYear;
	}
	
	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
	}
	
	public String getBirthMonth() {
		return birthMonth;
	}
	
	public void setBirthMonth(String birthMonth) {
		this.birthMonth = birthMonth;
	}
	
	public String getBirthDay() {
		return birthDay;
	}
	
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
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
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEmailD() {
		return emailD;
	}
	
	public void setEmailD(String emailD) {
		this.emailD = emailD;
	}
	
	public String getSex() {
		return sex;
	}
	
	public void setSex(String sex) {
		this.sex = sex;
	}

	@Override
	public String toString() {
		return "PhoneCertVO [id=" + id + ", pw=" + pw + ", name=" + name + ", birthYear=" + birthYear + ", birthMonth="
				+ birthMonth + ", birthDay=" + birthDay + ", phone1=" + phone1 + ", phone2=" + phone2 + ", phone3="
				+ phone3 + ", email=" + email + ", emailD=" + emailD + ", sex=" + sex + ", root=" + root + "]";
	}

}
