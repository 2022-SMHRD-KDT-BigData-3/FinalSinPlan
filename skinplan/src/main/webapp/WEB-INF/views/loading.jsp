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

    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">
<meta http-equiv="refresh" content="5;url=result">
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
      a{
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
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
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

    <div class="position-absolute top-50 start-50 translate-middle">
        <div class="spinner-border text-primary" style="width: 5rem; height: 5rem;" role="status">
            <span class="visually-hidden">Loading...</span>
        </div>
        <div class="mt-5">
            <a class="btn btn-primary" href="main_scan" role="button">돌아가기</a>
        </div>
    </div>

    
  </body>

</html>
