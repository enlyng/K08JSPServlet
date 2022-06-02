<%@page import="utils.JSFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	/*
	session 영역에 저장된 회원인증 관련 속성값이 있는지 확인하여 만약 없다면ㄹ
	로그인 페이지로 이동한다. 이때 utils패키지에 생성한 클래스를 활용한다.
	*/
if (session.getAttribute("UserId") == null) {
	/*
	자바스크립트를 사용하기 위한 유틸리티 클래스를 통해 경고창을 띄우고
	location.href로 페이지를 이동한다.
	*/
	JSFunction.alertLocation("로그인 후 이용해주십시오.", "../06Session/LoginForm.jsp", out); //이 코드가 실행될 수 있도록
	
	//만약 아래에 JSP코드가 있다면 위의 JS코드는 실행되지 않는다.
	/* response.sendRedirect("List.jsp"); */
	/*
	JSP파일에서 return을 사용하는 것은 _jspService()메서드의 실행을 종료하겠다는
	의미를 가지고 있다. 또한, javascript보다 JSP코드의 실행이 우선순위가 높으므로
	정상적인 실행을 위해 return을 실행시켜야 한다.
	*/
	
	return; //jspService()라는 함수를 종료시켜야 한다.
}
%>