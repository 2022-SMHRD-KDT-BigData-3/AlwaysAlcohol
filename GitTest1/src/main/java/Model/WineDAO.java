package Model;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;





public class WineDAO {

	// 전역변수 선언	
		Connection conn = null;
		PreparedStatement psmt = null;
		int cnt = 0;
		ResultSet rs = null;
		WineDTO dto = null;
		
		// DB연결 메소드
		public void db_conn() {
			
			try {
				
				// 1. ojdbc6.jar -> import
				// maven에서는 pom.xml에서 라이브러리 넣어서 다운로드
				
				// 2. Class찾기 -> Java와 DB를 이어주는 통로
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				// 3. 카드키 만들기(url,id,pw)
				String db_url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
				String db_id = "campus_k_0325_3";
				String db_pw = "smhrd3";
				
				// 4. DB연결 -> 연결 성공시 Connection 객체로 반환			
				conn =  DriverManager.getConnection(db_url,db_id,db_pw);
				if(conn != null) {
					System.out.println("DB 접속 성공");
				}else {
					System.out.println("DB 접속 실패");
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		// DB종료 메소드
		public void db_close() {
			
				try {
					if(rs != null) rs.close();
					if(psmt != null) psmt.close();
					if(conn != null) conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		
		//종류별 와인 받아오기 메소드
		public ArrayList<WineDTO> selectKind(String data) {
			//ㅇㅇ와인을 눌렀을 때 kind 정보에 맞는 와인만 가져오기
			String sql = "select wine_id, wine_name, country, sweet, price, proof, img from wine2 where kind = ?";
			// 데이터를 담을 ArrayList
			ArrayList<WineDTO> wineList = new ArrayList<WineDTO>();
			
			db_conn();
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, data);
				//실행
				rs = psmt.executeQuery();
				//결과 꺼내서 ArrayList에 담기
				while(rs.next()) {
					int wineID = rs.getInt(1);
					String wineName = rs.getString(2);
					String country = rs.getString(3);
					String sweet = rs.getString(4);
					String price = rs.getString(5);
					String proof = rs.getString(6);
					String img = rs.getString(7);
					
					WineDTO dto = new WineDTO(wineID, wineName, country, sweet, proof, price, img);
					
					wineList.add(dto);
				}
								
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				db_close();
			}
			
		return wineList;
		
		}

		public WineDTO selectWine(int wineId) {
			//와인 클릭시 와인 정보 전체정보 꺼내오기
			String sql = "select * from wine2 where wine_id = ?";
			
			db_conn();
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, wineId);
				
				rs = psmt.executeQuery();
				rs.next();
				int wineID = rs.getInt(1);
				String wineName = rs.getString(2);
				String kind = rs.getString(3);
				String country = rs.getString(4);
				String cultivar = rs.getString(5);
				String sweet = rs.getString(6);
				String acid = rs.getString(7);
				String body = rs.getString(8);
				String tanin = rs.getString(9);
				String proof = rs.getString(10);
				String price = rs.getString(11);
				String img = rs.getString(12);
				
				dto = new WineDTO(wineID, wineName, kind, country, cultivar, sweet, acid, body, tanin, proof, price, img);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				db_close();
			} return dto;
		}
		
		//검색기능
		public ArrayList<WineDTO> SerchWine(String search) {
			// 검색받은 데이터 검색
			String sql = "select wine_id, wine_name, country, sweet, price, proof, img from wine2 where wine_name = ?";
			// 데이터를 담을 ArrayList
			ArrayList<WineDTO> wineList = new ArrayList<WineDTO>();
			db_conn();
			try {
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, search);
				//실행
				rs = psmt.executeQuery();
				//결과 꺼내서 ArrayList에 담기
				while(rs.next()) {
					int wineID = rs.getInt(1);
					String wineName = rs.getString(2);
					String country = rs.getString(3);
					String sweet = rs.getString(4);
					String price = rs.getString(5);
					String proof = rs.getString(6);
					String img = rs.getString(7);
					
					WineDTO dto = new WineDTO(wineID, wineName, country, sweet, proof, price, img);
					
					wineList.add(dto);
				}
								
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				db_close();
			}
			
		return wineList;
		
		
		}
		
		
}
