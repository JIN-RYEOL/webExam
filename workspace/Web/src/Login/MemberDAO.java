package Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DBConn.DBConnection;

public class MemberDAO {
	Connection conn =  DBConnection.getConnection();
	private PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	LoginVO loginvo = new LoginVO();
	ArrayList<LoginVO> member = new ArrayList<LoginVO>();
	
	public ArrayList<LoginVO> member(){
		try {
			
			String query = "select * \r\n" + 
					       "from member";
					       
			pstmt = conn.prepareStatement(query);
			
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
				
				member.add(loginvo);
			} // while
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return member;
	}
}
