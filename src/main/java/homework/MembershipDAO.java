package homework;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class MembershipDAO extends JDBConnect {
	
	public MembershipDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);
	}
	
	//application 내장객체만 매개변수로 전달하여 DB에 연결한다.
	public MembershipDAO(ServletContext application) {
		super(application);
	}
	public int memberInsert(MembershipDTO dto) {
		int result = 0;
		try {
			String query = "INSERT INTO membership VALUES (?,?,?,?,?,?,?,?,?,?,sysdate)";
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPass());
			psmt.setString(3, dto.getName());
			psmt.setString(4, dto.getGender());
			psmt.setString(5, dto.getBirthdate());
			psmt.setString(6, dto.getZipcode());
			psmt.setString(7, dto.getAddress());
			psmt.setString(8, dto.getEmail());
			psmt.setString(9, dto.getMobile());
			psmt.setString(10, dto.getTel());
			
			result = psmt.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	

	//로그인
	/*
	사용자가 입력한 아이디, 패스워드를 통해 회원테이블을 확인한 후
	존재하는 정보인 경우 DTO객체에 그 정보를 담아 반환한다.
	 */
	public MembershipDTO memberLogin(String uid, String upass) {
		//DTO객체 생성
		MembershipDTO dto = new MembershipDTO();
		//회원로그인을 위한 쿼리문 작성
		String query = "SELECT * FROM membership WHERE id=? AND pass=?";
		
		try {
			//쿼리문 실행을 위한 prepared객체 생성 및 인파라미터 설정
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, upass);
			rs = psmt.executeQuery();
			//반환된 ResultSet객체를 통해 회원정보가 있는지 확인
			if(rs.next()) {
				//정보가 있다면 DTO객체에 회원정보를 저장한다.
				dto.setId(rs.getString(1));
				dto.setPass(rs.getString(2));
				dto.setName(rs.getString(3));
				dto.setGender(rs.getString(4));
				dto.setBirthdate(rs.getString(5));
				dto.setZipcode(rs.getString(6));
				dto.setAddress(rs.getString(7));
				dto.setEmail(rs.getString(8));
				dto.setMobile(rs.getString(9));
				dto.setTel(rs.getString(10));
				dto.setRegidate(rs.getString(11));
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
}
