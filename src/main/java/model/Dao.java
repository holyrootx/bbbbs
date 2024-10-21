package model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.util.List;
import java.util.ArrayList;


public class Dao {
	String url = "jdbc:mysql://localhost:3306/myBoard";
	String id = "root";
	String pass = "qwer1234";
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void getConn() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,id,pass);
			System.out.println("DataBase Access Successed");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void joinUser(User user) {
		try {
			//			
			String sql = "INSERT INTO Users VALUES(?,?,?,?,?,?,?,?)";
			getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPass());
			pstmt.setString(3, user.getTel());
			pstmt.setString(4, user.getEmail());
			pstmt.setString(5, user.getLastname());
			pstmt.setString(6, user.getFirstname());
			pstmt.setDate(7, Date.valueOf(user.getBirthday()));
			pstmt.setString(8, user.getGender());
			pstmt.executeUpdate();
			
			conn.close();
			System.out.println("joinUser Method Executed..");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Boolean loginUser(String id,String pass) {
		try {
			String sql = "SELECT id,pass FROM users WHERE id = ?";
			getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			System.out.println("id = ["+id+"]");
			System.out.println("pass = ["+pass+"]");
			if(rs.next()) { 
				if (id.equals(rs.getString("id")) && pass.equals(rs.getString("pass")) ) {
					System.out.println(id);
					System.out.println(rs.getString("id"));
					conn.close();
					return true;
				}
			} else {
				conn.close();
				return false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}
	public void writeBoard(Board board) {
		try {
			String sql ="INSERT INTO boards(title,content,author_id) VALUES(?,?,?)";
			getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getAuthor_id());
			pstmt.executeUpdate();
			conn.close();
			System.out.println("글쓰기완료!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<BoardViewData> getAllBoards() {
		List<BoardViewData> boardViewDataList = new ArrayList<BoardViewData>();
		try {
			System.out.println("getAllBoards Method Execute");
			getConn();
			String sql="SELECT author_id,birthday,gender,b.id,title,content,created_at,updated_at,deleted_at,is_updated,is_deleted,view_count,like_count,hate_count"
					+ ",(SELECT COUNT(*) FROM commants c WHERE c.board_id = b.id) AS commant_count "
					+ "FROM Users u "
					+ "JOIN Boards b ON u.id = b.author_id "
					+ "ORDER BY created_at DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				// BoardViewData Beans
				//	board_id,title,content,author_id,created_at,updated_at,deleted_at,is_updated,is_deleted,view_count,like_count,hate_count
				BoardViewData boardViewData = new BoardViewData(); 
				boardViewData.setBoard_id(rs.getInt("b.id"));
				boardViewData.setTitle(rs.getString("title"));
				boardViewData.setContent(rs.getString("content"));
				boardViewData.setAuthor_id(rs.getString("author_id"));
				boardViewData.setGender(rs.getString("gender"));
//				boardViewData.setBirthday(rs.getTimestamp("birthday").toLocalDateTime().toLocalDate());
				
//				boardViewData.setCreated_at(rs.getTimestamp("created_at").toLocalDateTime());
				boardViewData.setUpdated_at(rs.getTimestamp("updated_at").toLocalDateTime());
				boardViewData.setDeleted_at(rs.getTimestamp("deleted_at").toLocalDateTime());
				boardViewData.setIs_updated(rs.getBoolean("is_updated"));
				boardViewData.setIs_deleted(rs.getBoolean("is_deleted"));
				boardViewData.setView_count(rs.getInt("view_count"));
				boardViewData.setLike_count(rs.getInt("like_count"));
				boardViewData.setHate_count(rs.getInt("hate_count"));
				boardViewData.setCommant_count(rs.getInt("commant_count"));
				
				int age = Period.between(rs.getTimestamp("birthday").toLocalDateTime().toLocalDate(),LocalDate.now()).getYears();
				System.out.println("age = ["+age+"]");
				
				String ageRange;
				if (age>=10) {
					ageRange = (age / 10)+"0대";
					if (((age - (age / 10) * 10) ) % 10 < 4) {
							// 0,1,2,3
							ageRange += " 초반";
						} else if (((age - (age / 10) * 10) ) % 10 < 8) {
							ageRange += " 중반";
						} else {
							ageRange += " 후반";
						}
					
				} else {
					ageRange = "어린이";
				}
				System.out.println("ageRange = ["+ageRange+"]");
				long second = Duration.between(rs.getTimestamp("created_at").toLocalDateTime(), LocalDateTime.now()).getSeconds(); // 과거 -> 미래 순으로하면 양수
				String timeAgo;
				if (second >= 31536000) {
					timeAgo = second / 31536000 + "년 전";
				} else if(second >= 2592000) {
					timeAgo = second / 2592000 + "달 전";
				} else if(second >= 86400) {
					timeAgo = second / 86400 + "일 전";
				} else if(second >= 3600) {
					timeAgo = second / 3600 + "시간 전";
				} else if(second >= 60) {
					timeAgo = second / 60 + "분 전";
				} else {
					timeAgo = "방금 전";
				}
				boardViewData.setTimeAgo(timeAgo);
				boardViewData.setAgeRange(ageRange);
				boardViewDataList.add(boardViewData);
			}
			conn.close();
			return boardViewDataList;
		} catch (Exception e) {
			e.printStackTrace();
		} return boardViewDataList;
	}
	
	// 아이디로 WHERE id = "somthing" 이 somthing 이 없으면 아이디 확인하라는 멘트 보내야 할거고
	// 있으면 비밀번호 체킹하는 로직 있어야될거고
	
	
	
	
}
