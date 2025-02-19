<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="contextPath" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>히원상세보기</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Main CSS File -->
<link href="${contextPath}/assets/css/main.css" rel="stylesheet">
<link href="${contextPath}/assets/css/user.css" rel="stylesheet">
</head>
<body>
	<%@ include file="../part/page_tool.jsp"%>

	<!--Section -->
	<div class="userRead-overlay">
		<div class="userRead">
			<div>
				<h3>회원정보 상세보기</h3>
			</div>

			<div class="userRead-info">
				<div class="userRead-info-item mb-1 row">
					<label for="username" class="col-sm-2 col-form-label">아이디</label>
					<div class="col-sm-10">
						<input type="text" name="username" readonly class="form-control-plaintext"
							id="username" value="${userResponse.username}"
							data-org-val="${userResponse.username}">

					</div>
				</div>
				<div class="useUpdateForm">
					<div class="userRead-info-item mb-1 row">
						<label for="name" class="col-sm-2 col-form-label">이름</label>
						<div class="col-sm-10">
							<input type="text" readonly class="form-control-plaintext"
								id="name" value="${userResponse.name}"
								data-org-val="${userResponse.name}">
						</div>
					</div>
					<div class="userRead-info-item mb-1 row">
						<label for="email" class="col-sm-2 col-form-label">이메일</label>
						<div class="col-sm-10">
							<input type="text" readonly class="form-control-plaintext"
								id="email" value="${userResponse.email}"
								data-org-val="${userResponse.email}">
						</div>
					</div>
					<div class="userRead-info-item mb-1 row">
						<label for="phone" class="col-sm-2 col-form-label">전화번호</label>
						<div class="col-sm-10">
							<input type="text" readonly class="form-control-plaintext"
								id="phone" value="${userResponse.phone}"
								data-org-val="${userResponse.phone}">
						</div>
					</div>
				</div>
				<div class="userRead-info-item mb-1 row">
					<label for="role" class="col-sm-2 col-form-label">등급</label>
					<div class="col-sm-10">
						<input type="text" readonly class="form-control-plaintext"
							id="role" value="${userResponse.role}"
							data-org-val="${userResponse.role}">
					</div>
				</div>
			</div>
			<div class="userReadBtn">
				<c:if test="${userResponse.role == 'ROLE_ADMIN'}">
					<a href="${contextPath}/admin/list">목록</a>
				</c:if>
				<form id="userDelete" method="post"action="${contextPath}/user/delete">
					<div class="updateBefor_btn">
						<a href="#" id="userUpdate_btn">회원정보 수정</a> 
						<a href="#" id="userDelete_btn">회원탈퇴</a>
					</div>
					<div class="updateAfter_btn" style="display: none;">
						<a class="UpdateSuccess" href="#">수정완료</a> 
						<a class="UpdateCancel" href="#">취소</a>
					</div>
					<input hidden="hidden" value="${userResponse.username}"
						name="username">
				</form>
			</div>
		</div>
	</div>
	<!-- Section -->
<script type="text/javascript">
	//회원정보 삭제이벤트
    $("#userDelete_btn").click(function(event) {
        event.preventDefault(); // 기본 이벤트 제거
        
        let isOk = confirm("정말로 삭제하시겠습니까?");
        if (isOk) {
            $("#userDelete").submit(); // 폼 제출
        }
    });

    //회원정보수정 클릭이벤트
    $("#userUpdate_btn").click(function(event){
    	event.preventDefault();
    	$(".updateBefor_btn").hide();
    	$(".updateAfter_btn").show();
		$(".useUpdateForm").find(".form-control-plaintext").attr("class", "form-control").removeAttr("readonly");	
    });
    
    //회원정보수정 취소기능
    $(".UpdateCancel").click(function(){
    	event.preventDefault();
    	$(".updateBefor_btn").show();
    	$(".updateAfter_btn").hide();
    	$(".useUpdateForm").find(".form-control").attr("class", "form-control-plaintext").attr("readonly");
    	$(".useUpdateForm").find("input").each(function(){
//     		let orgVal = $(this).attr("data-org-val");
//     		$(this).val(orgVal);
  		$(this).val($(this).attr("data-org-val"));
    	});
    });
    
    //회원정보수정 완료기능
    $(".UpdateSuccess").click(function(){
    	let map = {
    		username : $(".userRead-info").find("input[id='username']").val(),
    		name : $(".userRead-info").find("input[id='name']").val(),
    		email : $(".userRead-info").find("input[id='email']").val(),
    		phone : $(".userRead-info").find("input[id='phone']").val()
    	};
    	
    	$.ajax({
    		url: "${contextPath}/user/update",
    		datatype: "text",
    		type: "post",
    		data : map,
    		success:function(result){
    			
    		}
    	});
    });
    
</script>

</body>
</html>