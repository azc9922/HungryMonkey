package project;

public class ReviewVO {
	int reno;
	String nickname;
	String title;
	String rContents;
	int grade;
	String imgSrc;
	int rno;
	String rRegdate;
	public ReviewVO() {
		
	}
	public ReviewVO(int reno, String nickname, String title, String rContents, int grade, String imgSrc, int rno,
			String rRegdate) {
		super();
		this.reno = reno;
		this.nickname = nickname;
		this.title = title;
		this.rContents = rContents;
		this.grade = grade;
		this.imgSrc = imgSrc;
		this.rno = rno;
		this.rRegdate = rRegdate;
	}
	public int getReno() {
		return reno;
	}
	public void setReno(int reno) {
		this.reno = reno;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getrContents() {
		return rContents;
	}
	public void setrContents(String rContents) {
		this.rContents = rContents;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getImgSrc() {
		return imgSrc;
	}
	public void setImgSrc(String imgSrc) {
		this.imgSrc = imgSrc;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getrRegdate() {
		return rRegdate;
	}
	public void setrRegdate(String rRegdate) {
		this.rRegdate = rRegdate;
	}
	
}
