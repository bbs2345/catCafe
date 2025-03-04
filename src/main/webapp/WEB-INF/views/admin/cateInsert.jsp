<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #cateScroll, #subCateScroll {
        position: absolute;
        display: none;
        border: 1px solid #ccc;
        background-color: #fff;
        max-height: 150px;
        overflow-y: auto;
        z-index: 1000;
        width: 200px; /* Adjust width as needed */
    }
    #cateScroll div, #subCateScroll div {
        padding: 8px;
        cursor: pointer;
    }
    #cateScroll div:hover, #subCateScroll div:hover {
        background-color: #f1f1f1;
    }
/* ------메뉴 창 CSS------ */
/* 파일 입력 텍스트 숨기기 */
    input[type="file"] {
        display: none;
    }
    .custom-file-upload {
        padding: 8px 16px;
        cursor: pointer;
        border-radius: 4px;
        border: 1px solid #ccc;
        display: inline-block;
    }
	.file-container {
        display: flex;
        align-items: center; /* 세로 중앙 정렬 */
        gap: 10px; /* 이미지와 버튼 사이 간격 */
    }

</style>
</head>
<body>

<form action="/catCafe/admin/subcateInsert" method="post">

카테고리이름 : <input name="cname" id="cnameInput"> 
<div id="cateScroll"></div>
<button type="button" id="cate_insert_btn">등록</button>

<div id="subform" style="display: none;">
하위카테고리이름 : <input name="scname" id="scnameInput">
<div id="subCateScroll"></div>
<button type="button" id="cate_subinsert_btn">등록</button>
</div>


</form>

<form action="/catCafe/admin/menuInsert" method="post" enctype="multipart/form-data">
    <div id="menuform" style="display: none;">
        <h3>제품 등록</h3>
        <div class="file-container">
            <div class="preview" style="width: 40px; height: 40px; border: 1px solid #ccc; margin-bottom: 10px;">
           		<img src="" width="40" height="40">
            </div>
            <div>
                <input type="file" name="myfile" id="fileInput" hidden="hidden">
                <label for="fileInput" class="custom-file-upload">파일 선택</label>
            </div>
        </div>
        <div>
            <input name="name" id="menuNameInput" placeholder="제품 이름 입력">
            <input name="price" id="menuPriceInput" placeholder="제품 가격 입력">
        </div>
        <div>
            <textarea name="text" id="menuTextInput" rows="4" cols="30" placeholder="제품 설명 입력"></textarea>
        </div>
	    <button type="button">등록완료</button>
    </div>
</form>

<script type="text/javascript">


	$("input[name='myfile']").change(function(){
		let reader = new FileReader();
		
		reader.readAsDataURL(event.target.files[0]);
		
		reader.onload = function(e) {
			if(e.target.result.startsWith("data:image")){
			$(".preview").find("img").attr("src", e.target.result);
			let input = $("input[name='myfile']").val();
			
			}else{
				alert("이미지 파일만 올리시오");
				let input = $("input[name='myfile']").val('');
				$(".preview").find("img").attr("src", "");
			}
		}
		
	});

	// 메뉴~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	//메뉴입력
	$("#menu_insert_btn").click(function(){
// 		let menuimgVal = $("input[name='myfile']").val();
		let menunameVal = $("input[name='name']").val();
		let menupriceVal = $("input[name='price']").val();
		let menutextVal = $("textarea[name='text']").val();
		console.log(menuimgVal);
		console.log(menunameVal);
		console.log(menupriceVal);
		console.log(menutextVal);
		
	    if (menunameVal == '') {
	        alert("메뉴 이름을 입력해주세요.");
	        return;
	    }
	    if (menupriceVal == '') {
	        alert("메뉴 가격을 입력해주세요.");
	        return;
	    }
	    $("#menuform").submit(); // 메뉴폼 제출
	    
	    
	    // 메뉴이름 중복확인
	    $.ajax({
	        url: "/catCafe/admin/menu/check",
	        type: "GET",
	        data: { name: menunameVal},
	        success: function(isCheck) {
	            if (isCheck) {
	                alert("이미 존재하는 메뉴입니다.");
	            } else {
	                $("#menuform").show();
	            }
	        }
	    });
		
	});	
	




	// 카테고리~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	// 카테고리 입력
	$("#cate_insert_btn").click(function() {
	    let cateVal = $("input[name='cname']").val();
	
	    if (cateVal == '') {
	        alert("카테고리 이름을 입력해주세요.");
	        return;
	    }
	    // 카테고리 중복확인
	    $.ajax({
	        url: "/catCafe/admin/cate/check",
	        type: "GET",
	        data: { cname: cateVal },
	        success: function(isCheck) {
	            if (isCheck) {
	                alert("이미 존재하는 카테고리입니다.");
	            } else {
	                $("#subform").show();
	            }
	        }
	    });
	});
	
	// 인풋 창 클릭 시 카테고리 목록 표시
	$("#cnameInput").on("focus click", function() {
	    $.ajax({
	        url: "/catCafe/admin/cate/names",
	        type: "GET",
	        success: function(data) {
	            let options = "";
	            data.forEach(function(name) {
	                options += "<div>" + name + "</div>";
	            });
	            $("#cateScroll").html(options).show();
	        }
	    });
	});
	
	// 인풋 창에 글씨를 쓰면 드롭다운 숨기기
	$("#cnameInput").on("input", function() {
	    $("#cateScroll").hide();
	});
	
	// 드롭다운에서 선택한 값을 인풋 창에 설정
	$("#cateScroll").on("click", "div", function() {
	    let selectCname = $(this).text();
	    $("#cnameInput").val(selectCname);
	    $("#cateScroll").hide();
	    
	    // 선택된 카테고리 이름을 바탕으로 하위 카테고리 목록을 가져오기
	    loadSubCateByCname(selectCname);
	    $("#cate_insert_btn").hide();
	    $("#subform").show();
	});
	
	// 인풋 창 외부 클릭 시 드롭다운 숨기기 ??
	$(document).click(function(event) {
	    if (!$(event.target).closest("#cnameInput, #cateScroll").length) {
	        $("#cateScroll").hide();
	    }
	});
	
	// 하위 카테고리~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	// 하위 카테고리 입력
	$("#cate_subinsert_btn").click(function() {
	    let subCateVal = $("input[name='scname']").val();
	    let cateVal = $("#cnameInput").val();

	    console.log(cateVal);
	    console.log(subCateVal); 
	    
	    if (subCateVal == '') {
	        alert("하위 카테고리 이름을 입력해주세요.");
	        return;
	    }
	    // 서브카테고리 중복확인
	    $.ajax({
	        url: "/catCafe/admin/subcate/check",
	        type: "GET",
	        data: { cname: cateVal, scname: subCateVal },
	        success: function(isDuplicate) {
	        	 console.log(isCheck);
	            if (isCheck) {
	                alert("이미 존재하는 하위 카테고리입니다.");
	            } else {
	                $("body form").submit();
	            }
	        }
	    });
	});
	
	// 하위 카테고리 인풋 창 클릭 시 해당 카테고리에 맞는 하위 카테고리 목록 표시
	$("#scnameInput").on("focus click", function() {
	    let cateVal = $("#cnameInput").val();
	    if (cateVal) {
	    	loadSubCateByCname(cateVal);
	    }
	});

	// 하위 카테고리 목록을 가져오는 함수
	function loadSubCateByCname(cateName) {
	    $.ajax({
	        url: "/catCafe/admin/subcate/names", // URL이 동일
	        type: "GET",
	        data: { cname: cateName },  // 'cname'을 파라미터로 보내기
	        success: function(data) {
	            let options = "";
	            data.forEach(function(name) {
	                options += "<div>" + name + "</div>";
	            });
	            $("#subCateScroll").html(options).show();
	        }
	    });
	}
	
	// 하위 카테고리 인풋 창에 글씨를 쓰면 드롭다운 숨기기
	$("#scnameInput").on("input", function() {
	    $("#subCateScroll").hide();
	});
	
	// 드롭다운에서 선택한 값을 하위 카테고리 인풋 창에 설정
	$("#subCateScroll").on("click", "div", function() {
	    let selectCsname = $(this).text();
	    $("#scnameInput").val(selectCsname);
	    $("#subCateScroll").hide();
	    $("#cate_subinsert_btn").hide();
	    $("#menuform").show();
	});
	
	// 하위 카테고리 인풋 창 외부 클릭 시 드롭다운 숨기기??
	$(document).click(function(event) {
	    if (!$(event.target).closest("#scnameInput, #subCateScroll").length) {
	        $("#subCateScroll").hide();
	    }
	});
	
	// 메뉴 일력

</script>

</body>
</html>
