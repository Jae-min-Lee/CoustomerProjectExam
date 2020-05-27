<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>customer 테이블의 레코드 수정</h2>
    
    <form method="post" action="UpdateTestPro.jsp">
         아이디: <input type="text" name="id" maxlength="12"><br>
         변경할 주소: <input type="text" name="readdr" maxlength="50"><br>
         변경할 번호: <input type="text" name="retel" maxlength="15"><br>
         <input type="submit" value="입력완료">
    </form>

</body>
</html>