<%@page import="utils.JSFunction"%>
<%@page import="homework.MembershipDTO"%>
<%@page import="homework.MembershipDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//회원가입 페이지에서 사용자가 입력한 회원정보 받기
String userId = request.getParameter("userid");
String userPwd = request.getParameter("pass2");
String userName = request.getParameter("name");
String userGender = request.getParameter("gender");
String userBday = request.getParameter("birthday");
String userZcode = request.getParameter("zipcode");
String userAddr = request.getParameter("address1")+" "+request.getParameter("address2");
String userEmail = request.getParameter("email1")+"@"+request.getParameter("email2");
String userMob = request.getParameter("mobile1")+"-"+request.getParameter("mobile2")+"-"+request.getParameter("mobile3");
String userTel = request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("te13");
if(request.getParameter("tel1") != "" && request.getParameter("tel2") != "" && request.getParameter("tel3") != ""){
	userTel = request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("te13");
}


//application내장 객체를 통해 web.xml에 입력된 DB접속정보를 읽어옴.
String oracleDriver = application.getInitParameter("OracleDriver");
String oracleURL = application.getInitParameter("OracleURL");
String oracleId = application.getInitParameter("OracleId");
String oraclePwd = application.getInitParameter("OraclePwd");

//폼값 저장
MembershipDTO dto = new MembershipDTO();
dto.setId(userId);
dto.setPass(userPwd);
dto.setName(userName);
dto.setGender(userGender);
dto.setBirthdate(userBday);
dto.setZipcode(userZcode);
dto.setAddress(userAddr);
dto.setEmail(userEmail);
dto.setMobile(userMob);
dto.setTel(userTel);


//DAO객체를 통해 DB에 저장
MembershipDAO dao = new MembershipDAO(application);
int iresult = dao.memberInsert(dto);
if(iresult==1){
	JSFunction.alertLocation("가입성공", "memberLogin.jsp", out);
}
/* else{
	JSFunction.alertBack("가입실패", out);
} */

//DB작업이 끝나면 자원 해제
dao.close();
%>

