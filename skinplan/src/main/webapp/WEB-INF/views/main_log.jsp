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
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">내 정보 변경</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="cosmetic">화장품 정보</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">로그아웃</a>
            </li>
          </ul>

        </div>
      </div>
    </nav>
  </div>
  <!-- 피부 진단 페이지 -->
  <div class="tab-content px-auto" id="pills-tabContent">

    <!-- 피부 일기 페이지 -->
    <div class="tab-pane fade show active" id="pills-log" role="tabpanel" aria-labelledby="pills-log-tab">
      <main>
        <!-- 피부 일기 썸네일 카드 -->
        <form action="">
          <div class="container text-center bg-info bg-opacity-25">
            <div class="row pt-3">
              <!-- 달력부분 -->
              <div class="col">
                <input type="text" id="datepicker1" style="width: 150px;">
              </div>
              <div class="col">
                <input type="text" id="datepicker2" style="width: 150px;">
              </div>
            </div>
            <div class="row">
              <div class="col-7"></div>
              <div class="col-5">
                <input type="submit" class="btn btn-primary mt-2" value="날짜 검색">
              </div>
            </div>
          </div>
        </form>
        <div class="album pt-3 bg-light">
          <div class="container bg-info bg-opacity-25">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
              <div class="col">
                <a href="BoardView">
                  <div class="card" style="width: 100%;">
                    <img src="./img/tro.jpg" class="card-img-top mx-auto" alt="..."
                      style="height: 300px; width: 300px">
                    <div class="card-body">
                      <h3 class="card-title">2022-06-11</h5>
                      <p class="card-text">여드름, 블랙헤드</p>
                    </div>
                  </div>
                </a>
              </div>
              <div class="col">
                <a href="BoardView">
                  <div class="card" style="width: 100%;">
                    <img src="./img/tro2.jpg" class="card-img-top mx-auto" alt="..."
                      style="height: 300px; width: 300px">
                    <div class="card-body">
                      <h3 class="card-title">2022-06-10</h5>
                      <p class="card-text">여드름, 블랙헤드</p>
                    </div>
                  </div>
                </a>
              </div>

              
              
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
      <a href="./main_scan.html" class="nav-link " aria-selected="true">피부 진단</a>
    </li>
    <li class="nav-item " role="presentation">
      <a href="#" class="nav-link active" aria-selected="false">피부 일기</a>
    </li>
    <li class="nav-item" role="presentation">
      <a href="./main_board.html" class="nav-link "  aria-selected="false">게시판</a>
    </li>
  </ul>
</body>

<script>
  

  // datepicker

  $(function () {
    //input을 datepicker로 선언
    $("#datepicker1,#datepicker2").datepicker({
      dateFormat: 'yy-mm-dd' //달력 날짜 형태
      , showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
      , showMonthAfterYear: true // 월- 년 순서가아닌 년도 - 월 순서
      , changeYear: true //option값 년 선택 가능
      , changeMonth: true //option값  월 선택 가능                
      , showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
      , buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
      , buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
      , buttonText: "선택" //버튼 호버 텍스트              
      , yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
      , monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'] //달력의 월 부분 텍스트
      , monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'] //달력의 월 부분 Tooltip
      , dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'] //달력의 요일 텍스트
      , dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'] //달력의 요일 Tooltip
      , minDate: "-5Y" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
      , maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
    });

    //초기값을 오늘 날짜로 설정해줘야 합니다.
    $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
  });


</script>

</html>