<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- menu_top START -->
<div id="divHeader">
	<div id="divGlobalMenu">
		<div>
			<ul>
				<li class="login">
					<!-- 세션에 로그인된 아이디가 있으면 로그아웃, 없으면 로그인 --> <c:choose>
						<c:when test="${userID == null }">
							<a href="loginForm.log" title="로그인">로그인</a>
						</c:when>
						<c:otherwise> ${userID } 님
				</li>
				<li><a href="logout.log" title="로그아웃">로그아웃 </a> </c:otherwise> </c:choose></li>

				<li><a href="joinForm.mem" title="회원가입 ">회원가입</a></li>
				<li><a href="https://cham.kiu.ac.kr/" title="Home">Home</a></li>
				<li><a href="https://cham.kiu.ac.kr/main/sitemap"
					title="Sitemap">Sitemap</a></li>
			</ul>
		</div>
	</div>
	<!-- //Global Menu -->
	<!-- header -->
	<div class="header">
		<h1 class="logo">
			<a href="template_main.jsp" title="Book-Drive">&nbsp;Book-Drive</a>
		</h1>
		<div id="divTopMenu">
			<h2 class="skip">주메뉴</h2>
			<ul>
				<li class=""><a href="javascript:return false;" title="소장자료검색">소장자료검색</a>
					<div>
						<ul>
							<li><a href="bookSearch.bk" title="전체 ">전체 </a></li>
						</ul>
					</div></li>

				<li class=""><a href="javascript:return false;" title="게시판">게시판</a>
					<div>
						<ul>
							<li><a href="freeBoard.bo" title="자유게시판">자유게시판</a></li>
							<li><a href="#" title="공지사항">공지사항</a></li>
							<li><a href="#" title="도서무인반납함">도서무인반납함</a></li>
							<li class="last"><a href="#" title="도서이용신청">도서이용신청</a></li>
						</ul>
					</div></li>
				<li><a href="javascript:return false;" title="도서관안내">도서관안내</a>
					<div>
						<ul>
							<li><a href="#" title="도서관 소개">도서관 소개</a></li>
							<li><a href="#" title="이용안내">이용안내</a></li>
							<li><a href="#" title="대출도서 연장/예약">대출도서 연장/예약</a></li>
							<li><a href="#" title="도서관서비스">도서관서비스</a></li>
							<li class="last"><a href="#" title="이용시 유의사항">이용시 유의사항</a></li>
						</ul>
					</div></li>

				<li class=""><a href="javascript:return false;" title="개인서비스">개인서비스</a>
					<div>
						<ul>
							<li><a href="myRentalList.mem?id=${sessionScope.userID }&index=${sessionScope.userIndex }"
								title="대출내역 ">대출/예약내역</a></li>
							<li><a href="bookCartList.bk?index=${sessionScope.userIndex }&page=${param.page }&search=${param.search}&value=${param.value}" title="도서보관함 ">도서 보관함</a></li>
							<li><a href="#" title="내문의사항">내문의사항</a></li>
							<li class="last"><a href="memInfo.mem?id=${sessionScope.userID }" title="개인정보 관리">개인정보 관리</a></li>
						</ul>
					</div></li>
			</ul>
		</div>
		<a href="https://cham.kiu.ac.kr/#" class="wholeMenuOpen" title="전체메뉴"><img
			src="bdstyle/image/ko/local/wholeMenuOpen.png" alt="전체메뉴"></a>
		<!-- //Top Menu -->
		<!-- Whole Menu -->
		<div class="wholeMenu">
			<h2 class="skip">전체메뉴보기</h2>
			<ul>
				<li><h3>
						<a href="javascript:return false;" title="소장자료검색">소장자료검색</a>
					</h3>
					<ul>
						<li><a href="https://cham.kiu.ac.kr/local/html/researchDB"
							title="전체">전체</a></li></ul></li>
				<li><h3>
						<a href="javascript:return false;" title="개인서비스">개인서비스</a>
					</h3>
					<ul>
						<li><a href="myRentalList.mem?id=${sessionScope.userID }&index=${sessionScope.userIndex }"
							title="대출/예약내역">대출/예약내역</a></li>
						<li><a href="https://cham.kiu.ac.kr/myloan/list"
							title="대출/예약/연장">대출/예약/연장</a></li>
						<li><a href="https://cham.kiu.ac.kr/purchaserequest/write"
							title="희망도서">희망도서</a></li>
						<li><a href="https://cham.kiu.ac.kr/myprofile/profile"
							title="개인정보 관리">개인정보 관리</a></li>
						
					</ul></li>
				<li><h3>
						<a href="javascript:return false;" title="게시판">게시판</a>
					</h3>
					<ul>
						<li><a href="https://cham.kiu.ac.kr/bbs/list/2" title="자유게시판">자유게시판</a>
						</li>
						<li><a href="https://cham.kiu.ac.kr/bbs/list/1" title="공지사항">공지사항</a>
						</li>
						<li><a href="https://cham.kiu.ac.kr/main/returnList"
							title="도서무인반납함">도서무인반납함</a></li>
						<li><a href="https://cham.kiu.ac.kr/bbs/list/3"
							title="도서이용신청">도서이용신청</a></li>
					</ul></li>
				<li class="last"><h3>
						<a href="javascript:return false;" title="도서관안내">도서관안내</a>
					</h3>
					<ul>
						<li><a href="https://cham.kiu.ac.kr/local/html/introduce"
							title="도서관 소개">도서관 소개</a></li>
						<li><a href="https://cham.kiu.ac.kr/local/html/libraryHour"
							title="이용안내">이용안내</a></li>
						<li><a href="https://cham.kiu.ac.kr/local/html/renew"
							title="대출도서 연장/예약">대출도서 연장/예약</a></li>
						<li><a
							href="https://cham.kiu.ac.kr/local/html/purchaserequest"
							title="도서관서비스">도서관서비스</a></li>
						<li><a href="https://cham.kiu.ac.kr/local/html/dds"
							title="원문복사서비스">원문복사서비스</a></li>
						<li><a href="https://cham.kiu.ac.kr/local/html/note"
							title="이용시 유의사항">이용시 유의사항</a></li>
					</ul></li>
			</ul>
			<a href="https://cham.kiu.ac.kr/#" class="wholeMenuClose"
				title="전체메뉴 닫기"><img
				src="bdstyle/image/ko/local/wholeMenuClose.gif" alt="전체메뉴 닫기"></a>
		</div>
	</div>
</div>
<!-- menu_top END -->