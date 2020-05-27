<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%  request.setCharacterEncoding("UTF-8"); %>
<%
  	String userid = request.getParameter("id");
	String readdress = request.getParameter("readdr");
	String retelephone = request.getParameter("retel");
	
	  Connection conn=null;
	  PreparedStatement pstmt=null;
	  ResultSet rs=null;

  try{
	String jdbcUrl = "jdbc:oracle:thin:@localhost:1521/xe";
	    String dbId = "min";
	    String dbPass = "ezen1234";
 
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection(jdbcUrl,dbId ,dbPass );

	String sql= "select userid  from customer where userid= ?";
	pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1, userid);
	 	    
	rs=pstmt.executeQuery();
	
	if(rs.next()){ 
		String rId=rs.getString("userid");
		
     // if(ident.equals(rId) && passwd.equals(rPasswd)){
	    sql= "update customer set address=?, phone=? where userid=?";
	    pstmt=conn.prepareStatement(sql);
	    pstmt.setString(1, readdress);
	    pstmt.setString(2, retelephone);
	    pstmt.setString(3, userid);
	    
	    pstmt.executeUpdate();   
%>
 <%
 //    }else{
//	out.println("패스워드가 틀렸습니다.");}
}else{
	 out.println("아이디가 틀렸습니다.");
}
}catch(Exception e){ 
	e.printStackTrace();
}finally{
	if(rs != null) try{rs.close();}catch(SQLException sqle){}
	if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
	if(conn != null) try{conn.close();}catch(SQLException sqle){}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 수정</title>
</head>
<body>
  customer 테이블의 레코드를 수정했습니다. 
<% response.sendRedirect("DeleteTestForm.jsp");%>
</body>
</html>