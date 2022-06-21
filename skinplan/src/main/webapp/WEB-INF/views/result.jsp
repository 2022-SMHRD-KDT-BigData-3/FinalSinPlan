<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    </style>

</head>

<body class=" bg-info bg-opacity-25">
    <div>
        <nav class="navbar navbar-dark bg-dark" aria-label="First navbar example">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">SkinPlan</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false"
                    aria-label="Toggle navigation">
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
    <!-- 피부 상태 사진 -->
    <header>
    	<div class='uploadResult'>
				<ul>
				</ul>
		</div>
		 <% 
        session = request.getSession();
        String email = (String)session.getAttribute("email"); 
        %>
        <input type="hidden" name="email" value = <%= email %>  >
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/resources/img/indeximg.jpg" class="d-block w-100" height=300px alt="...">
                </div>
                <div class="carousel-item">
                    <img src="C:/eGovFrame-3.10.0/workspace.edu/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/skinplan/resources/img/1234/37/img2.jpg" class="d-block w-100" height=300px alt="...">
                 </div>
                <div class="carousel-item">
                    <img src="C:/eGovFrame-3.10.0/workspace.edu/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/skinplan/resources/img/1234/37/img3.jpg" class="d-block w-100" height=300px alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </header>
    <img src="/resources/img/indeximg.jpg" class="d-block w-100" height=300px alt="...">
	<!-- 피부 진단 결과 -->
    <div class="mt-3">
        <div class="card" style="width: 100%;">
            <div class="card-body">
                <h5 class="card-title">진단결과</h5>
                <p class="card-text">${symptom}</p>
            </div>
        </div>
        <div class="card" style="width: 100%;">
            <div class="card-body">
                <h5 class="card-title">원인</h5>
                <p class="card-text">${causation}</p>
            </div>
        </div>
        <div class="card" style="width: 100%;">
            <div class="card-body">
                <h5 class="card-title">Tip</h5>
                <p class="card-text">${care} </p>
            </div>
        </div>
    </div>
    <div>
        <h4 class="fw-bold text-center mt-3">추천 화장품</h4>
    </div>
    <div class="accordion" id="accordionExample">
        <div class="card my-4" style="width: 100%;">
            <div class="container accordion-item">
                <div class="row">
                    <div class="col-4">
                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014733907ko.jpg?l=ko"
                            class="img-fluid rounded-start" alt="..." style="height: 100px; width : 100px">
                    </div>
                    <!-- 아코디언 형태의 제목 -->
                    <div class="col-8" id="headingOne">
                        <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            	아누아 어성초 77% 토너 350ml
                          </button>
                    </div>
                    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                        <!-- 아코디언 펼쳐졌을때 나오는 글내용 -->
                        <table class="table">
                            <tbody>
                              <tr>
                                <th scope="row">회사명</th>
                                <td colspan="3">메가코스㈜ / ㈜더파운더즈</td>
                              </tr>
                              <tr>
                                <th scope="row">성분</th>
                                <td class="fw-bolder" colspan="3">카올린, 레티놀( 피지 조절) / aha,bha (모낭 각화 이상 해결)</td>
                              </tr>
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="card my-4" style="width: 100%;">
            <div class="container accordion-item">
                <div class="row">
                    <div class="col-4">
                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016720403ko.jpg?l=ko"
                            class="img-fluid rounded-start" alt="..." style="height: 100px; width : 100px">
                    </div>
                    <div class="col-8" id="headingTwo">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                            넘버즈인 3번 보들보들 결 세럼 50ml
                          </button>
                    </div>
                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                            <!-- 펼쳐졌을때 나오는 글내용 -->
                            <table class="table">
                                <tbody>
                                  <tr>
                                    <th scope="row">회사명</th>
                                    <td colspan="3">현성이의 화장품회사</td>
                                  </tr>
                                  <tr>
                                    <th scope="row">성분</th>
                                    <td colspan="3">현성이의 살인미소 한스푼</td>
                                  </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card my-4" style="width: 100%;">
            <div class="container accordion-item">
                <div class="row">
                    <div class="col-4">
                        <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016610502ko.jpg?l=ko"
                            class="img-fluid rounded-start" alt="..." style="height: 100px; width : 100px">
                    </div>
                    <div class="col-8" id="headingThree">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            브링그린 티트리시카수딩크림 대용량
                          </button>
                    </div>
                    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                        <div class="accordion-body">
                           <!-- 펼쳐졌을때 나오는 글내용 -->
                           <table class="table">
                            <tbody>
                              <tr>
                                <th scope="row">회사명</th>
                                <td colspan="3">현성이의 화장품회사</td>
                              </tr>
                              <tr>
                                <th scope="row">성분</th>
                                <td colspan="3">현성이의 살인미소 한스푼</td>
                              </tr>
                            </tbody>
                        </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="my-5">
            <a href="remain" class="w-100 btn btn-primary btn-lg">돌아가기</a>
        </div>
    </div>
<script type="text/javascript">
/* $(document).ready(function(){
	(function(){
		var bno = '<c:out value="$(board.bno}"/>';
		$.getJSON("getAttachList", {bno:bno}, function(arr){
			console.log(arr);
			var str = "";
			$(arr).each(function(i, attach){
				//image type
				if(attach.fileType){
					var fileCallPath = encodeURIComponent(attach.uploadPath+"/s_"+attach.uuid+"_"+attach.fileName);
					
					str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName+"' data-type='"+attach.fileType+"' ><div>";
					str += "<img src='/controller/display?fileName="+fileCallPath+"'>";
					str += "</div>";
					str += "</li>";
				}else{
					str += "<li data-path='"+attach.uploadPath+"'data-uuid='"+attach.uuid+"'data-filename='"+attach.fileName+"'data-type='"+attach.fileType+"'><div>";
					str += "<span>" + attach.fileName+"</span><br/>";
					str += "<img src='/resources/img/attach.png'>";
					str += "</div>";
					str += "</li>";
				}
			});			
			$(".uploadResult ul").html(str); 
		
		});
	});
}); */
</script>
</body>

</html>