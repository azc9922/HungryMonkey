package project;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

public class test {
	public static void main(String[] args) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd kk:mm:ss");
		String strDate = dateFormat.format(Calendar.getInstance().getTime());
		System.out.println(strDate);
		
		DetailVO vo = new DetailVO();
	
		DetailDAO dao = new DetailDAO();
		int a = 1;
		vo.setNickname("양성모");
		vo.setAdress("경기도");
		vo.setHp("01045456456");
		vo.setEmail("asc@casdasd");
		vo.setBirth("111111");
		vo.setPwq("hi");
		vo.setPwa("by");
		vo.setEmcheck(a);
		
		
		int no = 17;
		RmenuDAO dao1 = new RmenuDAO();
		ArrayList<RmenuVO> list  = dao1.selectAll(no);
		for(RmenuVO vo1 : list) {
			
			System.out.println(vo1.getRno());
			System.out.println(vo1.getMenu());
			System.out.println(vo1.getSal());
			System.out.println(vo1.getImgsrc());
			System.out.println("-----------------");
			
			
		}
		
		
		
		//MasterVO vo1 = new MasterVO();
		
//		MasterDAO dao1 = new MasterDAO();
//		vo1.setNickname("김경하");
//		vo1.setId("asd123123asd");
//		vo1.setName("as123123dasdads");
//		vo1.setPw("asda123123sdas");
//		vo1.setProfile("srcr12313dr");
//		dao1.insertOne(vo1);
	}
	
	
	
}
