<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주요일정 입력</title>
<script src="./resources/js/jquery-latest.min.js"></script>
<link href="./resources/css/n_contents.css" rel="stylesheet" type="text/css" >
</head>
<body>
<div class="container">
	<div class="row">
		<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd; width:100%;">
			<thead>
				<tr>
					<th colspan="2" style="background-color: #eeeeee; text-align:center;">주요일정 보기</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="adminjubo" items="${adminjubo1}">
				<tr>
					<td style="width: 20%; border:1px solid #dddddd;">제목</td>
					<td colspan="2" style="border:1px solid #dddddd;">${adminjubo.TITLE}</td>
				</tr>
				<tr>
					<td style="border:1px solid #dddddd;">작성자</td>
					<td colspan="2" style="border:1px solid #dddddd;">${adminjubo.WRITER}</td>
				</tr>
				<tr>
					<td style="border:1px solid #dddddd;">작성일</td>
					<td colspan="2" style="border:1px solid #dddddd;">${adminjubo.WRITERDAY}</td>
				</tr>
				<tr>
					<td style="border:1px solid #dddddd;">내용</td>
					<td colspan="2" style="height: 400px; border:1px solid #dddddd; text-align:left;">${adminjubo.CONTENT}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<button class="button" href="javascript:void(0);" onclick="btnclick('adm_schedulelist')">목록</button>
		<button class="button" href="javascript:void(0);" onclick="btnclick('adm_scheduleUpdate')">수정</button>
		<button class="button" href="javascript:void(0);" onclick="btnclick('adm_scheduleDelete')">삭제</button>
	</div>
</div>

   <!-- ajax 페이지 불러오는 부분 -->
   <script type="text/javascript">
      function btnclick(_url) { //onclick="btnclick(원하는 페이지)"클릭시 ajax 실행
         $.ajax({
            url : _url, //호출 url 설정, GET방식일경우 뒤에 파라티터를 붙여서 사용해도됨
            type : 'post', //전송방식을 지정한다 get, post
            //datatype : //Ajax를 통해 호출한 페이지의 Return 형식이다. 형식에 따라 xml, json, html, text 등을 사용하면 됨
            success : function(data) { //성공했을때의 처리 부분, 해당부분에서 데이터 핸들링
               $('#center_page').html(data); //div에 받아온 값을 넣는다
            },
            error : function() { //에러났을때의 처리 부분
               $('#center_page').text('페이지 점검중 입니다.'); //에러
            }
         });
      }
	</script>

</body>
</html>