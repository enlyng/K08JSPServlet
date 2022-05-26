<%@page import="common.DBConnPool"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<h2>JDBC 테스트 1</h2>
	<%
	JDBConnect jdbc1 = new JDBConnect();
	jdbc1.close();
	%>
	<h2>JDBC 테스트 2</h2>
	<%
	//application 내장객체의 메서드를 통해 컨텍스트 초기화 파라미터 가져옴.
	String driver = application.getInitParameter("OracleDriver");
	String url = application.getInitParameter("OracleURL");
	String id = application.getInitParameter("OracleId");
	String pwd = application.getInitParameter("OraclePwd");
	//인자 생성자 호출을 통해 DB연결
	JDBConnect jdbc2 = new JDBConnect(driver, url, id, pwd);
	jdbc2.close();
	%>
	<h2>JDBC 테스트 3</h2>
	<%
	/*
    JSP에서는 내장 객체를 즉시 사용할 수 있지만 Java에서는 매개변수를 통해 전달 받은 후 
    사용할 수 있다. DB연결은 매우 빈번히 발생하는 업무로 컨텍스트 초기화 파라미터를 
    JSP에서 가져오는 것보다는 훨씬 효율적이다.
     */
	JDBConnect jdbc3 = new JDBConnect(application);
	jdbc3.close();
	%>
	<h2>커넥션 풀 테스트</h2>
	<%
	DBConnPool pool = new DBConnPool();
	pool.close();
	%>
</body>
</html>