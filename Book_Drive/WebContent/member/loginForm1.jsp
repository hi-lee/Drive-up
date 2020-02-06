<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- CSS -->
<link rel="stylesheet" href="bdstyle/style/ko/home/login.css">
<link rel="stylesheet" href="bdstyle/style/ko/home/message.css">
<div id="divContentsW">
		<div id="divContents">
		<script type="text/javascript" src="bdstyle/js/common/cookie.js" charset="utf-8"></script>
<div id="divSearch">
	<form name="searchForm" action="https://cham.kiu.ac.kr/search/tot/result" method="get">
	<input type="hidden" name="st" value="KWRD">
	<input type="hidden" name="si" value="TOTAL">
	<input type="hidden" name="websysdiv" id="websysdiv" value="tot">
		<fieldset>
			<legend>검색</legend>
			<input type="text" name="q" title="검색어를 입력하세요" class="searchInput" placeholder="검색어를 입력하세요">
			<input type="image" src="bdstyle/image/ko/local/topSearchBtn.jpg" alt="검색" class="searchBtn" title="검색">
		</fieldset>
	</form>
</div>
<h2 id="divTitle">로그인</h2>

<div id="divLocation">
	<ul>
		<li><a href="https://cham.kiu.ac.kr/" title="HOME"><img src="bdstyle/image/ko/local/home.png" alt="HOME"></a></li>
		<li>로그인</li>
	</ul>
</div>
<div class="loginW">
			<form id="login" name="login" action="login.log" method="post">
			<fieldset>
			<br>
			<legend>로그인</legend>		
			<br>	
			<div class="loginContent">
				<div class="intro">
					<img src="bdstyle/image/ko/local/loginIco.png" alt="MEMBER LOGIN">
					<p class="welcome"><strong>통합  <span>도서관</span>에</strong> 오신것을 환영합니다.</p>
					<p>로그인을 하시면 더 많은 도서관 서비스를  이용하실 수 있습니다.</p>
				</div>
				<dl>
					<dt><label for="id">아이디</label></dt>
					<dd>
						<input id="id" name="id" class="inputTextType1" title="아이디입력" type="text" value="" size="20" maxlength="15" alt="아이디입력">
					</dd>
				</dl>
				<dl>
					<dt><label for="password">비밀번호</label></dt>
					<dd>
						<input id="password" name="password" class="inputTextType1" title="비밀번호 입력" type="password" value="" size="20" maxlength="20" alt="비밀번호 입력">
					</dd>
				</dl>
				<p class="loginBtn"><input type="submit" value="로그인"></p>
				
				
				
				
				
			</div>
		</fieldset>
		</form>
		<div class="notice">
			<ul id="etcMsg">
				<li>비밀번호 분실시 <a href="https://woongbi.kiu.ac.kr/etc/change_passwd.htm" title="새창" target="_blank"><span>관리자 </span></a>에게 문의해 주시기 바랍니다.</li><li><p>도서회원은 학술정보원 대출실로 문의해 주시기 바랍니다.</p><p>연락처: 053-000-0000</p></li>
				<!-- <li>
					 <p>
						<a class="btnType2" href="/account/inquiryId" title="아이디 찾기">아이디 찾기</a>
						<a class="btnType2" href="/account/inquiryPwInfo" title="비밀번호 찾기">비밀번호 찾기</a>
					</p> 
				</li> -->
			</ul>
		</div>
</div>
<script type="text/javascript">
	jQuery(document).ready(function(){
	
	jQuery('#id').focus();
	
});
</script><div id="divQuick">
	<div class="quickMenu">
		<h2>QUICK MENU</h2>
		<ul>
			<li class="quick1"><a href="https://cham.kiu.ac.kr/myloan/list" title="대출연장">대출연장</a></li>
			<li class="quick2"><a href="https://cham.kiu.ac.kr/myreserve/list" title="예약조회">예약조회</a></li>
			<li class="quick3"><a href="https://cham.kiu.ac.kr/purchaserequest/write" title="희망도서">희망도서</a></li>
			<li class="quick4"><a href="https://cham.kiu.ac.kr/local/html/dds" title="원문복사">원문복사</a></li>
		</ul>
	</div>
	<div class="myMenu">
		<h2>My Menu</h2>
		<ul>
			</ul>
		<a href="https://cham.kiu.ac.kr/mymenu/insert/?retUrl=/login" class="addMenu" onclick="return confirm(&#39;메뉴추가 하시겠습니까?&#39;);" title="마이메뉴 추가"><img src="bdstyle/image/ko/local/addMenu.png" alt="마이메뉴 추가"></a>
	</div>
	<p class="top"><a href="https://cham.kiu.ac.kr/login#">TOP</a></p>
</div></div>
    </div>
