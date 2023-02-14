<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
    div{text-align: center; margin: 0 auto;}
	table{width: 500px; margin: 0 auto;}
	table,tr,th,td {border: 1px solid black;}
	fieldset { width: 300px; margin: 0 auto;}
</style>
<script type="text/javascript">
	function send_all(f) {
		f.action="list.do";
		f.submit();
	}
	function send_ins(f) {
		f.action="insert.do";
		f.submit();
	}
	function send_del(f) {
		f.action="delete.do";
		f.submit();
	}
	function send_one(f) {
		f.action="selectone.do";
		f.submit();
	}
	function send_load(f) {
		f.action="load.do";
		f.submit();
	}
</script>	
</head>
<body>
	<div>
		<form method="post">
			<fieldset>
				<legend> 정보 입력 하기</legend>
				<table>
					<tbody>
							<tr> <th>번호</th>
						     <td><input type="text" name="m_idx" size="15"></td>
						</tr>
				
						<tr> <th>아이디</th>
						     <td><input type="text" name="m_id" size="15"></td>
						</tr>
						<tr> <th>패스워드</th>
						     <td><input type="password" name="m_pw" size="15"></td>
						</tr>
						<tr> <th>이름</th>
						     <td><input type="text" name="m_name" size="15"></td>
						</tr>		
						<tr> <th>주소</th>
						     <td><input type="text" name="m_addr" size="15"></td>
						</tr>
					</tbody>
					<tfoot>
					   <tr>
					   		<td colspan="2">
					   			<input type="button" value="전체보기" onclick="send_all(this.form)">
					   			<input type="button" value="삽입" onclick="send_ins(this.form)">
					   			
					   		</td>
					   </tr>
					</tfoot>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>