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
    <title>Jumbotron example · Bootstrap v5.1</title>

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
    </style>

    
  </head>
  <body>
    <div class="tab-content" id="pills-tabContent">
      <div class="tab-pane fade show active" id="pills-scan" role="tabpanel" aria-labelledby="pills-scan-tab" data-bs-touch="true">
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="./img/flowers-7188503_1920.jpg" class="d-block w-100" alt="..." height= 550px>
            </div>
            <div class="carousel-item">
              <img src="./img/phone-wallpaper-g43fb981c2_1920.jpg" class="d-block w-100" alt="..."  height= 550px>
            </div>
            <div class="carousel-item">
              <img src="./img/man-gbbbaee27f_1920.jpg" class="d-block w-100" alt="..."  height= 550px>
            </div>
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
        <div class="card text-center">
          <div class="card-body">
            <p class="card-text">사진을 업로드하여</p>
            <p class="card-text">여러분의 피부상태를 알 수 있습니다.</p>
            <div class="mb-3">
              <input class="form-control" type="file" id="formFile">
            </div>
            <a href="#" class="btn btn-primary">피부 진단 받기</a>
          </div>
        </div> 
      </div>

      <div class="tab-pane fade" id="pills-log" role="tabpanel" aria-labelledby="pills-log-tab">
        <h1>피부 일기 페이지</h1>
      </div>

      <div class="tab-pane fade" id="pills-comunity" role="tabpanel" aria-labelledby="pills-comunity-tab">
        <h1>피부 게시판</h1>
      </div>
    </div>


    
    <ul class="nav fixed-bottom nav-pills mb-3 nav-fill" id="pills-tab" role="tablist">
      <li class="nav-item" role="presentation">
        <button class="nav-link active" id="pills-scan-tab" data-bs-toggle="pill" data-bs-target="#pills-scan" type="button" role="tab" aria-controls="pills-scan" aria-selected="true">피부 진단</button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link" id="pills-log-tab" data-bs-toggle="pill" data-bs-target="#pills-log" type="button" role="tab" aria-controls="pills-log" aria-selected="false">피부 일기</button>
      </li>
      <li class="nav-item" role="presentation">
        <button class="nav-link" id="pills-comunity-tab" data-bs-toggle="pill" data-bs-target="#pills-comunity" type="button" role="tab" aria-controls="pills-comunity" aria-selected="false">게시판</button>
      </li>
    </ul>


    
  </body>
</html>