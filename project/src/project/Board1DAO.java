package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

public class Board1DAO {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@db1.cwofzefzc3ci.ap-northeast-2.rds.amazonaws.com:1521:db1";
	String user = "jadmin";
	String password = "tiger999";
	Connection conn = null; //java.sql �엳�뒗寃껋쑝濡� import
	PreparedStatement pstmt = null;
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	
	
	public Board1DAO(){
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);
			System.out.println("conn : " + conn);
			} catch (SQLException e) {
				System.out.println("db연결실패");
			} catch (ClassNotFoundException e) {
			System.out.println("�뱶�씪�씠踰꾨줈�뵫�떎�뙣");
			e.printStackTrace();
		}
	}

	public ArrayList<Board1VO> selectAll(int startNo, int endNo, int btype){
	      sb.setLength(0);
	      
	      sb.append("SELECT RN, BNO , BTYPE , NICKNAME, TITLE, BREGDATE, BCONTENTS, RCM,NORCM, HITS ");
	      sb.append("FROM (SELECT ROWNUM RN,BNO , BTYPE , NICKNAME, TITLE, BREGDATE, BCONTENTS, RCM,NORCM, HITS ");
	      sb.append("   FROM (SELECT BNO , BTYPE , NICKNAME, TITLE, BREGDATE, BCONTENTS, RCM,NORCM, HITS FROM BOARD "); 
	      sb.append("       order by BREGDATE desc) ");
	      sb.append("     WHERE ROWNUM <= ?) ");
	      sb.append("WHERE BNO >=? ");
	      sb.append("AND BTYPE= ? ");
	      
	      
	      
	      
	      
	      
	      //sb.setLength(0);
	      //sb.append("SELECT bno, writer, title , contents , regdate , hits, ip , status  FROM BOARD ");
	      ArrayList<Board1VO> list = new ArrayList<Board1VO>();
	      try {
	         pstmt = conn.prepareStatement(sb.toString());
	         pstmt.setInt(1, endNo);
	         pstmt.setInt(2, startNo);
	         pstmt.setInt(3, btype);
	         rs = pstmt.executeQuery();
	         while(rs.next()) {
	            int bno = rs.getInt("BNO");
	            String nickName = rs.getString("NICKNAME");
	            String title = rs.getString("TITLE");
	            String bregdate = rs.getString("BREGDATE");
	            String bcontents = rs.getString("BCONTENTS");
	            int rcm = rs.getInt("RCM");
	            int norcm = rs.getInt("NORCM");
	            int hits = rs.getInt("HITS");
	            Board1VO vo = new Board1VO(bno, btype, nickName, title, bregdate, bcontents, rcm, norcm, hits);
	            list.add(vo);
	         }
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      
	      return list;
	      
	   }
	
	
	public void customorInsertOne(String nickName, String title, String bContents) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd kk:mm:ss");
		String strDate = dateFormat.format(Calendar.getInstance().getTime());
		sb.setLength(0);
		sb.append("INSERT INTO BOARD ");
		sb.append("VALUES (BOARD_BNO.NEXTVAL, 1, ?, ?, '"+strDate+"', ?, 0, 0, 0) ");
		
		try {
			pstmt= conn.prepareStatement(sb.toString());
			pstmt.setString(1, nickName);
			pstmt.setString(2, title);
			pstmt.setString(3, bContents);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void TogetherInsertOne(String nickName, String title, String bContents) {
	      SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd kk:mm:ss");
	      String strDate = dateFormat.format(Calendar.getInstance().getTime());
	      sb.setLength(0);
	      sb.append("INSERT INTO BOARD ");
	      sb.append("VALUES (BOARD_BNO.NEXTVAL, 2, ?, ?, '"+strDate+"', ?, 0, 0, 0) ");
	      
	      try {
	         pstmt= conn.prepareStatement(sb.toString());
	         pstmt.setString(1, nickName);
	         pstmt.setString(2, title);
	         pstmt.setString(3, bContents);
	         
	         pstmt.executeUpdate();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	   }
	
	public Board1VO selectOne(int no) {
		sb.setLength(0);
		sb.append("SELECT bno, btype, nickname, title, bregdate , bcontents , rcm , norcm, hits ");
		sb.append(" FROM BOARD WHERE BNO = ? ");
		 // 鈺곌퀗援뷂옙肉� 筌띾슣�앾옙釉�占쎈뮉 占쎈뻬 占쎈립揶쏆뮆彛� �빊�뮆�젾
		Board1VO vo = null;
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			int btype = rs.getInt("BTYPE");
			String nickName = rs.getString("NICKNAME");
			String title = rs.getString("TITLE");
			String bregdate = rs.getString("BREGDATE");
			String bcontents = rs.getString("BCONTENTS");
			int rcm = rs.getInt("RCM");
			int norcm = rs.getInt("NORCM");
			int hits = rs.getInt("HITS");
	
			// no占쎈뮉 野껊슣�뻻�눧占� 甕곕뜇�깈
			vo = new Board1VO(no, btype, nickName, title, bregdate, bcontents, rcm, norcm, hits);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		return vo;	
	
	}//selectOne() end
	public void updateHits(int no) {
		
		sb.setLength(0);
		sb.append("UPDATE BOARD " );
		sb.append("SET HITS = (SELECT HITS FROM BOARD WHERE BNO= ?)+1 ");
		sb.append("WHERE BNO = ? " );
		
		try {
			Board1DAO dao = new Board1DAO();
			Board1VO vo = dao.selectOne(no);
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, vo.getBno());
			pstmt.setInt(2, vo.getBno());
			pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}//updateOne(BoardVO vo) end
	
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
	
	public void updateOne(Board1VO vo) {
		sb.setLength(0);
		sb.append("UPDATE BOARD " );
		sb.append("SET TITLE = ? , BCONTENTS = ? ");
		sb.append("WHERE BNO = ? " );
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getbContents());
			pstmt.setInt(3, vo.getBno());
			
			pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}//updateOne(BoardVO vo) end
	
	public void deleteOne(int no) {
		sb.setLength(0);
		sb.append("DELETE board ");
		sb.append("WHERE bno = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, no);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}// deleteOne() end
		public int getTotalCount() {
		sb.setLength(0);
		sb.append("SELECT COUNT(*) cnt FROM BOARD ");		
		int result= 0;
		try {
			pstmt= conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt("cnt");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	

}
