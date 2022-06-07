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

    textarea {
      width: 100%;
      border: none;
      resize: none;
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
          <form>
            <input class="form-control" type="text" placeholder="Search" aria-label="Search">
          </form>
        </div>
      </div>
    </nav>
  </div>
  <form action="boardInsert" method="post" id="Form">
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
    <div class="row mb-3">
      <div class="col-sm-10 offset-sm-2">
        <div class="input-group mb-3">
          <form action="upload.php" method="post" enctype="multipart/form-data">
            <input multiple="multiple" type="file" name="filename[]" accept='image/*'/>
          </form>
        </div>
      </div>
    </div>
   
    <div class="d-flex justify-content-end mx-4">
      <input type="submit" class="btn btn-primary mx-1" value="게시글 작성" id="btn">
      <a href="cancel" class="btn btn-primary " id="cancelbtn">취소</a>
    </div>


  </form>
  <script>
  	//등록버튼
  	$("#btn").click(function(){
  		$("#Form").submit();
  	});
  </script>

</body>

</html>