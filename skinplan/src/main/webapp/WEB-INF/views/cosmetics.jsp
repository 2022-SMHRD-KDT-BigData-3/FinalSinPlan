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

    textarea {
      width: 100%;
      border: none;
      resize: none;
    }

    a {
      text-decoration: none;
      color: black;
    }
  </style>

</head>

<body class=" bg-info bg-opacity-25">
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
              <a class="nav-link" href="#">내 정보 변경</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">화장품 정보</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">로그아웃</a>
            </li>
          </ul>

        </div>
      </div>
    </nav>
  </div>
	<!-- 화장품 정렬 폼 -->
  <form action="">
    <div class="container bg-light card">
      <div class="row">
        <div class="col-4">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="mist">
            <label class="form-check-label" for="flexCheckDefault">
              미스트
            </label>
          </div>
        </div>
        <div class="col-4">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="cream">
            <label class="form-check-label" for="flexCheckDefault">
              크림
            </label>
          </div>
        </div>
        <div class="col-4">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="lotion">
            <label class="form-check-label" for="flexCheckDefault">
              로션
            </label>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-4">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="oil">
            <label class="form-check-label" for="flexCheckDefault">
              오일
            </label>
          </div>
        </div>
        <div class="col-4">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="pimple">
            <label class="form-check-label" for="flexCheckDefault">
              여드름
            </label>
          </div>
        </div>
        <div class="col-4">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" value="" id="atopy">
            <label class="form-check-label" for="flexCheckDefault">
              아토피
            </label>
          </div>
        </div>
      </div>
      <div class="row">
          <div class="col-4">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="blackhead">
              <label class="form-check-label" for="flexCheckDefault">
                모공성질환
              </label>
            </div>
          </div>
          <div class="col-4">
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="herpes">
              <label class="form-check-label" for="flexCheckDefault">
                헤르페스
              </label>
            </div>
          </div>       
        <div class="col-4 d-grid gap-2 d-md-flex justify-content-md-end">
          <input type="submit" class="btn btn-primary btn-sm" value="정렬">
        </div>
      </div>
    </div>
  </form>
  
  <!-- 화장품 목록 -->

  <div class="container bg-light">
    <div class="row">
      <div class="col-6">
        <a href="">
          <div class="card my-3" style="height: 15rem;">
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0016/A00000016664111ko.jpg?l=ko" class="card-img-top" alt="..."
              style="height: 10rem;">
            <div class="container" style="padding: 0;">
              <div class="row">
                <div class="col mt-2 mx-2">
                  <h5>레드 블레미쉬 클리어 수딩 크림 </h5>
                </div>
              </div>
            </div>
          </div>
        </a>
      </div>
      <div class="col-6">
        <a href="">
          <div class="card my-3" style="height: 15rem;">
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/400/10/0000/0015/A00000015209310ko.jpg?l=ko" class="card-img-top" alt="..."
              style="height: 10rem;">
            <div class="container" style="padding: 0;">
              <div class="row">
                <div class="col mt-2 mx-2">
                  <h5>아이소이 BR 블레미쉬 케어 업 세럼</h5>
                </div>
              </div>
            </div>
          </div>
        </a>
      </div>
      <div class="col-6">
        <a href="">
          <div class="card my-3" style="height: 15rem;">
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016661732ko.jpg?l=ko" class="card-img-top" alt="..."
              style="height: 10rem;">
            <div class="container" style="padding: 0;">
              <div class="row">
                <div class="col">
                  <div class="col mt-2 mx-2">
                    <h5>구달 청귤 비타C 잡티케어 세럼</h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </a>
      </div>
      <div class="col-6">
        <a href="">
          <div class="card my-3" style="height: 15rem;">
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014780909ko.jpg?l=ko" class="card-img-top" alt="..."
              style="height: 10rem;">
            <div class="container" style="padding: 0;">
              <div class="row">
                <div class="col">
                  <div class="col mt-2 mx-2">
                    <h5>웰라쥬 리얼 히알루로닉 블루100 앰플</h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </a>
      </div>
      <div class="col-6">
        <a href="">
          <div class="card my-3" style="height: 15rem;">
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0015/A00000015869605ko.jpg?l=ko" class="card-img-top" alt="..."
              style="height: 10rem;">
            <div class="container" style="padding: 0;">
              <div class="row">
                <div class="col">
                  <div class="col mt-2 mx-2">
                    <h5>아누아 어성초 80 수분 진정 앰플 </h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </a>
      </div>
      <div class="col-6">
        <a href="">
          <div class="card my-3" style="height: 15rem;">
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014382708ko.jpg?l=ko" class="card-img-top" alt="..."
              style="height: 10rem;">
            <div class="container" style="padding: 0;">
              <div class="row">
                <div class="col">
                  <div class="col mt-2 mx-2">
                    <h5>닥터자르트 시카페어 토너</h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </a>
      </div>
      <div class="col-6">
        <a href="">
          <div class="card my-3" style="height: 15rem;">
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0016/A00000016727610ko.jpg?l=ko" class="card-img-top" alt="..."
              style="height: 10rem;">
            <div class="container" style="padding: 0;">
              <div class="row">
                <div class="col">
                  <div class="col mx-2">
                    <h5>피캄 베리어 사이클 KMK 토너</h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </a>
      </div>
      <div class="col-6">
        <a href="">
          <div class="card my-3" style="height: 15rem;">
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014405203ko.jpg?l=ko" class="card-img-top" alt="..."
              style="height: 10rem;">
            <div class="container" style="padding: 0;">
              <div class="row">
                <div class="col">
                  <div class="col mx-2">
                    <h5>폴라초이스 스킨 발란싱 포어-리듀싱 토너</h5>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </a>
      </div>

    </div>
  </div>


  <nav aria-label="Page navigation example bg-light">
    <ul class="pagination justify-content-center bg-light py-3" style="margin: 0;">
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

</body>

</html>