<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 500px;
}

table, th, td {
	border: 1px solid black;
}

div {
	text-align: center;
	margin: 0 auto;
}
</style>
<script type="text/javascript">
	function del_go(k) {
		location.href="delete.do?m_idx="+k;
	}

</script>
</head>
<body>
	<jsp:include page="form.jsp" />
	<hr>
	<div>
		<h1>회원 정보 목록</h1>
		<table>
			<thead>
				<tr>
					<th>no</th>
					<th>id</th>
					<th>name</th>
					<th>address</th>
					<th>regDate</th>

				</tr>
			</thead>
		
		<tbody>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td colspan="5"><h3>원하는 정보가 존재하지 않습니다</h3></td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach var="k" items="${list }" varStatus="vs">
						<tr>
							<td>${vs.count}</td>
							<td>${k.m_id}</td>
							<td>${k.m_name}</td>
							<td>${k.m_addr}</td>
							<td>${k.m_reg.substring(0,10)}</td>
							<td><input type="button" value="삭제" onclick="del_go(${k.m_idx})"></td>
						</tr>
					</c:forEach>
				</c:otherwise>

			</c:choose>

		</tbody>
		</table>
	</div>

</body>
</html>