package project;

public class RtimeVO {
	
	int rno;
	String time;
	String bktime;
	
	public RtimeVO(){}
	
	
	

	public RtimeVO(int rno, String time, String bktime) {
		super();
		this.rno = rno;
		this.time = time;
		this.bktime = bktime;
	}




	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getBktime() {
		return bktime;
	}

	public void setBktime(String bktime) {
		this.bktime = bktime;
	}
	

}
