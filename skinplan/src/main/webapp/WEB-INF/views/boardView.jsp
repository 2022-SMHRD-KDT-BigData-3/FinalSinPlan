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

</head>

<body>
    <!-- 상단 네비바 -->
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
                            <a class="nav-link active" aria-current="page" href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">내 정보 변경</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">로그아웃</a>
                        </li>
                    </ul>
                    <form>
                        <input class="form-control" type="text" placeholder="Search" aria-label="Search">
                    </form>
                </div>
            </div>
        </nav>
    </div>
    <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/img/88310993_3135935986424775_7149992294291079168_n.png" class="d-block w-100" height=300px
                    alt="...">
            </div>
            <div class="carousel-item">
                <img src="/img/flowers-7188503_1920.jpg" class="d-block w-100" height=300px alt="...">
            </div>
            <div class="carousel-item">
                <img src="img/phone-wallpaper-g43fb981c2_1920.jpg" class="d-block w-100" height=300px alt="...">
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
    <header>
        <div class="container marketing">
            <div class="row mt-4 mx-auto">
                <div class="col">
                    <figure>
                        <blockquote class="blockquote">
                            <h3>사용자 닉네임</h3>         
                        </blockquote>
                        <figcaption class="blockquote-footer">
                            피부 타입 : OOO
                        </figcaption>
                    </figure>
                </div>
                <div class="col">
                    <p><a class="btn btn-secondary" href="#">구독하기</a></p>
                </div>
            </div>
        </div>
    </header>
    <form>
        <div class="row mb-3">
            <label for="title" class="col-sm-2 col-form-label mx-1">제목</label>
            <div class="col-sm-10">
                <input type="text" class="form-control-plaintext mx-4" id="title" value="나만의 피부관리 꿀팁" disabled>
            </div>
        </div>

        <div class="form-floating">
            <textarea class="form-control" placeholder="Leave a comment here" id="content" style="height: 350px"
                disabled>사용자가 쓴글</textarea>
            <label for="content">Content</label>
        </div>

        <div class="d-flex justify-content-end mx-4 mt-4">
            <a href="#" class="btn btn-primary mx-1 ">수정하기</a>
            <a href="#" class="btn btn-primary ">돌아가기</a>
        </div>


    </form>

</body>

</html>