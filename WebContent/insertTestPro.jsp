<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("UTF-8");%>
<% 
   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String addr = request.getParameter("address");
   String phone = request.getParameter("telephone");    

	   Connection conn=null;
	   PreparedStatement pstmt=null;
	   String str="";
   	try{
	  String jdbcUrl="jdbc:oracle:thin:@127.0.0.1:1521/xe";
	  String dbId="min";
	  String dbPass="ezen1234";
  
  	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass ); 
	String sql= "insert into customer values(?,?,?,?)";
	  pstmt=conn.prepareStatement(sql);
	  pstmt.setString(1,id);
	  pstmt.setString(2,name);
	  pstmt.setString(3,addr);
	  pstmt.setString(4,phone);
	  
	  pstmt.executeUpdate();
  	str= "customer 테이블에 새로운 레코드를 추가했습니다.";

}catch(Exception e){ 
	e.printStackTrace();
	str="customer 테이블에 새로운 레코드를 추가에 실패했습니다";
	 }finally{
	 if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
	 if(conn != null) try{conn.close();}catch(SQLException sqle){}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=str %>
<% response.sendRedirect("SelectTest.jsp");%>
</body>
</html>