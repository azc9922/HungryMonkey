package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RtimeDAO {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@db1.cwofzefzc3ci.ap-northeast-2.rds.amazonaws.com:1521:db1";
		String user = "jadmin";
		String password = "tiger999";
		Connection conn = null; //java.sql�뿉 �엳�뒗寃껋쑝濡� import
		PreparedStatement pstmt = null;
		StringBuffer sb = new StringBuffer();
		ResultSet rs = null;
		
		
		public RtimeDAO(){
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url,user,password);
				System.out.println("conn : " + conn);
				} catch (SQLException e) {
					System.out.println("db연결실패");
				} catch (ClassNotFoundException e) {
				System.out.println("드라이버 로딩 실패");
				e.printStackTrace();
			}
		}
		
		public RtimeVO selectOne(int no) {
			sb.setLength(0);
			sb.append("SELECT RNO, TIME, BKTIME ");
			sb.append(" FROM RTIME WHERE RNO = ? ");
			 // 議곌굔�뿉 留뚯”�븯�뒗 �뻾 �븳媛쒕쭔 異쒕젰
			RtimeVO vo = null;
			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setInt(1, no);
				rs = pstmt.executeQuery();
				
				rs.next();
				
				
				String time = rs.getString("TIME");
				String bktime = rs.getString("BKTIME");
				
		
				// no�뒗 寃뚯떆臾� 踰덊샇
				vo = new RtimeVO(no, time, bktime);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			
			return vo;	
		
		}//selectOne() end
		
		
		
		
		

}
