<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%-- <h1>main.jsp �Դϴ�.</h1>
	<jsp:forward page="sub.jsp" />--%>

	<%-- <h1>main.jsp �Դϴ�</h1>
	<jsp:include page="include.jsp" flush="true" />
	
	<h1>include �� main.jsp�� ���ƿԽ��ϴ�.</h1>--%>

	<h1>main.jsp���� jsp:param���� �����͸� �����մϴ�.</h1>
	<jsp:forward page="exampleParam.jsp">
		<jsp:param name="id" value="abcde" />
		<jsp:param name="pw" value="12345" />
	</jsp:forward>

</body>
</html>