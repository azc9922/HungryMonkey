package project;

public class RmenuVO {
	int rno;
	String menu;
	String sal;
	String imgsrc;
	
	
	public RmenuVO() {}


	public RmenuVO(int rno, String menu, String sal, String imgsrc) {
		super();
		this.rno = rno;
		this.menu = menu;
		this.sal = sal;
		this.imgsrc = imgsrc;
	}


	public int getRno() {
		return rno;
	}


	public void setRno(int rno) {
		this.rno = rno;
	}


	public String getMenu() {
		return menu;
	}


	public void setMenu(String menu) {
		this.menu = menu;
	}


	public String getSal() {
		return sal;
	}


	public void setSal(String sal) {
		this.sal = sal;
	}


	public String getImgsrc() {
		return imgsrc;
	}


	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}

	

}
