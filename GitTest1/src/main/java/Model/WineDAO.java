package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class WineDAO {

	// 전역변수 선언	
		Connection conn = null;
		PreparedStatement psmt = null;
		int cnt = 0;
		
		ResultSet rs = null;
		
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
	
}
