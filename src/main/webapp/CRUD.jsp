<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTLdemo</title>
</head>
<body>
	<h1>Show table</h1>
	<sql:setDataSource driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/BookingSlot" user="root"
		password="ranjith" var="ds"></sql:setDataSource>
	<sql:query dataSource="${ds}" var="rs">select * from BookingSlot.Booking;</sql:query>
	<table>
		<tr>
			<td>id</td>
			<td>name</td>
			<td>email</td>
			<td>email</td>
		</tr>
		<c:forEach items="${rs.row}" var="row">
			<tr>
				<td><c:out value="${row.username}"></c:out></td>
				<td><c:out value="${row.mobilenumber}"></c:out></td>
				<td><c:out value="${row.email}"></c:out></td>
				<td><c:out value="${row.location}"></c:out></td>
				<td><c:out value="${row.gender}"></c:out></td>
				<td><c:out value="${row.servicetype}"></c:out></td>
				<td><c:out value="${row.timingslot}"></c:out></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>