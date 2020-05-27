<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>customer 테이블 내용 보기</title>
</head>
<body>
<center><h2>customer 테이블의 레코드 표시</h2></center>
  <table align="center" width="550" border="1">
  <tr> 
  <td width="100">아이디</td>
  <td width="100">이 름</td>
  <td width="100">주 소</td>
  <td width="250">전화번호</td>
  </tr>
  
<%
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;

	 try{
		 String jdbcUrl = "jdbc:oracle:thin:@localhost:1521/xe";
		     String dbId = "min";
		     String dbPass = "ezen1234";
		  
		 Class.forName("oracle.jdbc.driver.OracleDriver");
		 conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );

		 	String sql= "select * from customer";
		 	pstmt=conn.prepareStatement(sql);
		 	rs=pstmt.executeQuery();

		 while(rs.next()){
		   	   String id = rs.getString("userid");
		       String name = rs.getString("username");
		       String addr = rs.getString("address");
		       String phone = rs.getString("phone");
%>
<tr>
     <td width="100"><%=id%></td>
     <td width="100"><%=name%></td>
     <td width="100"><%=addr%></td>
     <td width="250"><%=phone%></td>
    </tr>
<%  } 
  }catch(Exception e){ 
	e.printStackTrace();
  }finally{
	    if(rs != null) 
    try{rs.close();}
	catch(SQLException sqle){}
		if(pstmt != null) 
	try{pstmt.close();}
		catch(SQLException sqle){}
		if(conn != null) 
	try{conn.close();}
	catch(SQLException sqle){}
  	}
%>

<% response.sendRedirect("UpdateTestForm.jsp");%>
</table>
</body>
</html>