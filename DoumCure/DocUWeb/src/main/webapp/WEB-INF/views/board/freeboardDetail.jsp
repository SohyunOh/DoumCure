<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<section>
	<div class="BLQA-area">
		<div class="container board_list_container ">
			<div class="row content-wrap">
				<div class="qa_blr_title_box col-lg-12 ">
					<p>자유게시판 상세보기</p>
				</div>
			</div>
		</div>

		<form action="freeDetailForm" method="post" name="freeDetailForm"
			enctype="multipart/form-data">

			<div class="container">
				<div class="container-inner row">

					<div class="innertitle col-md-3 col-sm-12">NUM</div>
					<div class="inner-control col-md-7 col-sm-12 ">
						<input class="form-control" name="num" value="${vo.bbsNo}"
							readonly>
					</div>

					<div class="innertitle col-md-3 col-sm-12">NAME</div>
					<div class="inner-control col-md-7 col-sm-12 ">
						<input class="form-control" name="writer" value="${vo.bbsWrite}"
							readonly>
					</div>

					<div class="innertitle col-md-3 col-sm-12">TITLE</div>
					<div class="inner-control  col-md-7 col-sm-12 ">
						<input class="form-control Large input " name="title"
							value="${vo.bbsTitle}" readonly>
					</div>

					<div class="innertitle col-md-3 col-sm-12">COMMNET</div>
					<div class="inner-control  col-md-7 col-sm-12 ">
						<div class="reply-content">
							<div class="fileDiv"></div>

							<div class="reply-group" style="text-align: center;">
								<img class="img-thumbnail"
									src="display/${vo.fileLoca}/${vo.fileName}">
							</div>
							<br>
							<textarea class="form-control" rows="10" name="content"
								id="content" readonly>${vo.bbsContent }</textarea>
							<div class="content-down-l"></div>

							<div class="content-down-r">
								<button type="button" class="btn btn-warning" id="uploadBtn"
									onclick="location.href='freeboardModify?bbsNo=${vo.bbsNo}&writer=${vo.bbsWrite }'">변경하기</button>
								<button class="btn" type="button"
									onclick="location.href='freeboardList' ">목록</button>
							</div>
						</div>
					</div>

				</div>
			</div>
		</form>

	</div>
</section>

<script> 

		     
		  //자바 스크립트 파일 미리보기 기능
/* 		  function readURL(input) {
		    if (input.files && input.files[0]) {
		      var reader = new FileReader(); //비동기처리를 위한 파읽을 읽는 자바스크립트 객체
		      //readAsDataURL 메서드는 컨텐츠를 특정 Blob 이나 File에서 읽어 오는 역할 (MDN참조)
		      reader.readAsDataURL(input.files[0]);
		      //파일업로드시 화면에 숨겨져있는 클래스fileDiv를 보이게한다
		      $(".fileDiv").css("display", "block");
		      reader.onload = function (event) { //읽기 동작이 성공적으로 완료 되었을 때 실행되는 익명함수
		        $('#fileImg').attr("src", event.target.result);
		        console.log(event.target);//event.target은 이벤트로 선택된 요소를 의미
		      }
		    }
		  } 	  
		  
		  $("#file").change(function () {
		    readURL(this); //this는 #file자신 태그를 의미
		  });
 */
 
 $(document).ready(function () {
 var bbsOC = "${vo.bbsOC}"
 var write = "${vo.bbsWrite}";
 var id = "${sessionScope.userVO.userId}";

if(bbsOC == 'on'){
	if(id !==  write){
		window.location = history.go(-1);
	}
}

 if(id !== write ){
	 $("#uploadBtn").css("display", "none" );
	 
 	}
	    
 });

    </script>