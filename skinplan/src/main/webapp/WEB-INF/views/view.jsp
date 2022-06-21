<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
/* 이벤트 함수 정의 */
function requestGet(){
  var urlData = "http://localhost:8081/selectImage";
  var contentData = "idx=1";
  console.log("");
  console.log("[requestGet] : [start]");
  console.log("[request url] : " + urlData);
  console.log("[request data] : " + contentData);
  console.log("[request format] : " + urlData+"?"+contentData);
  console.log("[request method] : " + "GET");
  console.log("");

  $.ajax({
    /* 요청 시작 부분 */
    url: urlData, //주소
    data: { //전송 데이터
      "idx" : 1
    },
    type: "post", //전송 타입
    async: true, //비동기 여부
    dataType: "TEXT", //응답받을 데이터 타입 (XML,JSON,TEXT,HTML)

    /* 응답 확인 부분 */
    success: function(response) {
      console.log("");
      console.log("[requestGet] : [result]");
      console.log("[response] : " + response);
      console.log("");

      // 정상적으로 리턴된 data url 있는 경우 src 에 표시 실시
      if(response.length > 0 && response != null){
        document.getElementById("preview-image").src = response;
      }
    },

    /* 에러 확인 부분 */
    error: function(xhr) {
      console.log("");
      console.log("[requestGet] : [result]");
      console.log("[error] : " + xhr);
      console.log("");
    },

    /* 완료 확인 부분 */
    complete:function(data,textStatus) {
      console.log("");
      console.log("[requestGet] : [result]");
      console.log("[complete] : " + textStatus);
      console.log("");
    }
  });
};
</script>
</body>
</html>