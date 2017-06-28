<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="member" class="practice.el.MemberInfo" scope="page" />
<jsp:setProperty name="member" property="name" value="홍길동" />
<jsp:setProperty name="member" property="id" value="asd" />
<jsp:setProperty name="member" property="pw" value="asd" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form action="objectOk.jsp" method="get">
		아이디: <input type="text" name="id"> <br /> 비비번: <input
			type="password" name="pw"> <br /> 
			<input type="submit" value="login">
	</form>

	<%
		application.setAttribute("application_name", "application_value");
		session.setAttribute("session_name", "session_value");
		pageContext.setAttribute("page_name", "page_value");
		request.setAttribute("request_name", "request_value");
	%>

	<br /> ${ "-------------------------------------------------------------------------------" }






	<br /> ${ "-------------------------------------------------------------------------------" }

	이름:
	<jsp:getProperty name="member" property="name" />
	<br /> 아이:
	<jsp:getProperty name="member" property="id" />
	<br /> 비번:
	<jsp:getProperty name="member" property="pw" />
	<br /> ${ "-------------------------------------------------------------------------------" }
	<br /> 이름: ${member.name }
	<br /> 아이: ${member.id }
	<br /> 비번: ${member.pw }
	<br />
	<br /> ${ "-------------------------------------------------------------------------------" }
	<br /> ${ "value" }
	<br /> ${ 123 }
	<br /> ${ 345 }
	<br /> ${ "한글" }
	<br /> ${ true ? 1:2 }
	<br />

</body>
</html>