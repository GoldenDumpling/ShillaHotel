package biz.users;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;



public class UserDAO {
	// 커넥션 풀 사용 오라클 DB 접속 메서드
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void dbConn() {
		try {

			Context initctx = new InitialContext();
			System.out.println("1. Context 생성 성공!!");

			Context envctx=(Context)initctx.lookup("java:comp/env"); 
			System.out.println("2. Context 환경생성 성공!!");

			DataSource ds = (DataSource) envctx.lookup("jdbc/pool");
			System.out.println("3. DataSource 찾기 성공!!");

			conn = ds.getConnection();
			System.out.println("4. DB접속 성공!!");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int checkEmailDuplicate(String email) {
		dbConn();
		try {
			//sql
			String sql = "select Count(*) from shilla_users where email = ?";
			//객체
			pstmt =conn.prepareStatement(sql);
			//?매핑
			pstmt.setString(1, email);
			//실행
			rs = pstmt.executeQuery();
			while(rs.next()) {
				return rs.getInt(1);
			}
			//자원반납
			conn.close();
			pstmt.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public void userInsert(UserVO bean) {
		dbConn();
		try {
			// 1. SQL
			String sql = "insert into shilla_users values(?,?,?,?,?,?,'user')";
			// 2. ?
			pstmt = conn.prepareStatement(sql);
			// 매핑
			pstmt.setString(1, bean.getEmail());
			pstmt.setString(2, bean.getPassword());
			pstmt.setString(3, bean.getName());
			pstmt.setString(4, bean.getGender());
			pstmt.setString(5, bean.getBirth());
			pstmt.setString(6, bean.getTel());
			// 3. 실행
			pstmt.executeUpdate();
			// 4. 자원반납
			rs.close();
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public UserVO getUser(String email,String password) {
		UserVO user = new UserVO();
		//db연결
		dbConn();
		try {
			String sql = "select * from shilla_users where email=? and password = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			rs=pstmt.executeQuery();
			
			while(rs.next()) {
				user.setEmail(rs.getString(1));
				System.out.println(rs.getString(1));
				user.setName(rs.getString(3));
				user.setRole(rs.getString(7));
			}
			//자원반납
			conn.close();
			pstmt.close();
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
	
	
		
}
