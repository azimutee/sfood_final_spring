<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안전먹거리</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="./css/css.css">

<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Roboto+Slab&display=swap"
	rel="stylesheet">
<style>
body {
	font-family: 'Roboto Slab', 'Nanum Gothic';
}
</style>
</head>
<body>

	<jsp:include page="../header.jsp"></jsp:include>



	<div class="container-fluid">
		<div class="row">
			<jsp:include page="../side.jsp"></jsp:include>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<c:if test="${!empty login }">
					<h1 class="sub-header">공지사항 > 게시글 작성</h1>
					<form method="post" action="insertBoard">
						<div class="form-group">
							<input type="hidden" name="id" id="id" value="${id }" /> <label
								for="title">제목</label><input type="text" class="form-control"
								name="title" id="title" />
						</div>
						<div class="form-group">
							<label for="contents">내용</label>
							<textarea name="contents" class="form-control" id="contents"
								cols="50" rows="7"></textarea>
						</div>
						<div class="form-group ">
							<input type="submit" class="btn btn-default" value="작성" /> <input
								type="button" class="btn btn-default" value="취소" id="cancel" />
						</div>
					</form>
				</c:if>
				<c:if test="${empty login}">
					<div id="detailimg" class="row placeholders">
						<div id="innerdivback"></div>
						<div id="innerdiv">
							<div id="verticalbottom">
								<h1 class="page-header">
									What We <span class="">Provide</span>
								</h1>
								<h3>로그인 후 이용해주세요.</h3>
							</div>
						</div>
					</div>
				</c:if>
				<jsp:include page="../footer.jsp"></jsp:include>

			</div>
		</div>
	</div>



</body>

<script>
	let detail = (no) => {
		console.log(no);
	}

</script>
</html>