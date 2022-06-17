<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insertImages" enctype="multipart/form-data" method="post">
		<input type="file" name="files[]" accept="image/*" multiple="multiple"/>
		<input type="submit" value="이미지저장"/>
	</form>
</body>
</html>