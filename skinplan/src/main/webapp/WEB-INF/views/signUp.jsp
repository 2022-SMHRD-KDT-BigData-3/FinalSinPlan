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
    <title>Checkout example · Bootstrap v5.1</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/checkout/">



    <!-- Bootstrap core CSS -->
    <link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

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

</head>

<body class="bg-light">

    <div class="container">
        <main>
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="/docs/5.1/assets/brand/bootstrap-logo.svg" alt="" width="72"
                    height="57">
                <h2>Checkout form</h2>
                <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required
                    form group has a validation state that can be triggered by attempting to submit the form without
                    completing it.</p>
            </div>



            <div class="col-md-7 col-lg-8">
                <h4 class="mb-3">회원가입</h4>
                <form id="memberjoin" action="memberjoin" class="needs-validation" novalidate method="post">
                    <div class="row g-3">
                        <div class="col-12">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name ="email" placeholder="you@example.com">
                            <div class="invalid-feedback">
                               	이메일을 입력해주세요.
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="password" class="form-label">비밀번호</label>
                            <input type="text" class="form-control" id="password" name="password" placeholder="********" required>
                            <div class="invalid-feedback">
                               	 비밀번호를 입력해주세요.
                            </div>
                        </div>
                        
                        <div class="col-12">
                            <label for="nickname" class="form-label">Nickname</label>
                            <input type="text" class="form-control" id="nickname" name="user_name">
                            <div class="invalid-feedback">
                               	 닉네임을 입력해주세요.
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="phonenumber" class="form-label">Phone Number</label>
                            <input type="text" class="form-control" id="phonenumber" name="user_tel" placeholder="-빼고 입력해주세요">
                            <div class="invalid-feedback">
                                	핸드폰 번호를 입력해주세요.
                            </div>
                        </div>
                        
                        
                        <div class="col-12">
                            <label for="sex" class="form-label">성별</label>
                            <div class="my-3">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="sex" value="0" >
                                    <label class="form-check-label" for="flexRadioDefault1" name="flexRadioDefault">
                                     	 남성
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="gender" id="sex" value="1" checked>
                                    <label class="form-check-label" for="flexRadioDefault2" >
                                      	여성
                                    </label>
                                </div> 
                            </div>
                        </div>




                    </div>

            </div>

            

            <hr class="my-4">

          <input id="join_button" type="submit" class="btn btn-lg btn-secondary fw-bold border-white" value="회원가입"></input>

            </form>
    </div>
    </div>
    </main>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2017–2022 Company Name</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Support</a></li>
        </ul>
    </footer>
    </div>
    
    <script>
    	$(document).ready(function(){
    		//회원가입 버튼
    		$("#join_button").click(function(){
    			$(".memberjoin").attr("action","/member/login");
    			$(".memberjoin").submit();
    		});
    	});
    </script>



</body>

</html>