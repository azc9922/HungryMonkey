package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;


	public class RmenuDAO {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@db1.cwofzefzc3ci.ap-northeast-2.rds.amazonaws.com:1521:db1";
		String user = "jadmin";
		String password = "tiger999";
		Connection conn = null; //java.sql에 있는것으로 import
		PreparedStatement pstmt = null;
		StringBuffer sb = new StringBuffer();
		ResultSet rs = null;
		
		
		public RmenuDAO(){
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url,user,password);
				System.out.println("conn : " + conn);
				} catch (SQLException e) {
					System.out.println("db연결실패");
				} catch (ClassNotFoundException e) {
				System.out.println("드라이버 로딩실패");
				e.printStackTrace();
			}
		}
		
		
		/*
		 * public void insertMenu(int rmno, String menu , String sal, String imgsrc ,
		 * int rno ) { sb.setLength(0); sb.append("INSERT INTO RMENU ");
		 * sb.append("VALUES (?, ? , ? ,? " ); try { // 문장객체 pstmt =
		 * conn.prepareStatement(sb.toString()); pstmt.setString(1, menu);
		 * pstmt.setString(2, sal); pstmt.setString(3, imgsrc); pstmt.setInt(4, rno);
		 * 
		 * pstmt.executeUpdate();
		 * 
		 * } catch (SQLException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }// insertOne(BoardVO vo) end
		 * 
		 * }// class end
		 */		
		public ArrayList<RmenuVO> selectAll(int no){
			sb.setLength(0);
			
			sb.append("SELECT * FROM RMENU ");
			sb.append("WHERE RNO = ? ");
			
			
			//sb.setLength(0);
			//sb.append("SELECT bno, writer, title , contents , regdate , hits, ip , status  FROM BOARD ");
			ArrayList<RmenuVO> list = new ArrayList<RmenuVO>();
			try {
				pstmt = conn.prepareStatement(sb.toString());
				pstmt.setInt(1, no);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					String menu = rs.getString("MENU");
					String sal = rs.getString("SAL");
					String imgsrc = rs.getString("IMGSRC");
					RmenuVO vo = new RmenuVO(no, menu, sal, imgsrc);
					list.add(vo);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return list;
			
		}
		
		
				
	}	
		
		
		
		
	
