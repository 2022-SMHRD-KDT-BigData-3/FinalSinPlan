<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
  <meta name="generator" content="Hugo 0.88.1">
  <title>Skin Plan</title>

  <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/jumbotron/">

  <!-- Bootstrap core CSS -->
  <!-- Custom styles for this template -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
    crossorigin="anonymous"></script>

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
    .uploadResult{
    	width : 200px;
    	height : 200px;
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
    
    <!-- 피부 게시판 -->
    <div class="tab-pane fade  show active" id="pills-comunity" role="tabpanel" aria-labelledby="pills-comunity-tab">
      <main>
        <!-- 글쓰기 -->
        <div class="d-grid gap-2 bg-info bg-opacity-25">
          <a href="uploadAjax" class="btn btn-primary" tabindex="-1" role="button">글쓰기</a>
        </div>
        <!-- 게시글 썸네일 카드 -->
        <div class="album pt-3 bg-light">
          <div class="container bg-info bg-opacity-25">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3" id="list">
            
               <div class="col">
                <div class="card shadow-sm">
                  <a href="boardView">
                    <div class="card" style="width: 100%;">    			
    				<div class='uploadResult'>
						<ul>
						</ul>
					</div>                    
                      <div class="card-body">
                        <h3 class="card-title"></h5>
                        <p class="card-text"></p>
                          </div>
                    </div>
                  </a>
                </div>
              </div> 
              <c:forEach items="${list}" var="board">
              	 <div class="col">
                <div class="card shadow-sm">
                  <div><a href='boardView?bno=<c:out value="${board.bno}"/>'>
                    <div class="card" style="width: 100%;">    			
    				<div class='uploadResult'>
						<ul>
						</ul>
					</div>                    
                      <div class="card-body">
                        <h3 class="card-title"><c:out value="${board.title }"></c:out></h5>
                        <p class="card-text"><c:out value="${board.skintype }"></c:out></p>
                          </div>
                    </div>
                  </a></div>
                </div>
              </div> 
              </c:forEach>
              
<!--               <div class="col">
                <div class="card shadow-sm">
                  <a href="boardView.html">
                    <div class="card" style="width: 100%;">
                      <img class="" alt="..."
                        style="height: 300px; width: 300px">
                      <div class="card-body">
                        <h5 class="card-title"></h5>
                        <p class="card-text"></p>
                      </div>
                    </div>
                  </a>
                </div>
              </div>  -->
                 
            </div>
          </div>
        </div>

        <nav aria-label="Page navigation example" style="padding-bottom: 50px">
          <ul class="pagination justify-content-center py-3 bg-info bg-opacity-25">
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
              </a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">4</a></li>
            <li class="page-item"><a class="page-link" href="#">5</a></li>
            
            <li class="page-item">
              <a class="page-link" href="#" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
              </a>
            </li>
          </ul>
        </nav>
        <div>

        </div>

      </main>
    </div>
  </div>


  <ul class="nav fixed-bottom nav-pills mb-3 nav-fill bg-light" id="pills-tab" role="tablist">
    <li class="nav-item" role="presentation">
      <a href="main_scan.html" class="nav-link " aria-selected="false">피부 진단</a>
    </li>
    <li class="nav-item" role="presentation">
      <a href="main_log.html" class="nav-link" aria-selected="false">피부 일기</a>
    </li>
    <li class="nav-item" role="presentation">
      <a href="main_board" class="nav-link active"  aria-selected="true">게시판</a>
    </li>
  </ul>
</body>

<script>
$(document).ready(()=>{
	loadList();
});
	function loadList(){
		$.ajax({
			url : "boardlist",
			type : "GET",
			dataType : "json",
			success : resultHtml,
			error : function(){alert("error");}
		});
	}
	function resultHtml(data){
		var view = "<div calss='col'>";
		view+= "<div class='card shadow-sm'> ";
        view+= "<div id='t"+obj.bno+"'><a href='boardView'>";
        view+= "<div class='card' style='width: 100%'>";
        view+= "<div class='uploadResult'>";
        view+= "<ul>";
        view+= "</ul>";
        view+= "</div>";
        view+= "<div class='card-body'>";
        view+= "<h5 class='card-title'/>게시글</h5>";
        view+= "<p class='card-text'/>피부타입 : 중성 </p>";
        view+= "</div>";    
        view+= "</div>";
        view+= "</a>";
        view+= "</div>";
        view+= "</div>";
      	view+= "</div>";
      	$.each(data, function(index,obj){
      		view+="<div class='col'";
      		view+= "<div class='card shadow-sm'> ";
      		view+= "<div><a href='boardView'>";
      		view+= "<div class='card' style='width: 100%'>";
            view+= "<div class='uploadResult'>";
            view+= "<ul>";
			//image type
			if(obj.fileType){
				var fileCallPath = encodeURIComponent(obj.uploadPath+"/s_"+obj.uuid+"_"+obj.fileName);
				
				view += "<a data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.fileType+"' ><div>";
				view += "<img src='/controller/display?fileName="+fileCallPath+"'>";
				view += "</div>";
				view += "</a>";
			}else{
				view += "<li data-path='"+obj.uploadPath+"'data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"'data-type='"+obj.fileType+"' ><div>";
				view += "<span>" + obj.fileName+"</span><br/>";
				view += "<img src='/resources/img/attach.png'>";
				view += "</div>";
				view += "</li>";
			}
            view+= "</ul>";
            view+= "</div>";
            view+= "<div class='card-body'>";
            view+= "<h5 class='card-title'/>"+obj.title+"</h5>";
            view+= "<p class='card-text'>"+obj.skintype+"</p>";
            view+= "</div>";    
            view+= "</div>";
            view+= "</a>";
            view+= "</div>";
            view+= "</div>";
           	view+= "</div>";

      	});
      	$(".uploadResult ul").html(view); 
      	$("#list").html(view);
	
	}
	function goForm(bno){
		var title=$("t"+bno).text();
		var view ="<a href='boardView'/>";
		$("#t"+bno).html(view)
	}
	
</script>

</html>