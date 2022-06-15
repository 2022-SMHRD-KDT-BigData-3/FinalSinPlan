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
            height: 5rem;           
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
    
    <!-- 화장품 정보 -->
    <div>
        <div class="mx-3 mt-3">
            <img src="https://image.oliveyoung.co.kr/uploads/images/goods/550/10/0000/0014/A00000014840803ko.jpg?l=ko"
                class="img-fluid img-thumbnail" alt="...">
        </div>
        <div class="container table table-bordered">
            <div class="row pt-3">
                <div class="col text-center">
                    <h3 class="jua">아비브 아크네 폼 클렌저 어성초 폼</h3>
                </div>
            </div>
            <dl class="row mb-0 align-items-center ">
                <dt class="col-3 text-center">
                    회사명
                </dt>
                <div class="col-1 vr px-0"></div>
                <dd class="col-8">
                    코스맥스/(주)포컴퍼니
                </dd>
            </dl>
            <dl class="row mb-0 align-items-center">
                <dt class="col-3 text-center">
                    성분
                </dt>
                <div class="col-1 vr px-0"></div>
                <dd class="col-8">
                    정제수, 소듐코코일이세티오네이트, 글리세린, 약모밀추출물(30,000ppm), 코코-베타인, 소듐메틸코코일타우레이트, 부틸렌글라이콜, 파스향나무잎추출물, 병풀추출물, 글리세릴스테아레이트에스이, 포타슘코코일글리시네이트, 살리실릭애씨드, 소듐클로라이드, 카프릴릴글라이콜, 폴리퀴터늄-67, 트로메타민, 판테놀, 1,2-헥산다이올, 에틸헥실글리세린, 다이소듐이디티에이
                </dd>
            </dl>
            <div class="row">
                <div class="col-4 text-center">
                    <h2>평점</h2>
                </div>
                <div class="col-8 text-center">
                    <h2><span style="color: #EB4646;">4.0</span>/5.0</h2>
                </div>
            </div>
            <form name="reviewform" class="reviewform" method="post" action="#">
                <div class="row">
                    <div class="col">
                        <div class="review_contents mt-3">
                            <textarea rows="10" class="review_textarea"></textarea>
                        </div>
                    </div>        
                </div>
                <div class="row ">
                    <div class="col-7 d-flex justify-content-end">
                       <div>
                            <select class="form-select-sm" aria-label="reviewScore">
                                <option value="1">1점</option>
                                <option value="2">2점</option>
                                <option value="3">3점</option>
                                <option value="4">4점</option>
                                <option value="5">5점</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-5 text-center">
                        <div class="cmd">
                            <input type="button" name="save" id="save" class="btn-sm btn-primary" value="등록">
                            <input type="button" name="save" id="save" class="btn-sm btn-primary" value="돌아가기">
                        </div>
                    </div>
                </div>
            </form>
            <div class="row"></div>
        </div>
        <!-- 사용자들 리뷰 반복문  -->
        <div class="container card my-1">
            <div class="row mx-3">
                <div class="col-5">스인개</div>
                <div class="col-1 vr px-0"></div>
                <div class="col-6">3점</div>
            </div>
            <div class="row">
                <div class="col card mx-3">
                    정말 좋아요!
                </div>
            </div>
        </div>
        <div class="container card my-1">
            <div class="row mx-3">
                <div class="col-5">빅데이터</div>
                <div class="col-1 vr px-0"></div>
                <div class="col-6">4점</div>
            </div>
            <div class="row">
                <div class="col card mx-3">
                    정말 만족스러워요!
                </div>
            </div>
        </div>
    </div>



</body>
<script>

</script>

</html>