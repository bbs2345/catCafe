console.log("userService.js파일 불러옴.");

$(function() {

	// 회원삭제 버튼 클릭 이벤트
	$("#user_read_deleteuser").click(function(event) {
		event.preventDefault();

		let isDelete = confirm("정말 탈퇴하시겠습니까?");

		if (isDelete) {
			let usernameValue = $(this).attr("href");
			let input = $("<input>").attr("name", "username").val(usernameValue);

			// CSRF 토큰 추가
			let csrfToken = $("#csrf_value").val();
			let csrfParameterName = $("#csrf_value").attr("name");
			let csrfInput = $("<input>").attr("type", "hidden").attr("name", csrfParameterName).val(csrfToken);


			let form = $("<form>").attr("method", "post").attr("action", "/user/delete");
			form.appendTo("body");
			form.append(input).append(csrfInput).submit();
		}
	});
o
	

	let username = $("input[name='username']");
	let password = $("input[name='password']");
	let password2 = $("input[name='password2']");
	let name = $("input[name='name']");

	let checkId = false;
	let confirmPassword = false;

	function isOk() {
		if (username.val() == '') {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (password.val() == '') {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (password2.val() == '') {
			alert("비밀번호를 확인하세요.");
			return false;
		}

		if (!confirmPassword) {
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}

		if (name.val() == '') {
			alert("이름을 입력하세요.");
			return false;
		}

		if (!checkId) {
			alert("중복검사 하세요.");
			return false;
		}

		return true;
	}


	

});