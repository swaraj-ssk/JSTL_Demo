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
	<c:set var="str" value="Swaraj Kalbande is student of VIT"/>
	Length : ${fn:length(str)} <br/>
	index: ${ fn:indexOf(str, "is") }<br/>
	is there: ${ fn:contains(str,"Java")}<br/>
	<c:if test="${ fn:contains(str,'Swaraj')}" >
		Swaraj is there in str.
	</c:if>
	<br/>
	<c:if test="${ fn:endsWith(str,'VIT')}" >
		You are right sir.
	</c:if>
	<br/>
	<c:forEach items="${fn:split(str,' ')}" var="s">
		${s}
		<br>
	</c:forEach>
</body>
</html>