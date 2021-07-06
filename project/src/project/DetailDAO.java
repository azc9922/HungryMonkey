package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class DetailDAO {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@db1.cwofzefzc3ci.ap-northeast-2.rds.amazonaws.com:1521:db1";
	String user = "jadmin";
	String password = "tiger999";
	Connection conn = null; //java.sql�뿉 �엳�뒗寃껋쑝濡� import
	PreparedStatement pstmt = null;
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	
	
	public DetailDAO(){
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);
			System.out.println("conn : " + conn);
			} catch (SQLException e) {
				System.out.println("db로딩실패");
			} catch (ClassNotFoundException e) {
			System.out.println("�뱶�씪�씠踰� 濡쒕뵫�떎�뙣");
			e.printStackTrace();
		}
	}
	
	public void insertOne(String nickName, String adress, String hp, String email, String birth, String pwq, String pwa, int emCheck) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd kk:mm:ss");
		String strDate = dateFormat.format(Calendar.getInstance().getTime());
		sb.setLength(0);
		sb.append("INSERT INTO MEMBER_DETAIL ");
		sb.append("VALUES (?, ? , ? ,? , ? , ? , ? , ? ,'" + strDate + "')" );
//		TO_DATE(#strDate# , 'yyyy/mm/dd hh24:mi:ss')
		try {
			// 臾몄옣媛앹껜
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, nickName);
			pstmt.setString(2, adress);
			pstmt.setString(3, hp);
			pstmt.setString(4, email);
			pstmt.setString(5, birth);
			pstmt.setString(6, pwq);
			pstmt.setString(7, pwa);
			pstmt.setInt(8, emCheck);
			
			
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}// insertOne(BoardVO vo) end
		
	}// class end
	public void close() {
		
		
		try {
			if(rs != null) rs.close();
			if(pstmt != null)pstmt.close();
			if(conn != null)conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}// close() end
	
	
	
	
	
	
}
