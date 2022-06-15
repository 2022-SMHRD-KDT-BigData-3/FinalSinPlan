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
	 rc="https://code.jquery.com/jquery-3.4.1.js"
 	 integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
 	 crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

	#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	#result_card {
		position: relative;
	}
	.imgDeleteBtn{
	    position: absolute;
	    top: 0;
	    right: 5%;
	    background-color: #ef7d7d;
	    color: wheat;
	    font-weight: 900;
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    line-height: 26px;
	    text-align: center;
	    border: none;
	    display: block;
	    cursor: pointer;	
	}
	#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	
  </style>
    <script
 		src="https://code.jquery.com/jquery-3.4.1.js"
 		integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  		crossorigin="anonymous"></script>
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
 <!--  <form action="boardInsert" method="post" id="Form"> -->
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
    <!-- 파일 업로드 -->
   
       <form action="uploadFormAction" name="frm" method="post" enctype="multipart/form-data" id="enrollForm">
       <!--  <a action="uploadFormAction" name="frm" method="post" enctype="multipart/form-data" id="enrollForm"/> -->
            <input multiple="multiple" type="file" name="uploadFile" accept='image/*'/>
            <div class="form_section">
            	<div class="form_section_title">
                   	<label></label>
                </div>
                <div class="form_section_content">
            
             	<div id="uploadResult">
             		<!-- <div id="result_card">
             		<div class="imgDeleteBtn">X</div> 
           			<img src="">  -->
           			</div>
            	</div>
            </div>
          </div>
      	</div>
        </div>
      </div>
    </div>
   
    <div class="d-flex justify-content-end mx-4">
      <button type="submit" class="btn btn-primary mx-1" id="btn">게시글 작성</button>
      <a href="cancel" class="btn btn-primary " id="cancelbtn">취소</a>
    </div>

  </form>
  <script type="text/javascript">
  	let enrollForm = $("#enrollForm")
  	//등록버튼
/*   	$("#btn").click(function(){
  		$("#Form").submit();
  	}); */
/*    	$("#btn").on("click",function(e){
  		e.preventDefault();
  		Form.submit();
  	}); */
  	//이미지 업로드
  	$("input[type='file']").on("change", function(e){
  		//이미지 존재시 삭제
  		if($(".imgDeleteBtn").length>0){
  			deleteFile();
  		}
   		let formData = new FormData();
  		let fileInput = $('input[name="uploadFile"]');
  		let fileList = fileInput[0].files;
  		let fileObj = fileList[0];
  		console.log("fileList : " + fileList);
   		console.log("fileObj : " + fileObj);
   		console.log("fileType(MimeType): " + fileObj.type);
 	 	/* if(!fileCheck(fileObj.name, fileObj.size)){
  			return false;
 	 	} */
  		for(let i = 0; i < fileList.length; i++){
  			formData.append("uploadFile", fileObj);	
  		}  		
  	 	$.ajax({
  			url: 'uploadAjaxAction',
  			processData : false,
  			contentType : false,
  			data : formData,
  			type : 'POST',
  			dataType : 'json',
  			success : function(result){
  				console.log(result);
  				showUploadImage(result);
  			},
  			error : function(result){
  				alert("이미지 파일이 아닙니다.");
  			}
  		}); 
  	}); 
  	
  	/*var, method related whth attachFile  */
	let regex = new RegExp("(.*?)\.(jpg|png)$");
  	let maxSize = 1048576; //1MB
  	function fileCheck(fileName, fileSize){
  		if(fileSize >= maxSize){
  			alert("파일 사이즈 초과");
  			return false;
  		}
  		if(!regex.test(fileName)){
  			alert("해당 종류의 파일은 업로드할 수 없습니다.");
  			return false;
  		}
  		return true;
  	}
  	//이미지 출력
  	function showUploadImage(uploadResultArr){
  		//전달받은 데이터 검증
  		if(!uploadResultArr || uploadResultArr.length == 0){return}
  		let uploadResult = $("#uploadResult");
  		let obj = uploadResultArr[0];
  		let str = "";
  		let filecallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
  		str += "<div id='result_card'>";
  		str += "<img src='./display?fileName=" + filecallPath + "'>";
  		str += "<div class='imgDeleteBtn' data-file='"+filecallPath+"'>X</div>";
  		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
  		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";
  		str += "</div>";
  		uploadResult.append(str);
  	}
  	//이미지 삭제 버튼 동작
  	$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
  		deleteFile();
  	});
  	//파일 삭제 메서드
  	function deleteFile(){
  		let targetFile = $(".imgDeleteBtn").data("file");
  		let targetDiv = $("#result_card");
  		$.ajax({
  			url:'deleteFile',
  			data : {fileName : targetFile},
  			dataType : 'text',
  			type : 'POST',
  			success : function(result){
  				console.log(result);
  				targetDiv.remove();
  				$("input[type='file']").val("");
  			},
  			error : function(result){
  				console.log(result);
  				alert("파일을 삭제하지 못하였습니다.")
  			}
  		});
  	}
	//이미지 정보 호출
	let imageId = '<c:out value="${AttachImageVO.imageid}"/>';
	let uploadResult = $("#uploadResult");
	$.getJSON("/getAttachList",{imageId : imageid}, function(arr){
		if(arr.length===0){
			let str = "";
			str += "<div id='result_card'>";
			str += "<img src='./resources/img/goodsNoImage.png'>";
			str += "</div>";
			uploadResult.html(str);
			return;
		}
		let str = "";
		let obj = arr[0];
		let fileCallPath = encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
		str += "<div id='result_card'";
		str += "data-path='"+obj.uploadPath+"'data-uuid'"+obj.uuid+"'data-filename='"+obj.fileName+"'";
		str += ">";
		str += "<img src='/display?fileName="+fileCallPath+"'>";
		str += "</div>";
		uploadResult.html(str);
	});
  </script>

</body>

</html>