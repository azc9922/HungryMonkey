package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;


public class ReviewDAO {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@db1.cwofzefzc3ci.ap-northeast-2.rds.amazonaws.com:1521:db1";
	String user = "jadmin";
	String password = "tiger999";
	Connection conn = null; //java.sql�뿉 �엳�뒗寃껋쑝濡� import
	PreparedStatement pstmt = null;
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	
	
	public ReviewDAO(){
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

	public ArrayList<ReviewVO> selectAll(int rno){
		sb.setLength(0);
		
		sb.append("SELECT RENO, NICKNAME, TITLE, RCONTENTS, GRADE, IMGSRC, RNO,RREGDATE ");
		sb.append("FROM REVIEW ");
		sb.append("WHERE RNO = ? ");
		
		
		
		
		
		
		//sb.setLength(0);
		//sb.append("SELECT bno, writer, title , contents , regdate , hits, ip , status  FROM BOARD ");
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, rno);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int reno = rs.getInt("RENO");
				String nickName = rs.getString("NICKNAME");
				String title = rs.getString("TITLE");
				String rContents = rs.getString("RCONTENTS");
				int grade = rs.getInt("GRADE");
				String imgsrc = rs.getString("IMGSRC");
				String rRegdate = rs.getString("RREGDATE");
				ReviewVO vo = new ReviewVO(reno, nickName, title, rContents, grade, imgsrc, rno, rRegdate);
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	
	public void customorInsertOne(String nickName, String title, String rContents ,String filename, int no, int grade) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd kk:mm:ss");
		String strDate = dateFormat.format(Calendar.getInstance().getTime());
		sb.setLength(0);
		sb.append("INSERT INTO REVIEW ");
		sb.append("VALUES (REVIEW_RENO.NEXTVAL, ?, ?, ?, ?, ?, ? ,'"+strDate+"') ");
		
		try {
			pstmt= conn.prepareStatement(sb.toString());
			pstmt.setString(1, nickName);
			pstmt.setString(2, title);
			pstmt.setString(3, rContents);
			pstmt.setInt(4, grade);
			pstmt.setString(5, "../upload/"+filename);
			pstmt.setInt(6, no);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ReviewVO selectOne(int no) {
		sb.setLength(0);
		sb.append("SELECT RENO, NICKNAME, TITLE, RCONTENTS, GRADE, IMGSRC, RNO,RREGDATE ");
		sb.append(" FROM REVIEW WHERE RENO = ? ");
		ReviewVO vo = null;
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			int reno = rs.getInt("RENO");
			String nickName = rs.getString("NICKNAME");
			String title = rs.getString("TITLE");
			String rContents = rs.getString("RCONTENTS");
			int grade = rs.getInt("GRADE");
			String imgsrc = rs.getString("IMGSRC");
			int rno = rs.getInt("RNO");
			String rRegdate = rs.getString("RREGDATE");
	
			// no�뒗 寃뚯떆臾� 踰덊샇
			vo = new ReviewVO(reno, nickName, title, rContents, grade, imgsrc, rno, rRegdate);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return vo;	
	
	}//selectOne() end
	
	
	
	public void updateOne(ReviewVO vo) {
		sb.setLength(0);
		sb.append("UPDATE REVIEW " );
		sb.append("SET TITLE = ? , RCONTENTS = ? IMGSRC = ? " );
		sb.append("WHERE RENO = ? " );
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getrContents());
			pstmt.setString(3, "../upload/"+vo.getImgSrc());
			pstmt.setInt(4, vo.getReno());
			
			pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}//updateOne(BoardVO vo) end
	
	public void deleteOne(int no) {
		sb.setLength(0);
		sb.append("DELETE REVIEW ");
		sb.append("WHERE RENO = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, no);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}// deleteOne() end
		public int getTotalCount(int rno) {
			sb.setLength(0);
			sb.append("SELECT COUNT(*) cnt FROM REVIEW ");		
			sb.append("WHERE RNO = ?");		
			int result= 0;
			try {
				pstmt= conn.prepareStatement(sb.toString());
				pstmt.setInt(1, rno);
				rs = pstmt.executeQuery();
				rs.next();
				result = rs.getInt("cnt");
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return result;
		}
		public int getGradeCount(int no,int grade) {
			sb.setLength(0);
			sb.append("SELECT COUNT(*) cnt FROM REVIEW ");		
			sb.append("WHERE GRADE = ? ");		
			sb.append("AND RNO = ? ");		
			int result= 0;
			try {
				pstmt= conn.prepareStatement(sb.toString());
				pstmt.setInt(1, grade);
				pstmt.setInt(2, no);
				rs = pstmt.executeQuery();
				rs.next();
				result = rs.getInt("cnt");
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			return result;
		}
	

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
