<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 첨부형 게시판</title>
<script>
	//글쓰기 폼에서 누락된 내용이 있는지 확인하는 함수
	function validateForm(form){
		if(form.name.value==""){
			alert("작성자를 입력하세요.");
			form.name.focus();
			return false;
		}
		if(form.title.value==""){
			alert("제목을 입력하세요.");
			form.title.focus();
			return false;
		}
		if(form.content.value==""){
			alert("내용 입력하세요.");
			form.content.focus();
			return false;
		}
		/* if(form.pass.value==""){
			alert("비밀번호를 입력하세요.");
			form.pass.focus();
			return false;
		} */
	}
</script>
</head>
<body>
<h2>파일 첨부형 게시판 - 수정하기(Edit)</h2>
<!-- 
이미지 등의 첨부파일을 수정할 수도 있기 때문에 enctype이 필요하다.
첨부된 파일이 있는지 확인하고 수정의 유무를 판단해야하기 때문에 기존의
게시물을 가져와야한다.
 -->
<form name="writeFrm" method="post" enctype="multipart/form-data" 
	action="../mvcboard/edit.do" onsubmit="return validateForm(this);">
	
<!-- 게시물 수정을 위해 일련번호와 기존 파일명을 hidden박스에 추가한다. -->
<input type="hid den" name="idx" value="${param.idx }" />
<!-- 기존의 원본파일명 -->
<input type="hid den" name="prevOfile" value="${dto.ofile }" />
<!-- 기존의 서버에 저장된 파일명 -->
<input type="hid den" name="prevSfile" value="${dto.sfile }" />
<!-- URL패턴을 파악해서 들어가서 임의로 수정하는 상황을 방지하기 위해
session영역에 저장된 패스워드를 가지고 검사를 할 수 있다. -->
검증된 패스워드:${pass }
<table border="1" width="90%">
	<tr>
		<td>작성자</td>
		<td>
			<input type="text" name="name" style="width:150px;" value="${dto.name }" />
		</td>
	</tr>
	<tr>
		<td>제목</td>
		<td>
			<input type="text" name="title" style="width:90%;" value="${dto.title }" />
		</td>
	</tr>
	<tr>
		<td>내용</td>
		<td>
			<textarea name="content" style="width:90%; height:100px;">${dto.content }</textarea>
		</td>
	</tr>
	<tr>
		<td>첨부파일</td>
		<td>
			<!-- input태그의type속성이 file인 경우에는 value속성은 의미가 없다.
			value는 단순히 String(문자열)이므로 이 부분은 DB에서 처리해야 한다.
			해당 <input>태그는 선택한 파일을 서버로 전송하는 역할을 한다.
			
			EditController에서 기존의 파일을 덮어쓰기 하거나 첨부파일에 변화가 없을때
			기존의 파일을 다시 가져오기 때문에 value값이 필요없다.
			 -->
			<input type="file" name="ofile" />
		</td>
	</tr>
	<!-- 패스워드 검증을 마친후 수정페이지로 진입하였으므로 비밀번호 입력창은
	화면에서 제거한다. -->
	<!-- <tr>
		<td>비밀번호</td>
		<td>
			<input type="password" name="pass" style="width:100px;" />
		</td>
	</tr> -->
	<tr>
		<td colspan="2" align="center">
			<button type="submit">작성완료</button>
			<button type="reset">RESET</button>
			<button type="button" onclick="location.href='../mvcboard/list.do';">
				목록 바로가기
			</button>
		</td>
	</tr>
</table>
</form>

</body>
</html>