<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 입력(레코드 추가)</title>
</head>
<body>
<h2>customer 테이블에 레코드 추가</h2>    
    <form method="post" action="insertTestPro.jsp">
         아이디: <input type="text" name="id" size=10 maxlength="12"><br>
         이름: <input type="text" name="name" size=20 maxlength="30"><br>
       주소: <input type="text" name="address" size=40 maxlength="50"><br>
         전화번호: <input type="text" name="telephone" size=10 maxlength="15"><br>
         <input type="submit" value="입력완료">
    </form>
</body>
</html>