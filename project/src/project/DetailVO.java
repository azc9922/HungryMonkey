package project;

public class DetailVO {
	String nickname;
	String adress;
	String hp;
	String email;
	String birth;
	String pwq;
	String pwa;
	int emcheck;
	String regdate;
	


DetailVO(){
	
	
}



public DetailVO(String nickname, String adress, String hp, String email, String birth, String pwq, String pwa,
		int emcheck, String regdate) {
	super();
	this.nickname = nickname;
	this.adress = adress;
	this.hp = hp;
	this.email = email;
	this.birth = birth;
	this.pwq = pwq;
	this.pwa = pwa;
	this.emcheck = emcheck;
	this.regdate = regdate;
}



public String getNickname() {
	return nickname;
}



public void setNickname(String nickname) {
	this.nickname = nickname;
}



public String getAdress() {
	return adress;
}



public void setAdress(String adress) {
	this.adress = adress;
}



public String getHp() {
	return hp;
}



public void setHp(String hp) {
	this.hp = hp;
}



public String getEmail() {
	return email;
}



public void setEmail(String email) {
	this.email = email;
}



public String getBirth() {
	return birth;
}



public void setBirth(String birth) {
	this.birth = birth;
}



public String getPwq() {
	return pwq;
}



public void setPwq(String pwq) {
	this.pwq = pwq;
}



public String getPwa() {
	return pwa;
}



public void setPwa(String pwa) {
	this.pwa = pwa;
}



public int getEmcheck() {
	return emcheck;
}



public void setEmcheck(int emcheck) {
	this.emcheck = emcheck;
}



public String getRegdate() {
	return regdate;
}



public void setRegdate(String regdate) {
	this.regdate = regdate;
}



}