<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/mario" user="root" password="Swaraj@2001"/>
	
	<sql:query var="rs" dataSource="${db}">Select * from gadgets </sql:query>
	
	<c:forEach items="${rs.rows}" var="gadget">
		<c:out value="${gadget.gid}"></c:out> : <c:out value="${gadget.gname }"></c:out> : <c:out value="${gadget.price}"></c:out> <br/>
	</c:forEach>

</body>
</html>