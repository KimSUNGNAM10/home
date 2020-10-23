<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function tableCreate() {
	var tc = new Array(); 
	var html = ''; 
	var name = $("#inName").val(); 
	var job = $("#inJob").val(); 
	var age = $("#inAge").val(); 
	var hobby = $("#inHobby").val(); 
	html += '<tr>'; 
	html += '<td>'+name+'</td>'; 
	html += '<td>'+job+'</td>'; 
	html += '<td>'+age+'</td>'; 
	html += '<td>'+hobby+'</td>'; 
	html += '</tr>'; 
	$("#dynamicTable").append(html); 
	$("#inName").val('');
	$("#inJob").val(''); 
	$("#inAge").val(''); 
	$("#inHobby").val(''); 
	
	}
</script>
</head>
<body>
	<tbody id="factory_tbody">
		<tr>
			<td><input type="text" class="form-control" placeholder="이름">
			</td>
			<td><input type="text" class="form-control" placeholder="팀">
			</td>
			<td><input type="text" class="form-control" placeholder="득점">
			</td>
			<td><input type="text" class="form-control" placeholder="도움">
			</td>
			<td><input type="text" class="form-control" placeholder="공격포인트">
			</td>
			<td><input type="text" class="form-control" placeholder="슈팅수">
			</td>
			<td><input type="text" class="form-control" placeholder="코너킥">
			</td>
			<td><input type="text" class="form-control" placeholder="페널티킥">
			</td>
			<td><input type="text" class="form-control" placeholder="프리킥">
			</td>
			<td><input type="text" class="form-control" placeholder="유효슈팅">
			</td>
			<td><input type="text" class="form-control" placeholder="경기수">
			</td>
		</tr>
	</tbody>
</body>
</html>