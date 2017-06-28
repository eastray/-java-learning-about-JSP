<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%!Connection connection;
	PreparedStatement preparedStatement;
	ResultSet resultSet;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String upw = "tiger";%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Class.forName(driver);
	connection = DriverManager.getConnection(url, uid, upw);
	int n;
	String query = "insert into memberforpre (id, pw, name, phone) values (?, ?, ?, ?)";
	preparedStatement = connection.prepareStatement(query);
	
	preparedStatement.setString(1,"abc");
	preparedStatement.setString(2,"abc");
	preparedStatement.setString(3,"홍길동");
	preparedStatement.setString(4,"000-0000-0000");
	n = preparedStatement.executeUpdate();
	
	preparedStatement.setString(1,"qwe");
	preparedStatement.setString(2,"qwe");
	preparedStatement.setString(3,"홍길순");
	preparedStatement.setString(4,"111-1111-1111");
	n = preparedStatement.executeUpdate();
	
	preparedStatement.setString(1,"zxc");
	preparedStatement.setString(2,"zxc");
	preparedStatement.setString(3,"홍길자");
	preparedStatement.setString(4,"222-2222-2222");
	n = preparedStatement.executeUpdate();
	
	preparedStatement.setString(1,"asd");
	preparedStatement.setString(2,"asd");
	preparedStatement.setString(3,"홍길태");
	preparedStatement.setString(4,"333-3333-3333");
	n = preparedStatement.executeUpdate();
	
	if(n == 1){
		out.println("insert success.");
	} else {
		out.println("insert failure.");
	} catch (Exception e){
		e.printStackTrace();
	} finally {
		try {
			if(resultSet != null) resultSet.close();
			if(preparedStatement != null) preparedStatement.close();
			if(connection != null) connection.close();
		} catch (Exception e) {}
	}
	
	%>

	<a href="memberDateView.jsp">회원 정보 보기</a>
</body>
</html>