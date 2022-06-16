<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="kr.main.entity.boardVO"%>
<!doctype html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
  <meta name="generator" content="Hugo 0.88.1">
  <title>SkinPlan</title>

  <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/jumbotron/">



  <!-- Bootstrap core CSS -->
  <!-- Custom styles for this template -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>
  <script
    src="https://code.jquery.com/jquery-3.4.1.js"
     integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
     crossorigin="anonymous"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   ﻿﻿
  <!-- Favicons -->
  <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
  <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
  <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
  <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
  <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
  <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
  <meta name="theme-color" content="#7952b3">


  <style>
    .bd-placeholder-img {
      font-size: 1.125rem;
      text-anchor: middle;
      -webkit-user-select: none;
      -moz-user-select: none;
      user-select: none;
    }

    @media (min-width: 768px) {
      .bd-placeholder-img-lg {
        font-size: 3.5rem;
      }
    }

    textarea {
      width: 100%;
      border: none;
      resize: none;
    }


    .uploadResult {
        width:100%;
        background-color : gray;
    }
    .uploadResult ul {
        display:flex;
        flex-flow: column;
        justify-contetn: center;
        align-items: center;
    }
    .uploadResult ul li {
        list-style: none;
        padding: 10px;
    }
    .uploadResult ul li img{
        width: 200px;
        height: 200px;
    }
    .uploadResult ul li button img{
    	width: 32px;
    	height: 32px;
    }
    .uploadResult ul li button{
    	padding: 0;
    	
    }
   
  </style>
</head>

<body>
  <!-- 상단 네비바 -->
   <div>
    <nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">SkinPlan</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample01"
          aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExample01">
          <ul class="navbar-nav me-auto mb-2">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="infochange">내 정보 변경</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="logout">로그아웃</a>
            </li>
          </ul>

        </div>
      </div>
    </nav>
  </div>
 
  <form role="form" action="upload" method="post"> 
    <div class="row mb-3">
      <label for="title" class="col-sm-2 col-form-label">제목</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="title" name="title">
      </div>
    </div>
    <div class="form-floating">
      <textarea class="form-control" placeholder="Leave a comment here" id="content" name="content" style="height: 350px"></textarea>
      <label for="content">Content</label>
    </div>
    <fieldset class="row mb-3">
      <select class="form-select" aria-label="Default select example" name="skintype">
        <option selected>피부 타입</option>
        <option value="1">건성</option>
        <option value="2">지성</option>
        <option value="3">복합성</option>
        <option value="4">중성</option>
      </select>
    </fieldset>

    <div class="d-flex justify-content-end mx-4">
      <button type="submit" class="btn btn-primary mx-1" id="btn">게시글 작성</button> 
      <a href="cancel" class="btn btn-primary " id="cancelbtn">취소</a>
    </div>
 </form>
  <!-- 파일 업로드 -->
     <div class ="row">
    	<div class="col-lg-12">
    		<div class="panel panel-default">
    		<div class="panel-heading">File Attach</div>
    		<div class="panel-body">
    			<div class="uploadDiv">
					<input type="file" name="uploadFile" multiple>
				</div>
    				<div class='uploadResult'>
						<ul>
						</ul>
					</div>
    		</div>
    	</div>
    	</div>
    </div> 
   
<script type="text/javascript">
 $(document).ready(function(e){
	var formObj = $("form[role='form']");
	$("button[type='submit']").on("click", function(e){
		e.preventDefault();
		console.log("submit clicked");
		var str ="";
		$(".uploadResult ul li").each(function(i,obj){
			var jobj = $(obj);
			console.dir(jobj);
			str += "<input type='hidden' name='attachList["+i+"].fileName'value='"+jobj.data("filename")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].uuid'value='"+jobj.data("uuid")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].uploadPath'value='"+jobj.data("path")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].fileType'value='"+jobj.data("type")+"'>";
		});
		formObj.append(str).submit(); 
	});
});

var regex = new RegExp("(.*?)\.(exe|zip)$");
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
$("input[type='file']").change(function(e){
   var formData = new FormData();
   var inputFile = $("input[name='uploadFile']");
   var files = inputFile[0].files;
   for(var i=0; i < files.length; i++){
      if(!checkExtension(files[i].name, files[i].size)){
         return false;
      }
      formData.append("uploadFile", files[i]);
}
   $.ajax({
      url : 'uploadAjaxAction',
      processData : false,
      contentType: false,
      data : formData,
      type : 'POST',
      dataType: 'json',
      success : function(result){
         console.log(result);
         showUploadResult(result);
      }
    });//$.ajax       
});
function showUploadResult(uploadResultArr){
	if(!uploadResultArr || uploadResultArr.length == 0){return;}
	var uploadUL = $(".uploadResult ul");
	var str = "";
	$(uploadResultArr).each(function(i, obj){
		//image type
		$(uploadResultArr).each(function(i,obj){
			if(!obj.image){
				var fileCallPath = encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
				str += "<li data-path='"+obj.uploadPath+"'";
				str += " data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
				str +" ><div>";
				str += "<span> "+ obj.fileName+"</span>";
				str += "<button type='button' data-file=\'"+fileCallPath+"\' "
				str += "data-type='image' class='btn'><img src='resources/img/remove.png'></button><br>";
				str += "<img src='/controller/display?fileName="+fileCallPath+"'>";
				str += "</div>";
				str += "</li>";
				}else{
				var fileCallPath = encodeURIComponent(obj.uploadPath + "/" 
	                        + obj.uuid + "_" + obj.fileName);
				var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
				str += "<li "
				str += "data-path='"+obj.uploadPath+"'data-uuid='"+obj.uuid+"'data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
				str += "<span>" + obj.fileName+"</span>";
				str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' "
				str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
				str += "<img src='/resources/img/attach.png'></a>";
				str += "</div>";
				str += "</li>";
			}
		});
		uploadUL.append(str);
	});
}
$(".uploadResult").on("click", "button", function(e){
   console.log("delete file");
   var targetFile = $(this).data("file");
   var type = $(this).data("type");
   var targetLi = $(this).closest("li");
   
   $.ajax({
      url: 'deleteFile',
      data: {fileName: targetFile, type:type},
      dataType:'text',
      type:'POST',
      success: function(result){
         alert(result);
         targetLi.remove();
      }
   });//$.ajax
});

</script>

</body>

</html>