<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <!-- Favicons -->
  <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
  <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
  <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
  <link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
  <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
  <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
  <meta name="theme-color" content="#7952b3">

  <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <!-- 구글폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">


    <style>
    body{
            font-family: 'Jua', sans-serif;
        }
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

    a {
      text-decoration: none;
      color: black;
    }

    #att_zone {
      width: 90%;
      min-height: 150px;
      padding: 10px;
      border: 1px dotted #00f;
    }

    #att_zone:empty:before {
      content: attr(data-placeholder);
      color: #999;
      font-size: .9em;
    }
    .uploadResult ul {
        display:flex;
        flex-flow: column;
        justify-contetn: center;
        align-items: center;
        padding: 0;
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
    	width: 16px;
    	height: 16px;
    }
    .uploadResult ul li button{
    	padding: 0;
    	
    }
    .thumbnail{
    width:200px;
    height:200px;
    }
  </style>

</head>

<body>
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
              <a class="nav-link active" aria-current="page" href="main_scan">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="infochange">내 정보 변경</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cosmetic">화장품 정보</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="logout">로그아웃</a>
            </li>
          </ul>

        </div>
      </div>
    </nav>
  </div>
  <!-- 피부 진단 페이지 -->
  <div class="tab-content px-auto" id="pills-tabContent">
    <div class="tab-pane fade  show active" id="pills-scan" role="tabpanel" aria-labelledby="pills-scan-tab"
      data-bs-touch="true">
      <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="./img/front.jpg" class="d-block w-100" alt="..." height=400px>
          </div>
<!--           <div class="carousel-item">
            <img src="./img/left.jpg" class="d-block w-100" alt="..." height=400px>
          </div>
          <div class="carousel-item">
            <img src="./img/right.jpg" class="d-block w-100" alt="..." height=400px>
          </div> -->
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
       <form role="form" action="insertImages" method="post" enctype="multipart/form-data" class="card text-center"> 
        <div class="card-body bg-info bg-opacity-25">
          <p class="card-text">좌측, 정면, 우측 얼굴 사진 3장을</p>
          <p class="card-text">등록해주세요.</p>
          <div class="mb-3">
          
            <div class="container">
              <input type='file' name="uploadfile1" multiple accept="image/*">
               <div class="frame" id='att_zone' data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'>   </div>  
            </div>
            <div class="container">
			  <input type='file' name="uploadfile2" multiple accept="image/*">
			  <div class="frame" id='att_zone' data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'> </div>
			</div> 
			 <div class="container">
			  <input type='file' name="uploadfile3" multiple accept="image/*">		
			   <div class="frame" id='att_zone' data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'>    
              </div>
			 </div>   
         
          </div>
          <fieldset class="row mb-3 ">
            <select class="form-select" aria-label="Default select example" name="skin_id">
              <option selected>피부 타입</option>
              <option value=1>건성</option>
              <option value=2>지성</option>
              <option value=3>복합성</option>
              <option value=4>중성</option>
            </select>
          </fieldset>
       <button class="btn btn-primary mb-5">submit</button>
        </div>
      </form>

    </div> 
  </div>
  <ul class="nav fixed-bottom nav-pills mb-3 nav-fill bg-light" id="pills-tab" >
    <li class="nav-item" role="presentation">
      <a href="main_scan" class="nav-link active" aria-selected="true">피부 진단</a>
    </li>
    <li class="nav-item" role="presentation">
      <a href="./main_log.html" class="nav-link" aria-selected="false">피부 일기</a>
    </li>
    <li class="nav-item" role="presentation">
      <a href="./main_board.html" class="nav-link "  aria-selected="false">게시판</a>
    </li>
  </ul>
</body>

<script type="text/javascript">
window.addEventListener('load',function(){
	
	const container = document.querySelectorAll('.container');
	const frame1 = container[0].querySelector('#att_zone');
	const frame2 = container[1].querySelector('#att_zone');
	const frame3 = container[2].querySelector('#att_zone');
	//console.log(frame1)
	const fileInput1 = container[0].querySelector('input[type="file"]');
	const fileInput2 = container[1].querySelector('input[type="file"]');
	const fileInput3 = container[2].querySelector('input[type="file"]');
	//console.log(fileInput2)
	fileInput1.addEventListener('input', () => {
		if(!isImage(fileInput1.files[0])){
			alert('image 파일만 업로드 할 수 있습니다.');
			return;
		}
		const reader = new FileReader();
		reader.addEventListener('load',() => {
			const img = document.createElement('IMG');
			img.classList.add('thumbnail');
			img.src = reader.result;
			frame1.insertAdjacentElement('beforeend', img);
		});
		reader.readAsDataURL(fileInput1.files[0]);
	});
	
	fileInput2.addEventListener('input', () => {
		if(!isImage(fileInput2.files[0])){
			alert('image 파일만 업로드 할 수 있습니다.');
			return;
		}
		const reader = new FileReader();
		reader.addEventListener('load',() => {
			const img = document.createElement('IMG');
			img.classList.add('thumbnail');
			img.src = reader.result;
			frame2.insertAdjacentElement('beforeend', img);
			
		});
		reader.readAsDataURL(fileInput2.files[0]);
	});
	
	fileInput3.addEventListener('input', () => {
		if(!isImage(fileInput3.files[0])){
			alert('image 파일만 업로드 할 수 있습니다.');
			return;
		}
		const reader = new FileReader();
		reader.addEventListener('load',() => {
			const img = document.createElement('IMG');
			img.classList.add('thumbnail');
			img.src = reader.result;
			frame3.insertAdjacentElement('beforeend', img);
			
		});
		reader.readAsDataURL(fileInput3.files[0]);
	});
	function isImage(file){
		return file.type.indexOf('image')>=0;
	}
});
 /* $(document).ready(function(e){
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
	  //var cloneObj = $(".uploadDiv").clone();
	//$("#uploadBtn").on("click", function(e){
		
 		for(var i=0; i < files.length; i++){
		   if(!checkExtension(files[i].name, files[i].size)){
			       return false;
			}  
			formData.append("uploadFile", files[i]);
	}

	 $.ajax({
		   url : 'uploadimgAction',
		   processData : false,
		   contentType: false,
		   data : formData,
		   type : 'POST',
		   dataType: 'json', 
		   success : function(result){
		   	 console.log(result);
		   	 showUploadedFile(result);
		 }
	 }); //$.ajax  
});
var uploadResult = $(".uploadResult ul");
	function showUploadedFile(uploadResultArr){
		if(!uploadResultArr || uploadResultArr.length == 0){return;}
		var uploadUL = $(".uploadResult ul");
		var str = "";
		$(uploadResultArr).each(function(i, obj){
			//image type
			if(!obj.image){
				var fileCallPath = encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid +"_"+obj.fileName);
				str += "<li data-path='"+obj.uploadPath+"'";
				str += " data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
				str +" ><div>";
				str += "<span> "+ obj.fileName+"</span>";
				str += "<button type='button' data-file=\'"+fileCallPath+"\' "
				str += "data-type='image' class='btn'><img src='resources/img/remove.png'></button><br>";
				str += "<img src ='/controller/display?fileName="+fileCallPath+"'>";
				str += "</div>";
				str += "</li>";
				}else{
				var fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
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
		uploadResult.append(str);
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
}); */

</script>

</html>