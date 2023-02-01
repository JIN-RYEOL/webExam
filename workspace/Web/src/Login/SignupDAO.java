package Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DBConn.DBConnection;

public class SignupDAO {
	Connection conn =  DBConnection.getConnection();
	private PreparedStatement pstmt = null;
	int result;
	//ResultSet rs = null;
	
	SignupVO signupvo = new SignupVO();
	
	public int signup(String id, String pw, String name) {
		try {
			
			String query = "insert into member(id, pw, name) values(?, ?, ?)";
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, name);
			
			result = pstmt.executeUpdate();
			
			
			//rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return result;
	}
}
