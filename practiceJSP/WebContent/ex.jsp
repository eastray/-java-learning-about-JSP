<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
		out.println("����" + request.getServerName() + "<br/>");
		out.println("��Ʈ" + request.getServerPort() + "<br/>");
		out.println("��û ���" + request.getMethod() + "<br/>");
		out.println("��������" + request.getProtocol() + "<br/>");
		out.println("URL" + request.getRequestURL() + "<br/>");
		out.println("URI" + request.getRequestURI() + "<br/>");
	%>

	<%-- <%
	int[] iArr = {1 , 2 , 3};
out.println(Arrays.toString(iArr));

	%>
	
	<%@ include file = "include01.jsp" %>
	
	<h1>�ּ� ����</h1>
	<!--  <h1>�ּ� ����</h1> -->
	
	�ּ� ����
	�ּ��Դϴ�. --%>


	<%-- <%!
	int i = 10;
	String str = "ASBASD";
	%>
	
	<%
		out.println("i: " + i + "<br/>");
		out.println("str: " + str+ "<br/>");
	%>
	
	i: <%= i %> <br/>
	str: <%= str %> <br/> --%>

</body>
</html>