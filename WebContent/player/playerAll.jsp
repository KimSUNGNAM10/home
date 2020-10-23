<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

h1 {
	
     color : #2E2EFE;
     font-size : 70px;
}


body { 
	
	
	background-image : url("images/바르셀로나.png");
	background-repeat;   /* no-repeat */
	background-position : right;
	background-size : contain;

}



  table {
    width: 70%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
    color : #F8FBEF;
  }
  
  th {
  	background-Color : #FACC2E;
  	color : #000000;
  }
  
  th, td {
    border-bottom: 1px solid #444444;
    padding: 10px;
    text-align: center;
  }
  thead tr {
    background-color: #0d47a1;
    color: #ffffff;
  }
  tbody tr:nth-child(2n) {
    background-color: #0431B4;
  }
  tbody tr:nth-child(2n+1) {
    background-color: #B40404;
  }
  
.rowColumn {
	border-radius: 5px;
	margin: 5px;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script>
	$(function() {
		$('th').on("click", function() {
			console.log($(this).val());
			
		})
	})
</script>

<script>
function tableCreate() {
	var tc = new Array(); 
	var html = ''; 
	var rank = $("#inrank").val();
	var name = $("#inname").val(); 
	var team = $("#inteam").val(); 
	var goal = $("#ingoal").val(); 
	var assist = $("#inassist").val(); 
	var offense_point = $("#inoffense_point").val();
	var shooting = $("#inshooting").val();
	var corner_kick = $("#incorner_kick").val();
	var penalty_kick = $("#inpenalty_kick").val();
	var free_kick = $("#infree_kick").val();
	var on_target_shot = $("#inon_target_shot").val();
	var game_number = $("#ingame_number").val();
	
	html += '<tr>'; 
	html += '<td>'+rank+'</td>';
	html += '<td>'+name+'</td>'; 
	html += '<td>'+team+'</td>'; 
	html += '<td>'+goal+'</td>'; 
	html += '<td>'+assist+'</td>'; 
	html += '<td>'+offense_point+'</td>';
	html += '<td>'+shooting+'</td>';
	html += '<td>'+corner_kick+'</td>';
	html += '<td>'+penalty_kick+'</td>';
	html += '<td>'+free_kick+'</td>';
	html += '<td>'+on_target_shot+'</td>';
	html += '<td>'+game_number+'</td>';
	html += '</tr>'; 
	
	
	$("#dynamicTable").append(html); 
	$("#inrank").val('');
	$("#inname").val('');
	$("#inteam").val(''); 
	$("#ingoal").val(''); 
	$("#inassist").val(''); 
	$("#inoffense_point").val('');
	$("#inshooting").val('');
	$("#incorner_kick").val('');
	$("#inpenalty_kick").val('');
	$("#infree_kick").val('');
	$("#inon_target_shot").val('');
	$("#ingame_number").val('');
	}
</script>

</head>
<body>
	
	<h1 align = "center">라리가 2019-20 시즌 개인 스탯</h1>
	
	<br>
	
	<table border="1" align="center" id="dynamicTable">
		<thead>
			<tr>
				<th>순위</th>
				<th>선수 이름</th>
				<th>팀</th>
				<th value = "goal">득점</th>
				<th value = "assist">도움</th>
				<th value = "offense_point">공격포인트</th>
				<th value = "shooting">슈팅수</th>
				<th value = "corner_kick">코너킥</th>
				<th value = "penalty_kick">페널티킥</th>
				<th value = "free_kick">프리킥</th>
				<th value = "on_target_shot">유효슈팅</th>
				<th value = "game_number">경기수</th>
			</tr>
		</thead>
		<tbody id="dynamicTbody">
			<c:forEach items="${list}" var="playerlist">
				<tr>
					<td><p class="rowColumn" contenteditable="false" data-default="${playerlist.rank}">${playerlist.rank}</p></td>
					<td><p class="rowColumn" contenteditable="false" data-default="${playerlist.player}">${playerlist.player}</p></td>
					<td><p class="rowColumn" contenteditable="false" data-default="${playerlist.team}">${playerlist.team}</p></td>
					<td><p class="rowColumn" contenteditable="false" data-default="${playerlist.goal}">${playerlist.goal}</p></td>
					<td><p class="rowColumn" contenteditable="false" data-default="${playerlist.assist}">${playerlist.assist}</p></td>
					<td><p class="rowColumn" contenteditable="false" data-default="${playerlist.offense_point}">${playerlist.offense_point}</p></td>
					<td><p class="rowColumn" contenteditable="false" data-default="${playerlist.shooting}">${playerlist.shooting}</p></td>
					<td><p class="rowColumn" contenteditable="false" data-default="${playerlist.corner_kick}">${playerlist.corner_kick}</p></td>
					<td><p class="rowColumn" contenteditable="false" data-default="${playerlist.penalty_kick}">${playerlist.penalty_kick}</p></td>
					<td><p class="rowColumn" contenteditable="false" data-default="${playerlist.free_kick}">${playerlist.free_kick}</p></td>
					<td><p class="rowColumn" contenteditable="false" data-default="${playerlist.on_target_shot}">${playerlist.on_target_shot}</p></td>
					<td><p class="rowColumn" contenteditable="false" data-default="${playerlist.game_number}">${playerlist.game_number}</p></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<br>
	<div align="center">
		<input type="text" placeholder="순위" id="inrank">
		<input type="text" placeholder="이름" id="inname">
		<input type="text" placeholder="팀" id="inteam"> 
		<input type="text" placeholder="득점" id="ingoal"> <br>
		<input type="text" placeholder="도움" id="inassist">
		<input type="text" placeholder="공격포인트" id="inoffense_point">
		<input type="text" placeholder="슈팅수" id="inshooting">
		<input type="text" placeholder="코너킥" id="incorner_kick"> <br>
		<input type="text" placeholder="페널티킥" id="inpenalty_kick">
		<input type="text" placeholder="프리킥" id="infree_kick">
		<input type="text" placeholder="유효슈팅" id="inon_target_shot">
		<input type="text" placeholder="경기수" id="ingame_number">
		<br>
		<br>
		<button onclick="tableCreate()">10위권 진입 선수 추가</button>
	</div>
	
	
	<script type="text/javascript">

    // @breif contenteditable 속성을 가진경우

    contents = document.getElementsByClassName("rowColumn");
    document.addEventListener("DOMContentLoaded", function() {

        // @breif rowColumn 클래스의 갯수 만큼 반복문을 실행한다.
        Array.from(contents).forEach(function(content) {

        	
            // @breif 마우스로 해당영역을 더블클릭 한경우
            content.addEventListener("dblclick", function(event) {



                // @breif 전체 테이블 컬럼( td > p )에서 현재 사용중인 값의 존재여부를 확인한다.
                Array.from(contents).forEach(function(defaultVal) {

                    // @details 저장하지 않은 내용이라고 판단하여 data 태그의 기본값으로 되돌린다.
                    defaultVal.textContent = defaultVal.dataset.default;

                    // @breif 수정 불가 상태로 되돌린다.
                    defaultVal.contentEditable = false;
                    defaultVal.style.border = "0px";
                });

                if(content.isContentEditable == false) {

                    // @details 편집 가능 상태로 변경
                    content.contentEditable = true;


                    // @details CSS 효과 추가
                    content.style.border = "1px solid #FFB6C1";


                    // @details 포커스 지정
                    content.focus();

                }
            });

            // @breif 키보드 입력이 발생한 경우 실행
            content.addEventListener("keypress", function(event) {


                // @breif Enter키 입력시 실행
                if(event.key === "Enter") {

                    // @details 입력된 값이 빈값( null )인지 체크한다.
                    if(
                           content.textContent == ""
                        || content.textContent == null
                        || content.textContent == undefined
                        || (content.textContent != null
                        && typeof content.textContent == "object"
                        && !Object.keys(content.textContent).length == ""))
                    {
                        // @details 내용이 존재하지 않다면 data 태그의 기본값으로 되돌린다.

                        content.textContent = content.dataset.default;
                    } else {

                        // @details 내용의 수정이 완료되었다면 data 태그의 기본값도 바꿔준다.
                        content.dataset.default = content.textContent;
                    }

                    // @breif 수정 불가 상태로 되돌린다.
                    content.contentEditable = false;
                    content.style.border = "0px";
                }
            });
        });
    });
</script>

</table>

</body>
</html>