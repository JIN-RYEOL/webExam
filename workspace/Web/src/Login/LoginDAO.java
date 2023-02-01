package Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import DBConn.DBConnection;

public class LoginDAO {
	
	Connection conn =  DBConnection.getConnection();
	private PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	LoginVO loginvo = new LoginVO();
	
	public LoginVO login(String id, String pw) {
		
		try {
			
			String query = "select * \r\n" + 
					       "from member\r\n" + 
					       "where id = ? and pw = ?";
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				String id2 = rs.getString("id");
				String pw2 = rs.getString("pw");
				String name2 = rs.getString("name");
				String point2 = rs.getString("point");
				
				loginvo.setId(id2);
				loginvo.setPw(pw2);
				loginvo.setName(name2);
				loginvo.setPoint(point2);
			} // while
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}

		return loginvo;
	}

}
