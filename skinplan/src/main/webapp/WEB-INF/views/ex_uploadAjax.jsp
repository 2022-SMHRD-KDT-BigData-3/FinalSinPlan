<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class='uploadDiv'>
	<input type='file' name='uploadFile' multiple>
</div>
<button id='uploadBtn'> upload </butoon>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>

var regex = new RegExp("(.*?)\.(exe|zip|sh|alz)$");
var maxSize = 5242880; //5MB
function checkExtension(fileName, fileSize){
	if(fileSize >= maxSize){
		alert("파일 사이즈 초과");
		return false;
	}
	if(regex.test(fileName)){
		alert("해당 종류의 파일은 업로드할 수 없습니다.");
		return false;
	}
	return true;
}
$(document).ready(function(){
	$("#uploadBtn").on("click", function(e){
		var formData = new FormData();
		var inputFile = $("input[name='uploadFile']");
		var files = inputFile[0].files;
		console.log(files);
		//add File Data to formData
		for(var i=0; i<files.length; i++){
			if(!checkExtension(files[i].name, files[i].size)){
				return false;
			}
			formData.append("uploadFile", files[i]);
		}
		
$.ajax({
	url : "/uploadAjax",
	processData : false,
	contentType: false,
	data : formData,
	type : "POST",
	success : function(result){
		alert("uploaded");
	}
	});//$.ajax
});
});
</script>
</body>
</html>