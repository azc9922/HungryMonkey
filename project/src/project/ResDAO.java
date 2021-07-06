package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

	public class ResDAO {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@db1.cwofzefzc3ci.ap-northeast-2.rds.amazonaws.com:1521:db1";
		String user = "jadmin";
		String password = "tiger999";
		Connection conn = null; //java.sql�뿉 �엳�뒗寃껋쑝濡� import
		PreparedStatement pstmt = null;
		StringBuffer sb = new StringBuffer();
		ResultSet rs = null;
		public ResDAO(){
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
		
		public ResVO selectOne(int no) {
			sb.setLength(0);
			sb.append("SELECT RNO, RADRESS, RNAME, RHPL, RTNUM, FOODTYPE, PARKING, MAPMARK1 ,AREA , IMGSRC ");
			sb.append(" FROM RESTAURANT WHERE RNO = ? ");
			 // 議곌굔�뿉 留뚯”�븯�뒗 �뻾 �븳媛쒕쭔 異쒕젰
			ResVO vo = null;
			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setInt(1, no);
				rs = pstmt.executeQuery();
				
				rs.next();
				
				int rno = rs.getInt("RNO");
				String radresss = rs.getString("RADRESS");
				String rname = rs.getString("RNAME");
				String rhpl = rs.getString("RHPL");
				String rtnum = rs.getString("RTNUM");
				String foodtype = rs.getString("FOODTYPE");
				int parking = rs.getInt("PARKING");
				String mapmark1 = rs.getString("MAPMARK1");
				String area = rs.getString("AREA");
				String imgsrc = rs.getString("IMGSRC");
				// no�뒗 寃뚯떆臾� 踰덊샇
				vo = new ResVO(rno, radresss, rname, rhpl, rtnum, foodtype, parking, mapmark1,area,imgsrc);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			
			return vo;	
		
		}//selectOne() end
		
		
		public ArrayList<ResVO> selectAll(String local){
			sb.setLength(0);
			sb.append("SELECT RNO , RADRESS , RNAME, RHPL, RTNUM, FOODTYPE, PARKING, MAPMARK1,AREA,IMGSRC " );
			sb.append("FROM RESTAURANT ");
			sb.append("WHERE AREA = ? ");
			
			
			
			
			
			
			//sb.setLength(0);
			//sb.append("SELECT bno, writer, title , contents , regdate , hits, ip , status  FROM BOARD ");
			ArrayList<ResVO> list = new ArrayList<ResVO>();
			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, local);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					int rno = rs.getInt("RNO");
					String radress = rs.getString("RADRESS");
					String rname = rs.getString("RNAME");
					String rhpl = rs.getString("RHPL");
					String rtnum = rs.getString("RTNUM");
					String foodtype = rs.getString("FOODTYPE");
					int parking = rs.getInt("PARKING");
					String mapmark1 = rs.getString("MAPMARK1");
					String imgsrc = rs.getString("IMGSRC");
					ResVO vo = new ResVO(rno, radress ,rname, rhpl, rtnum, foodtype, parking,mapmark1,local,imgsrc);
							
					list.add(vo);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list;
			
		}
		public ResVO selectLocal(String local) {
			sb.setLength(0);
			sb.append("SELECT * FROM RESTAURANT ");
			sb.append("WHERE AREA = ? ");
			 // 議곌굔�뿉 留뚯”�븯�뒗 �뻾 �븳媛쒕쭔 異쒕젰
			ResVO vo = null;
			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setString(1, local);
				rs = pstmt.executeQuery();
				
				rs.next();
				
				int rno = rs.getInt("RNO");
				String radresss = rs.getString("RADRESS");
				String rname = rs.getString("RNAME");
				String rhpl = rs.getString("RHPL");
				String rtnum = rs.getString("RTNUM");
				String foodtype = rs.getString("FOODTYPE");
				int parking = rs.getInt("PARKING");
				String mapmark1 = rs.getString("MAPMARK1");
				String imgsrc = rs.getString("IMGSRC");
				// no�뒗 寃뚯떆臾� 踰덊샇
				vo = new ResVO(rno, radresss, rname, rhpl, rtnum, foodtype, parking, mapmark1,local,imgsrc);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			
			return vo;	
		
		}//selectOne() end
		
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
	
