package project;

public class Board1VO {
	int bno;
	int btype;
	String nickName;
	String title;
	String bregdate;
	String bContents;
	int rcm;
	int norcm;
	int hits;

	public Board1VO(){
		
	}

	public Board1VO(int bno, int btype, String nickName, String title, String bregdate, String bContents, int rcm,
			int norcm, int hits) {
		super();
		this.bno = bno;
		this.btype = btype;
		this.nickName = nickName;
		this.title = title;
		this.bregdate = bregdate;
		this.bContents = bContents;
		this.rcm = rcm;
		this.norcm = norcm;
		this.hits = hits;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public int getBtype() {
		return btype;
	}

	public void setBtype(int btype) {
		this.btype = btype;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBregdate() {
		return bregdate;
	}

	public void setBregdate(String bregdate) {
		this.bregdate = bregdate;
	}

	public String getbContents() {
		return bContents;
	}

	public void setbContents(String bContents) {
		this.bContents = bContents;
	}

	public int getRcm() {
		return rcm;
	}

	public void setRcm(int rcm) {
		this.rcm = rcm;
	}

	public int getNorcm() {
		return norcm;
	}

	public void setNorcm(int norcm) {
		this.norcm = norcm;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	
}
