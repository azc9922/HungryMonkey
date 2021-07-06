package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import vo.MasterVO;

public class MasterDAO {

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@db1.cwofzefzc3ci.ap-northeast-2.rds.amazonaws.com:1521:db1";
	String user = "jadmin";
	String password = "tiger999";
	Connection conn = null; //java.sql�뿉 �엳�뒗寃껋쑝濡� import
	PreparedStatement pstmt = null;
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	
	
	public MasterDAO(){
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);
			System.out.println("conn : " + conn);
			} catch (SQLException e) {
				System.out.println("db�뿰寃곗떎�뙣");
			} catch (ClassNotFoundException e) {
			System.out.println("�뱶�씪�씠踰� 濡쒕뵫�떎�뙣");
			e.printStackTrace();
		}
	}
	
	public void insertOne(String nickName, String id, String name, String pw, String profile) {
		sb.setLength(0);
		sb.append("INSERT INTO MEMBER_MASTER ");
		sb.append("VALUES (?, ? ,MEMBER_MASTER_MNO.NEXTVAL  ,? , ? , ? )" );
		
		try {
			// 臾몄옣媛앹껜
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, nickName);
			pstmt.setString(2, id);
			pstmt.setString(3, name);
			pstmt.setString(4, pw);
			pstmt.setString(5, profile);
			
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}// class end
	public MasterVO isEXists(String id , String pwd) {
		sb.setLength(0);
		sb.append("SELECT NICKNAME, ID, MNO, NAME, PW, PROFILE " );
		sb.append("FROM MEMBER_MASTER " );
		sb.append("WHERE ID = ? " );
		sb.append("AND PW = ? " );
		
		MasterVO vo = null;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			rs = pstmt.executeQuery();
			
			//System.out.println(rs);
			while(rs.next()) {
				String nickname = rs.getString("NICKNAME");
				String id1 = rs.getString("ID");
				int mno = rs.getInt("MNO");
				String name = rs.getString("NAME");
				String pw = rs.getString("PW");
				String profile = rs.getString("PROFILE");
				
				vo = new MasterVO(nickname, id1, mno, name, pw, profile);
			}			
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return vo;
		
		
	}
	public int idDoubleCheck(String id) {
		int cnt=0;
		sb.setLength(0);
		sb.append("SELECT count(ID) as cnt " );
		sb.append("FROM MEMBER_MASTER " );
		sb.append("WHERE ID = ? " );
		
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cnt= rs.getInt("cnt");
			}		
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return cnt;
	}
	public int nickNameDoubleCheck(String nickName) {
		int cnt=0;
		sb.setLength(0);
		sb.append("SELECT count(NICKNAME) as cnt " );
		sb.append("FROM MEMBER_MASTER " );
		sb.append("WHERE NICKNAME = ? " );
		
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, nickName);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				cnt= rs.getInt("cnt");
			}
			
		
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return cnt;
	}
	public MasterVO selectNickName(String id) {
		sb.setLength(0);
		sb.append("SELECT NICKNAME, ID, MNO, NAME, PW, PROFILE FROM MEMBER_MASTER ");
		sb.append("WHERE ID = ? ");
		MasterVO vo = null;
		try {
			pstmt= conn.prepareStatement(sb.toString());
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			rs.next();
			String nickname = rs.getString("NICKNAME");
			int mno = rs.getInt("MNO");
			String name = rs.getString("NAME");
			String pw = rs.getString("PW");
			String profile = rs.getString("PROFILE");
			
			
			vo = new MasterVO(nickname, id, mno, name, pw, profile);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
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
