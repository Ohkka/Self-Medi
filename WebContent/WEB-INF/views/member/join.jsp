<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="/WEB-INF/views/layout/header.jsp" />

<script type="text/javascript">
	$(document).ready(function() {
		//페이지 첫 접속 시 입력창으로 포커스 이동
		$("input").eq(0).focus();

		//닉네임 입력 창에서 엔터 입력 시 form submit
		$("input").eq(2).keydown(function(key) {
			if (key.keyCode == 13) {
				$(this).parents("form").submit();
			}
		})

		//로그인 버튼 클릭 시 form submit
		$("#btnJoin").click(function() {
			$(this).parents("form").submit();
		})

	});
	//아이디 중복 처리
	$('.username_input').change(function() {
		$('#id_check_sucess').hide();
		$('.id_overlap_button').show();
		$('.username_input').attr("check_result", "fail");
	})
</script>

<style type="text/css">
form {
	width: 400px;
	margin: 0 auto;
}

.icon {
	color: red;
}

</style>

<div>

	<h2 class="text-center">회원가입</h2>
	<h6 class="text-right"><span class="icon">* </span>필수입력사항</h6>
	<hr>

	<form action="/member/join" method="post" >

		<div>
			<label for="userId" >아이디
				<span class="icon">*</span>
			</label>
			<div class="col-sm-8">
				<input type="text" id="userId" name="userId" class="form-control" />
			</div>
		</div>

		<div class="form-group">
			<label for="userPw" class="col-sm-4 control-label">비밀번호
				<span class="icon">*</span>
			</label>
			<div class="col-sm-8">
				<input type="text" id="userPw" name="userPw" class="form-control" />
			</div>
		</div>
<!-- 		<div class="form-group"> -->
<!-- 			<label for="userPw" class="col-sm-4 control-label">비밀번호확인 -->
<!-- 				<span class="icon">*</span> -->
<!-- 			</label> -->
<!-- 			<div class="col-sm-8"> -->
<!-- 				<input type="text" id="userPw" name="userPw" class="form-control" /> -->
<!-- 			</div> -->
<!-- 		</div> -->

		<div class="form-group">
			<label for="userName" class="col-sm-4 control-label">이름
				<span class="icon">*</span>
			</label>
			<div class="col-sm-8">
				<input type="text" id="userName" name="userName"
					class="form-control" />
			</div>
		</div>

		<div class="form-group">
			<label for="userNick" class="col-sm-4 control-label">닉네임
				<span class="icon">*</span>
			</label>
			<div class="col-sm-8">
				<input type="text" id="userNick" name="userNick"
					class="form-control" />
			</div>
		</div>

		<div class="form-group">
			<label for="userEm" class="col-sm-4 control-label">이메일
				<span class="icon">*</span>
			</label>
			<div class="col-sm-8">
				<input type="text" id="userEm" name="userEm" class="form-control" />
			</div>
		</div>

		<div class="form-group">
			<label for="userPh" class="col-sm-4 control-label">휴대폰
				<span class="icon">*</span>
			</label>
			<div class="col-sm-8">
				<input type="text" id="userPh" name="userPh" class="form-control" />
			</div>
		</div>

		<div class="form-group">
			<label for=userGen class="col-sm-4 control-label">성별</label>
			<div class="col-sm-8">
				<label class="radio-inline">
					<input type="radio" name="userGen" id="userGen" value="M"> 남성</label> 
				<label class="radio-inline">
					<input type="radio" name="userGen" id="userGen" value="F"> 여성</label>
			</div>
		</div>

		<div class="form-group">
			<label for="userBirth" class="col-sm-4 control-label">생년월일</label>
			<div class="col-sm-8">
				<input type="text" id="userBirth" name="userBirth" class="form-control" />
			</div>
		</div>

		<div class="text-center">
			<label for="join_btn" class="col-sm-4 control-label"></label>
			<div class="col-sm-8">
				<button type="button" id="btnJoin"
					class="btn btn-primary btn-lg btn-block">가입하기</button>
			</div>
		</div>
		
	</form>

	<!-- .container -->
</div>

<c:import url="/WEB-INF/views/layout/footer.jsp" />