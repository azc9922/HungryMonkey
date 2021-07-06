package project;

public class MasterVO {
	String nickname;
	String id;
	int mno;
	String name;
	String pw;
	String profile;


public MasterVO(){
	
}


public MasterVO(String nickname, String id, int mno, String name, String pw, String profile) {
	super();
	this.nickname = nickname;
	this.id = id;
	this.mno = mno;
	this.name = name;
	this.pw = pw;
	this.profile = profile;
}


public String getNickname() {
	return nickname;
}


public void setNickname(String nickname) {
	this.nickname = nickname;
}


public String getId() {
	return id;
}


public void setId(String id) {
	this.id = id;
}


public int getMno() {
	return mno;
}


public void setMno(int mno) {
	this.mno = mno;
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


public String getProfile() {
	return profile;
}


public void setProfile(String profile) {
	this.profile = profile;
}





}

