package project;

public class ResVO {
	int rno;
	String radress;
	String rname;
	String rhpl;
	String rtnum;
	String foodtype;
	int parking;
	String mapmark1;
	String area;
	String imgsrc;

public ResVO() {}

public ResVO(int rno, String radress, String rname, String rhpl, String rtnum, String foodtype, int parking,
		String mapmark1, String area, String imgsrc) {
	super();
	this.rno = rno;
	this.radress = radress;
	this.rname = rname;
	this.rhpl = rhpl;
	this.rtnum = rtnum;
	this.foodtype = foodtype;
	this.parking = parking;
	this.mapmark1 = mapmark1;
	this.area = area;
	this.imgsrc = imgsrc;
}

public int getRno() {
	return rno;
}

public void setRno(int rno) {
	this.rno = rno;
}

public String getRadress() {
	return radress;
}

public void setRadress(String radress) {
	this.radress = radress;
}

public String getRname() {
	return rname;
}

public void setRname(String rname) {
	this.rname = rname;
}

public String getRhpl() {
	return rhpl;
}

public void setRhpl(String rhpl) {
	this.rhpl = rhpl;
}

public String getRtnum() {
	return rtnum;
}

public void setRtnum(String rtnum) {
	this.rtnum = rtnum;
}

public String getFoodtype() {
	return foodtype;
}

public void setFoodtype(String foodtype) {
	this.foodtype = foodtype;
}

public int getParking() {
	return parking;
}

public void setParking(int parking) {
	this.parking = parking;
}

public String getMapmark1() {
	return mapmark1;
}

public void setMapmark1(String mapmark1) {
	this.mapmark1 = mapmark1;
}

public String getArea() {
	return area;
}

public void setArea(String area) {
	this.area = area;
}

public String getImgsrc() {
	return imgsrc;
}

public void setImgsrc(String imgsrc) {
	this.imgsrc = imgsrc;
}


}