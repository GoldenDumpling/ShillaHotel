package biz.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class BoardDAO {
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
	
	public void deleteBoard(int num) {
		//db연결
		dbConn();
		try {
			//sql
			String sql = "delete from shilla_board where num=?";
			//객체
			pstmt = conn.prepareStatement(sql);
			//?매핑
			pstmt.setInt(1, num);
			//실행
			pstmt.executeUpdate();
			//자원반납
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	// 전체 게시글 갯수 가져오는 메서드
		public int getAllCount() {
			int count = 0 ;
			dbConn();
			try {
				//sql
				String sql="select count(*) from SHILLA_BOARD";
				//객체
				pstmt = conn.prepareStatement(sql);
				//? 매핑 스킵
				//실행
				rs = pstmt.executeQuery();
				//사용
				while(rs.next()) {
					count = rs.getInt(1);	
				}
				//자원 반납
				rs.close();
				pstmt.close();
				conn.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			System.out.println("count : " + count);
			return count;
		}
		// 모든 게시글 (10개씩) 가져오기 메서드
		public ArrayList<BoardVO> getAllBoard(int start, int end){
			ArrayList<BoardVO> v = new ArrayList<BoardVO>();
			//db연결
			dbConn();
			try {
				// 결론은 최신글 10개씩 가져오고 , 원본글, 댓글, 대댓글 에 대한 정렬을 나타내는 쿼리문
				// ref 기준으로 최근글부터 정렬, re_step은 [답글]시에 밑바닥으로 와야함
				// Rownum은 오라클에만 있는 기능으로 row수를 리턴해줌
				// 별칭 Rnum이 startRow보다 크고 endRow보다 작을때의 레코드셋(컬럼셋)을 가져옴
				//sql
				String sql= "SELECT * FROM (SELECT A.*, ROWNUM Rnum FROM (SELECT * FROM shilla_board ORDER BY num DESC)A) WHERE Rnum >= ? AND Rnum <= ?";
				//객체
				pstmt = conn.prepareStatement(sql);
				//? 매핑
				pstmt.setInt(1, start);
				pstmt.setInt(2, end);
				//실행
				rs = pstmt.executeQuery();
				//사용
				while(rs.next()) {
					BoardVO bean = new BoardVO();
					bean.setNum(rs.getInt(1));
					bean.setSubject(rs.getString(2));
					bean.setContent(rs.getString(3));
					bean.setReg_date(rs.getDate(4));
					bean.setReadcount(rs.getInt(5));
					bean.setCategory(rs.getString(6));
					bean.setContent(rs.getString(7));
					
					//담기
					v.add(bean);
				}

				//자원반납
				rs.close();
				pstmt.close();
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return v;
		}
		
		// 새글 쓰기
		   public void addBoard(BoardVO bean) {
		      // 0. DB접속
		      dbConn();
		      try {
		         // 1. SQL
		         String sql = "insert into shilla_board values(shilla_board_seq.nextval,?,?,sysdate,0,?,?)";
		         // 2. pstmt
		         pstmt = conn.prepareStatement(sql);
		         // ? 매핑
		         pstmt.setString(1, bean.getSubject());
		         pstmt.setString(2, bean.getContent());
		         pstmt.setString(3, bean.getCategory());
		         pstmt.setString(4, bean.getFile_path());
		         // 3. 실행
		         pstmt.executeUpdate();
		         // 4. 자원반납
		         pstmt.close();
		         conn.close();
		         
		      } catch (Exception e) {
		         e.printStackTrace();
		      }
		   }
		   
		   public BoardVO getOneBoard(int num) {
				dbConn();
				BoardVO bean = null;
				try {
					//조회수 증가
					//sql
					String countSql = "update shilla_board set readcount = readcount+1 where num = ?";
					//객체
					pstmt = conn.prepareStatement(countSql);
					//?매핑
					pstmt.setInt(1, num);
					//실행
					pstmt.executeUpdate();
					//닫기
					pstmt.close();
					//하나 가져오기
					//sql
					String getOneSql = "select * from shilla_board where num = ?";
					//객체
					pstmt = conn.prepareStatement(getOneSql);
					//?매핑
					pstmt.setInt(1, num);
					//실행
					rs=pstmt.executeQuery();
					//담기
					while(rs.next()) {
						bean = new BoardVO();
						bean.setNum(rs.getInt(1));
						bean.setSubject(rs.getString(2));
						bean.setContent(rs.getString(3));
						bean.setReg_date(rs.getDate(4));
						bean.setReadcount(rs.getInt(5));
						bean.setCategory(rs.getString(6));
						bean.setFile_path(rs.getString(7));
					}
					//자원반납
					pstmt.close();
					rs.close();
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
				return bean;
			}
		   public BoardVO getPrevBoard(int num) {
			   dbConn();
			   BoardVO bean = null;
			   try {

				   //전꺼 하나 가져오기
				   //sql
				   String getOneSql = "select * from shilla_board where num = (select max(num) from shilla_board where num < ?)";
				   //객체
				   pstmt = conn.prepareStatement(getOneSql);
				   //?매핑
				   pstmt.setInt(1, num);
				   //실행
				   rs=pstmt.executeQuery();
				   //담기
				   while(rs.next()) {
					   bean = new BoardVO();
					   bean.setNum(rs.getInt(1));
					   bean.setSubject(rs.getString(2));
					   bean.setContent(rs.getString(3));
					   bean.setReg_date(rs.getDate(4));
					   bean.setReadcount(rs.getInt(5));
					   bean.setCategory(rs.getString(6));

				   }
				   //자원반납
				   pstmt.close();
				   rs.close();
				   conn.close();
			   } catch (Exception e) {
				   e.printStackTrace();
			   }
			   return bean;
		   }
		   public BoardVO getNextBoard(int num) {
			   dbConn();
			   BoardVO bean = null;
			   try {

				   //다음 꺼 하나 가져오기
				   //sql
				   String getOneSql = "select * from shilla_board where num = (select min(num) from shilla_board where num > ?)";
				   //객체
				   pstmt = conn.prepareStatement(getOneSql);
				   //?매핑
				   pstmt.setInt(1, num);
				   //실행
				   rs=pstmt.executeQuery();
				   //담기
				   while(rs.next()) {
					   bean = new BoardVO();
					   bean.setNum(rs.getInt(1));
					   bean.setSubject(rs.getString(2));
					   bean.setContent(rs.getString(3));
					   bean.setReg_date(rs.getDate(4));
					   bean.setReadcount(rs.getInt(5));
					   bean.setCategory(rs.getString(6));
				   }
				   //자원반납
				   pstmt.close();
				   rs.close();
				   conn.close();
			   } catch (Exception e) {
				   e.printStackTrace();
			   }
			   return bean;
		   }
		   // 글 수정
		   public void UpdateBoard(int num,String subject,String content,String category,String file_path) {
				//db연결
				dbConn();
				try {
					//sql
					String sql = "update shilla_board set subject = ?, content = ?, category = ?, file_path=?  where num = ?";
					//객체
					pstmt = conn.prepareStatement(sql);
					//?매핑
					pstmt.setString(1, subject);
					pstmt.setString(2, content);
					pstmt.setString(3, category);
					pstmt.setString(4, file_path);
					pstmt.setInt(5, num);
					//실행
					pstmt.executeUpdate();
					//자원반납
					pstmt.close();
					conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
		   }
		   
		   //글 검색
		   public ArrayList<BoardVO> SearchBoard(String searchCol, String searchText, int start, int end) {
			    ArrayList<BoardVO> list = new ArrayList<BoardVO>();
			    dbConn();
			    try {
			        // 기본 쿼리
			        String sql = "SELECT * FROM (SELECT A.*, ROWNUM Rnum FROM (SELECT * FROM shilla_board ";

			        // 검색 조건 추가
			        if(searchText != null && !searchText.equals("")) {
			            if("all".equals(searchCol.trim())) {
			                sql += "WHERE subject LIKE '%" + searchText.trim() + "%' OR content LIKE '%" + searchText.trim() + "%' ";
			            } else {
			                sql += "WHERE " + searchCol.trim() + " LIKE '%" + searchText.trim() + "%' ";
			            }
			        }

			        // 순서 및 ROWNUM 필터링
			        sql += "ORDER BY num DESC) A WHERE ROWNUM <= ?) WHERE Rnum >= ?";

			        System.out.println(sql);

			        pstmt = conn.prepareStatement(sql);

			        // 마지막 ROWNUM 설정
			        pstmt.setInt(1, end);
			        // 시작 ROWNUM 설정
			        pstmt.setInt(2, start);

			        rs = pstmt.executeQuery();

			        while(rs.next()) {
			            BoardVO bean = new BoardVO();
			            bean.setNum(rs.getInt("num"));
			            bean.setSubject(rs.getString("subject"));
			            bean.setContent(rs.getString("content"));
			            bean.setReg_date(rs.getDate("reg_date"));
			            bean.setReadcount(rs.getInt("readcount"));
			            bean.setCategory(rs.getString("category"));

			            list.add(bean);
			        }
			    } catch (Exception e) {
			        e.printStackTrace();
			    } finally {
			        // 자원 해제
			        try {
			            if (rs != null) rs.close();
			            if (pstmt != null) pstmt.close();
			            if (conn != null) conn.close();
			        } catch (Exception e) {
			            e.printStackTrace();
			        }
			    }

			    return list;
			}

		   //검색결과 갯수
		   public int getSearchCount(String searchCol, String searchText) {
			    int count = 0;
			    dbConn();
			    try {
			        // 기본 SQL 쿼리
			        String sql = "SELECT COUNT(*) FROM SHILLA_BOARD";

			        // 검색 조건이 지정된 경우, SQL 쿼리 수정
			        if (searchText != null && !searchText.equals("")) {
			            if ("all".equals(searchCol)) {
			                // 모든 컬럼에서 검색
			                sql += " WHERE subject LIKE ? OR content LIKE ?";
			            } else {
			                // 특정 컬럼에서 검색
			                sql += " WHERE " + searchCol + " LIKE ?";
			            }
			        }

			        pstmt = conn.prepareStatement(sql);

			        // 검색 조건이 지정된 경우, 파라미터 설정
			        if (searchText != null && !searchText.equals("")) {
			            searchText = "%" + searchText.trim() + "%";
			            if ("all".equals(searchCol)) {
			                pstmt.setString(1, searchText); // 첫 번째 물음표에 searchText 바인딩
			                pstmt.setString(2, searchText); // 두 번째 물음표에 searchText 바인딩
			            } else {
			                pstmt.setString(1, searchText); // 첫 번째 물음표에 searchText 바인딩
			            }
			        }

			        // 쿼리 실행
			        rs = pstmt.executeQuery();

			        // 결과 사용
			        if(rs.next()) {
			            count = rs.getInt(1);
			        }

			        // 자원 반납
			        rs.close();
			        pstmt.close();
			        conn.close();
			    } catch (Exception e) {
			        e.printStackTrace();
			    }

			    System.out.println("count : " + count);
			    return count;
			}
		   
		   
}

