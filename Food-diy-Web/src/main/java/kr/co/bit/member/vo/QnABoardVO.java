package kr.co.bit.member.vo;

public class QnABoardVO {

	private int no;
	private String question;
	private String answer;
	private String regDate;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "QnABoardVO [no=" + no + ", question=" + question + ", answer=" + answer + ", regDate=" + regDate + "]";
	}
	
	
	
}
