<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>    
    
<jsp:useBean id = "student" class = "practice.javaBean.Student" scope = "page" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:setProperty name = "student" property = "name" value = "ȫ�浿" />
	<jsp:setProperty name = "student" property = "age" value = "10" />
	<jsp:setProperty name = "student" property = "grade" value = "3" />
	<jsp:setProperty name = "student" property = "studentNum" value = "27" />

	�̸�: <jsp:getProperty property="name" name="student"/> <br/>
	����: <jsp:getProperty property="age" name="student"/> <br/>
	�г�: <jsp:getProperty property="grade" name="student"/> <br/>
	��ȣ: <jsp:getProperty property="studentNum" name="student"/> <br/>

</body>
</html>