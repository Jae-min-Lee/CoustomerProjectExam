<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB연동프로그램</title>
</head>
<body>
<%
  Connection conn=null;

  try{
	String jdbcUrl="jdbc:oracle:thin:@127.0.0.1:1521/xe";
	String dbId="min";
	String dbPass="ezen1234";

	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	out.println("제대로 연결되었습니다.");
	}catch(Exception e){ 
	e.printStackTrace();
	}
%>
<% response.sendRedirect("insertTestForm.jsp");%>
</body>
</html>