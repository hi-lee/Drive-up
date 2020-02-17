<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript"
	src="./상세정보 _ 경일대학교 도서관_files/cookie.js.다운로드" charset="utf-8"></script>

<link rel="stylesheet" type="text/css"
	href="bdstyle/style/ko/home/detail.css">
<div id="divContentsW">
	<div id="divContents">


		<h2 id="divTitle">상세정보</h2>

		<div id="divLocation">
			<ul>
				<li><a href="https://cham.kiu.ac.kr/" title="HOME"><img
						src="bdstyle/image/ko/local/home.png" alt="HOME"></a></li>
				<li>상세정보</li>
			</ul>
		</div>
		<!-- Google 미리보기 페이지 연결 -->

		<!-- sns share기능 사용여부  -->

		<!--바구니넣기,바구니보기 버튼 사용여부 -->

		<!-- sfxOpenUrl 링킹서비스 옵션 -->

		<!-- R2CAT 연동 사용여부 -->

		<!-- 검색 연간물 제본정보에 추가비고란(홍대 ct_accession ser_remark:결호내용) -->

		<!-- 네이버정보 보기 -->

		<!-- 내보내기 (submit변수로 사용됨) -->
		<!-- MARC -->
		<!-- 상세보기-->

		<div id="divContent">
			<!-- //검색상세 -->
			<div class="searchDetail">
				<div class="searchLink">
					<a class="returnResult"
						href="bookSearchPro.bk?page=${param.page }&search=${param.search}&value=${param.value}"
						title="검색결과 돌아가기"> 
						<img src="bdstyle/image/ko/local/bookimages/profileArrow.png">
						<span>검색결과 돌아가기</span></a>

					<form name="frmMylist"
						action="https://cham.kiu.ac.kr/mylist/pop/writeitem" method="post">
						<input type="hidden" name="data" value="CAT000000155481">
					</form>

					<ul class="searchLinkBtn">
						<li class="basketSelect">
						<a href="#">바구니넣기</a></li>
					</ul>
				</div>
				<!-- //서지정보 -->
				<div class="profile">
					<div class="profileHeader">
						<h3>${book.bookName }</h3>
						<p>${book.bookWriter }저</p>
					</div>
					<div class="profileContent">

						<div class="briefInfo">
							<dl>
								<dt>책이미지</dt>
								<dd class="bookImg">
									<img id="coverimage"
										src="./상세정보 _ 경일대학교 도서관_files/00005186.jpg" width="120"
										height="153" alt="표지이미지" style="">
								</dd>

								<dt>서평쓰기</dt>
								<dd class="addWriteBtn">
									<a
										href="#"
										id="#commentWrite">서평쓰기</a>
								</dd>

								<dd class="bookInfoBtn"></dd>

								<dd class="bookInfoBtn2"></dd>
							</dl>
							<span class="bookBg"></span>
						</div>

						<div class="table">
							<div id="divProfile">
								<table class="profiletable">
									<caption class="dpn">상세정보</caption>
									<tbody>
										<tr>
											<th scope="row">자료유형</th>
											<td>도서</td>
										</tr>
										<tr>
											<th scope="row">서명/저자사항</th>
											<td>${book.bookName }/${book.bookWriter } 저; 옮긴이 옮김.</td>
										</tr>

										<tr>
											<th scope="row">발행사항</th>
											<td>${book.bookPub },${book.bookPubDate }.</td>
										</tr>

										<%-- <tr>
											<th scope="row">원서명</th>
											<td><a title="이 키워드로 더 검색하기"
												href="#">Demian</a><br></td>
										</tr>  --%>
										<tr>
											<th scope="row">ISBN</th>
											<td>${book.ISBN }<br></td>
										</tr>
										<tr>
											<th scope="row">분류기호</th>
											<td>853 <br></td>
										</tr>
									</tbody></table></div></div></div></div>

				<!-- //소장정보 -->

				<script type="text/javascript">
					var reserveUseYn = "Y";
					var isUseCampusLoan = "false";
					var isUseMissrepo = "false";
					var isUseDelivery = "true";
					var isUsePosPrint = "true";
					var isUseLoanreq = "false";
					var isSendSms = "false";
					var isUseAppNonbook = "false";

					var MSG_SERVICE_INFO = "서비스 이용안내";
					var MSG_MYPRESERVE = "보존서고도서 신청";
					var MSG_BRANCH_LOAN = "분관대출";
					var MSG_MISSREPO = "서가에없는책신고";
					var MSG_LOANREQ = "야간대출";
					var MSG_DELIVERY = "택배배달신청";
					var MSG_PRINT = "인쇄";
					var MSG_SMS_SEND = "SMS발송";
					var MSG_NON_BOOK = "메세지가 없습니다";
				</script>

				<div class="searchInfo">
					<div class="searchHeader">
						<h3 class="open">소장정보</h3>
					</div>
					<div class="searchContents">
						<div class="listTable">
							<table class="searchTable default">

								<caption>메세지가 없습니다</caption>
								<thead>
									<tr><th scope="row" data-class="expand"
											class="footable-first-column">No.</th>

										<th scope="row" data-hide="phone">등록번호</th>
										<th scope="row" data-hide="phone">ISBN</th>
										<th scope="row" data-hide="expand">소장처</th>
										<th scope="row" data-hide="expand">도서상태</th>
										<th scope="row" data-hide="expand">대출</th>
										<th scope="row" data-hide="phone">반납예정일</th>
										<th scope="row">예약</th>
									</tr>
								</thead><tbody>
									<tr class="first">
										<td class="num expand footable-first-column">1</td>
										<td class="accessionNo">${book.bookNum }</td>
										<td class="ISBN">${book.ISBN }</td>
										<td class="location"><c:choose>
												<c:when test="${book.libCode == 'LIB001' }">대구광역시립 중앙도서관</c:when>
												<c:when test="${book.libCode == 'LIB002' }">대구광역시립 남부도서관</c:when>
												<c:otherwise>대구광역시립 수성도서관</c:otherwise>
											</c:choose></td>
										<td><span class="status available"> <!-- 0대출가능 1대출중 2예약가능 3예약중 4예약불가   -->
												<c:choose>
													<c:when test="${book.bookState == '0' }">대출가능</c:when>
													<c:when test="${book.bookState == '1' }">대출중</c:when>
													<c:when test="${book.bookState == '2' }">예약중 </c:when>
													<c:otherwise>
													</c:otherwise>
												</c:choose>
										</span></td>
										<td><span class="status available"> <c:choose>
													<c:when test="${book.bookState == '0' }">
														<a href="bookRental.bk?page=${param.page }&search=${param.search}&value=${param.value}&id=${sessionScope.userID }&index=${sessionScope.userIndex}&bookNum=${book.bookNum}&libCode=${book.libCode}&state=${book.bookState}">
															대출하기</a>
													</c:when>
										<%--			<c:when test="${rentalIdv.memIndex eq 'sessionScope.index' }"> </c:when> --%>
														<c:when test="${book.bookState == '1' || book.bookState == '2'}">대출불가 </c:when>
												</c:choose>
										</span></td>
										<td class="returnDate">
											<c:if test="${book.bookState == '1' }">${rentalIdv.renBrwInvDate } </c:if>
										</td>
										<td><c:choose>
												<c:when test="${book.bookState =='1' }">
													<a href="bookRev.bk?page=${param.page }&search=${param.search}&value=${param.value}&id=${sessionScope.userID }&index=${sessionScope.userIndex}&bookNum=${book.bookNum}&libCode=${book.libCode}&state=${book.bookState}"
														 class="reservation available"> 예약가능 </a>
												</c:when>
												<c:when test="${book.bookState == '2' }">예약불가 </c:when>
											</c:choose></td>
										</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- //listTable -->
				</div>
				<!-- //searchInfo -->

				<!-- //소장정보 -->

				<!-- //매체정보 -->

				<!-- // 초록 -->

				<!-- //목차정보 -->

				<!-- //NAVER 정보 -->


				<div class="searchInfo mediaContents" id="naverSearchInfo"
					style="display: block;">
					<div class="searchHeader">
						<h3 class="open">책소개</h3>
					</div>
					<div class="searchContents">
						<div class="mediaContent">
							<h4 class="skip">네이버정보 미리보기</h4>
							<div class="brief" id="naverBrief">
								<a href="http://book.naver.com/bookdb/book_detail.php?bid=5186"
									title="새창" target="_blank"># </a>
							</div>
							<p class="bookintroLink" id="naverLink">
								<a href="http://book.naver.com/bookdb/book_detail.php?bid=5186"
									target="_blank" title="새창">[네이버 제공]</a>
							</p>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					$(document).ready(function() {
						naverBook("데미안", "8937460440");
					});

					function naverBook(keyword, isbn) {
						$
								.ajax({
									contentType : "application/x-www-form-urlencoded; charset=UTF-8",
									type : "POST",
									url : "/openapi/naverBook",
									data : "query="
											+ encodeURIComponent(keyword)
											+ "&display=1&d_isbn="
											+ encodeURIComponent(isbn)
											+ "&target=book_adv",
									dataType : "xml",
									complete : function(xhr, statusText) {
										if (statusText == "success") {
											viewNaverBook(xhr, keyword);
										} else {
											$("#naverBrief")
													.append("API 호출 실패");
										}
									}
								});
					}

					function viewNaverBook(xhr, keyword) {
						$("#naverSearchInfo").hide();
						var xmlObj = xhr.responseXML;
						var arrList = $("item", xmlObj);
						if (arrList != null) {
							var listStr = "";
							var listSize = arrList.length;
							if (listSize == 0) {
								return;
							}
							for (var i = 0; i < listSize; i++) {
								var item = arrList[i];
								listStr = "<a href='"
										+ $("link", item)[0].firstChild.nodeValue
										+ "'  title='새창' target='_blank' >"
										+ $("description", item)[0].firstChild.nodeValue
										+ "</a>";
							}
							if (listStr != "") {
								$("#naverBrief").append(listStr);
								$("#naverLink")
										.append(
												"<a href="
														+ $('link', item)[0].firstChild.nodeValue
														+ " target=\"_blank\" title=\"새창\">[네이버 제공]</a>");
								$("#naverSearchInfo").show();
							}
						}
					}
				</script>
				<!-- //이분야의 인기자료 -->


				<!-- //서평정보 -->


				<div class="searchInfo commentW" id="reviews">
					<div class="searchHeader">
						<h3>

							서평<span> (0 건)</span>
						</h3>
					</div>
					<div class="searchContents" style="display: none;">
						<p class="notice">
							<span>*</span>주제와 무관한 내용의 서평은 삭제될 수 있습니다.
						</p>
						<p class="addWriteBtn">

							<a
								href="https://cham.kiu.ac.kr/login?retUrl=/search/detail/CATTOT000000155481"><span
								class="utiltitle">서평추가</span></a>

						</p>
						<div id="commentWrite" class="addWrite" style="display: none;">
							<p id="reviewmsgsuccess" class="msgParagraph msgCheck"
								style="display: none;">
								<img src="./상세정보 _ 경일대학교 도서관_files/msgCheck.gif" alt="확인">서평이
								성공적으로 등록되었습니다.
							</p>
							<p id="reviewmsgfail" class="msgParagraph msgCheck"
								style="display: none;">
								<img src="./상세정보 _ 경일대학교 도서관_files/msgCheck.gif" alt="실패">서평등록
								중 오류가 발생하였습니다. 재시도 하십시오.
							</p>
							<div class="addWriteForm">
								<form name="frmreview" id="frmreview"
									action="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"
									class="reviewform">
									<input type="hidden" name="sysdiv" value="CAT"> <input
										type="hidden" name="websysdiv" value="TOT"> <input
										type="hidden" name="control_no" value="000000155481">
									<input type="hidden" name="userId" value="">
									<fieldset>
										<legend>서평추가</legend>
										<dl>
											<dt class="skip">별점</dt>
											<dd>
												<div class="starSelect">
													<dl>
														<dt>
															<a
																href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"><img
																src="./상세정보 _ 경일대학교 도서관_files/star0.png" alt="별0점"></a>
														</dt>
														<dd style="display: none;">
															<ul>
																<li><a
																	href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"><img
																		src="./상세정보 _ 경일대학교 도서관_files/star10.png" alt="별5점"></a></li>
																<li><a
																	href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"><img
																		src="./상세정보 _ 경일대학교 도서관_files/star9.png" alt="별4.5점"></a></li>
																<li><a
																	href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"><img
																		src="./상세정보 _ 경일대학교 도서관_files/star8.png" alt="별4점"></a></li>
																<li><a
																	href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"><img
																		src="./상세정보 _ 경일대학교 도서관_files/star7.png" alt="별3.5점"></a></li>
																<li><a
																	href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"><img
																		src="./상세정보 _ 경일대학교 도서관_files/star6.png" alt="별3점"></a></li>
																<li><a
																	href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"><img
																		src="./상세정보 _ 경일대학교 도서관_files/star5.png" alt="별2.5점"></a></li>
																<li><a
																	href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"><img
																		src="./상세정보 _ 경일대학교 도서관_files/star4.png" alt="별2점"></a></li>
																<li><a
																	href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"><img
																		src="./상세정보 _ 경일대학교 도서관_files/star3.png" alt="별1.5점"></a></li>
																<li><a
																	href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"><img
																		src="./상세정보 _ 경일대학교 도서관_files/star2.png" alt="별1점"></a></li>
																<li><a
																	href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"><img
																		src="./상세정보 _ 경일대학교 도서관_files/star1.png" alt="별0.5점"></a></li>
																<li><a
																	href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"><img
																		src="./상세정보 _ 경일대학교 도서관_files/star0.png" alt="별0점"></a></li>
															</ul>
														</dd>
													</dl>
													<input type="hidden" id="starSelectVal" name="review_grade"
														value="0">
												</div>
												<span class="noticeStar">*서평 입력 시 선택한 별점은 전체 별점에
													반영됩니다.</span>
											</dd>
											<dt class="skip">제목입력</dt>
											<dd>
												<input type="text" id="review_title" name="review_title"
													class="inputTextType1 inputWrite" title="제목"
													placeholder="제목을 입력하세요.">
											</dd>
											<dt class="skip">본문입력</dt>
											<dd id="reviewTextarea">
												<textarea id="review_content1" name="review_content1"
													class="textareaWrite" title="내용"></textarea>
											</dd>
											<dd id="reviewEditor">
												<textarea id="review_content2" name="review_content2"
													cols="100" rows="5" class="textareaWrite" title="내용"
													style="visibility: hidden; display: none;"></textarea>
												<div id="cke_review_content2"
													class="cke_1 cke cke_reset cke_chrome cke_editor_review_content2 cke_ltr cke_browser_webkit"
													dir="ltr" lang="en" role="application"
													aria-labelledby="cke_review_content2_arialbl"
													style="width: 98%;">
													<span id="cke_review_content2_arialbl"
														class="cke_voice_label">Rich Text Editor,
														review_content2</span>
													<div class="cke_inner cke_reset" role="presentation">
														<span id="cke_1_top" class="cke_top cke_reset_all"
															role="presentation"
															style="height: auto; user-select: none;"><span
															id="cke_10" class="cke_voice_label">Editor
																toolbars</span><span id="cke_1_toolbox" class="cke_toolbox"
															role="group" aria-labelledby="cke_10"
															onmousedown="return false;"><span id="cke_13"
																class="cke_toolbar" role="toolbar"><span
																	class="cke_toolbar_start"></span><span
																	class="cke_toolgroup" role="presentation"><a
																		id="cke_14"
																		class="cke_button cke_button__preview cke_button_off"
																		href="javascript:void(&#39;Preview&#39;)"
																		title="Preview" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_14_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(2,event);"
																		onfocus="return CKEDITOR.tools.callFunction(3,event);"
																		onclick="CKEDITOR.tools.callFunction(4,this);return false;"><span
																			class="cke_button_icon cke_button__preview_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1632px; background-size: auto;">&nbsp;</span><span
																			id="cke_14_label"
																			class="cke_button_label cke_button__preview_label"
																			aria-hidden="false">Preview</span></a><a id="cke_15"
																		class="cke_button cke_button__templates cke_button_off"
																		href="javascript:void(&#39;Templates&#39;)"
																		title="Templates" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_15_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(5,event);"
																		onfocus="return CKEDITOR.tools.callFunction(6,event);"
																		onclick="CKEDITOR.tools.callFunction(7,this);return false;"><span
																			class="cke_button_icon cke_button__templates_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -456px; background-size: auto;">&nbsp;</span><span
																			id="cke_15_label"
																			class="cke_button_label cke_button__templates_label"
																			aria-hidden="false">Templates</span></a></span><span
																	class="cke_toolbar_end"></span></span><span id="cke_16"
																class="cke_toolbar" role="toolbar"><span
																	class="cke_toolbar_start"></span><span
																	class="cke_toolgroup" role="presentation"><a
																		id="cke_17"
																		class="cke_button cke_button__cut cke_button_disabled "
																		href="javascript:void(&#39;Cut&#39;)" title="Cut"
																		tabindex="-1" hidefocus="true" role="button"
																		aria-labelledby="cke_17_label" aria-haspopup="false"
																		aria-disabled="true"
																		onkeydown="return CKEDITOR.tools.callFunction(8,event);"
																		onfocus="return CKEDITOR.tools.callFunction(9,event);"
																		onclick="CKEDITOR.tools.callFunction(10,this);return false;"><span
																			class="cke_button_icon cke_button__cut_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -312px; background-size: auto;">&nbsp;</span><span
																			id="cke_17_label"
																			class="cke_button_label cke_button__cut_label"
																			aria-hidden="false">Cut</span></a><a id="cke_18"
																		class="cke_button cke_button__copy cke_button_disabled "
																		href="javascript:void(&#39;Copy&#39;)" title="Copy"
																		tabindex="-1" hidefocus="true" role="button"
																		aria-labelledby="cke_18_label" aria-haspopup="false"
																		aria-disabled="true"
																		onkeydown="return CKEDITOR.tools.callFunction(11,event);"
																		onfocus="return CKEDITOR.tools.callFunction(12,event);"
																		onclick="CKEDITOR.tools.callFunction(13,this);return false;"><span
																			class="cke_button_icon cke_button__copy_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -264px; background-size: auto;">&nbsp;</span><span
																			id="cke_18_label"
																			class="cke_button_label cke_button__copy_label"
																			aria-hidden="false">Copy</span></a><a id="cke_19"
																		class="cke_button cke_button__paste cke_button_off"
																		href="javascript:void(&#39;Paste&#39;)" title="Paste"
																		tabindex="-1" hidefocus="true" role="button"
																		aria-labelledby="cke_19_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(14,event);"
																		onfocus="return CKEDITOR.tools.callFunction(15,event);"
																		onclick="CKEDITOR.tools.callFunction(16,this);return false;"><span
																			class="cke_button_icon cke_button__paste_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -360px; background-size: auto;">&nbsp;</span><span
																			id="cke_19_label"
																			class="cke_button_label cke_button__paste_label"
																			aria-hidden="false">Paste</span></a><a id="cke_20"
																		class="cke_button cke_button__pastetext cke_button_off"
																		href="javascript:void(&#39;Paste as plain text&#39;)"
																		title="Paste as plain text" tabindex="-1"
																		hidefocus="true" role="button"
																		aria-labelledby="cke_20_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(17,event);"
																		onfocus="return CKEDITOR.tools.callFunction(18,event);"
																		onclick="CKEDITOR.tools.callFunction(19,this);return false;"><span
																			class="cke_button_icon cke_button__pastetext_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1536px; background-size: auto;">&nbsp;</span><span
																			id="cke_20_label"
																			class="cke_button_label cke_button__pastetext_label"
																			aria-hidden="false">Paste as plain text</span></a><a
																		id="cke_21"
																		class="cke_button cke_button__pastefromword cke_button_off"
																		href="javascript:void(&#39;Paste from Word&#39;)"
																		title="Paste from Word" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_21_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(20,event);"
																		onfocus="return CKEDITOR.tools.callFunction(21,event);"
																		onclick="CKEDITOR.tools.callFunction(22,this);return false;"><span
																			class="cke_button_icon cke_button__pastefromword_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1584px; background-size: auto;">&nbsp;</span><span
																			id="cke_21_label"
																			class="cke_button_label cke_button__pastefromword_label"
																			aria-hidden="false">Paste from Word</span></a></span><span
																	class="cke_toolbar_end"></span></span><span id="cke_22"
																class="cke_toolbar" role="toolbar"><span
																	class="cke_toolbar_start"></span><span
																	class="cke_toolgroup" role="presentation"><a
																		id="cke_23"
																		class="cke_button cke_button__undo cke_button_disabled "
																		href="javascript:void(&#39;Undo&#39;)" title="Undo"
																		tabindex="-1" hidefocus="true" role="button"
																		aria-labelledby="cke_23_label" aria-haspopup="false"
																		aria-disabled="true"
																		onkeydown="return CKEDITOR.tools.callFunction(23,event);"
																		onfocus="return CKEDITOR.tools.callFunction(24,event);"
																		onclick="CKEDITOR.tools.callFunction(25,this);return false;"><span
																			class="cke_button_icon cke_button__undo_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1992px; background-size: auto;">&nbsp;</span><span
																			id="cke_23_label"
																			class="cke_button_label cke_button__undo_label"
																			aria-hidden="false">Undo</span></a><a id="cke_24"
																		class="cke_button cke_button__redo cke_button_disabled "
																		href="javascript:void(&#39;Redo&#39;)" title="Redo"
																		tabindex="-1" hidefocus="true" role="button"
																		aria-labelledby="cke_24_label" aria-haspopup="false"
																		aria-disabled="true"
																		onkeydown="return CKEDITOR.tools.callFunction(26,event);"
																		onfocus="return CKEDITOR.tools.callFunction(27,event);"
																		onclick="CKEDITOR.tools.callFunction(28,this);return false;"><span
																			class="cke_button_icon cke_button__redo_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1944px; background-size: auto;">&nbsp;</span><span
																			id="cke_24_label"
																			class="cke_button_label cke_button__redo_label"
																			aria-hidden="false">Redo</span></a><span
																		class="cke_toolbar_separator" role="separator"></span><a
																		id="cke_25"
																		class="cke_button cke_button__find cke_button_off"
																		href="javascript:void(&#39;Find&#39;)" title="Find"
																		tabindex="-1" hidefocus="true" role="button"
																		aria-labelledby="cke_25_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(29,event);"
																		onfocus="return CKEDITOR.tools.callFunction(30,event);"
																		onclick="CKEDITOR.tools.callFunction(31,this);return false;"><span
																			class="cke_button_icon cke_button__find_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -528px; background-size: auto;">&nbsp;</span><span
																			id="cke_25_label"
																			class="cke_button_label cke_button__find_label"
																			aria-hidden="false">Find</span></a><a id="cke_26"
																		class="cke_button cke_button__replace cke_button_off"
																		href="javascript:void(&#39;Replace&#39;)"
																		title="Replace" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_26_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(32,event);"
																		onfocus="return CKEDITOR.tools.callFunction(33,event);"
																		onclick="CKEDITOR.tools.callFunction(34,this);return false;"><span
																			class="cke_button_icon cke_button__replace_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -552px; background-size: auto;">&nbsp;</span><span
																			id="cke_26_label"
																			class="cke_button_label cke_button__replace_label"
																			aria-hidden="false">Replace</span></a><span
																		class="cke_toolbar_separator" role="separator"></span><a
																		id="cke_27"
																		class="cke_button cke_button__selectall cke_button_off"
																		href="javascript:void(&#39;Select All&#39;)"
																		title="Select All" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_27_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(35,event);"
																		onfocus="return CKEDITOR.tools.callFunction(36,event);"
																		onclick="CKEDITOR.tools.callFunction(37,this);return false;"><span
																			class="cke_button_icon cke_button__selectall_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1728px; background-size: auto;">&nbsp;</span><span
																			id="cke_27_label"
																			class="cke_button_label cke_button__selectall_label"
																			aria-hidden="false">Select All</span></a><a id="cke_28"
																		class="cke_button cke_button__removeformat cke_button_off"
																		href="javascript:void(&#39;Remove Format&#39;)"
																		title="Remove Format" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_28_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(38,event);"
																		onfocus="return CKEDITOR.tools.callFunction(39,event);"
																		onclick="CKEDITOR.tools.callFunction(40,this);return false;"><span
																			class="cke_button_icon cke_button__removeformat_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1680px; background-size: auto;">&nbsp;</span><span
																			id="cke_28_label"
																			class="cke_button_label cke_button__removeformat_label"
																			aria-hidden="false">Remove Format</span></a></span><span
																	class="cke_toolbar_end"></span></span><span id="cke_29"
																class="cke_toolbar" role="toolbar"><span
																	class="cke_toolbar_start"></span><span
																	class="cke_toolgroup" role="presentation"><a
																		id="cke_30"
																		class="cke_button cke_button__bold cke_button_off"
																		href="javascript:void(&#39;Bold&#39;)" title="Bold"
																		tabindex="-1" hidefocus="true" role="button"
																		aria-labelledby="cke_30_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(41,event);"
																		onfocus="return CKEDITOR.tools.callFunction(42,event);"
																		onclick="CKEDITOR.tools.callFunction(43,this);return false;"><span
																			class="cke_button_icon cke_button__bold_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -24px; background-size: auto;">&nbsp;</span><span
																			id="cke_30_label"
																			class="cke_button_label cke_button__bold_label"
																			aria-hidden="false">Bold</span></a><a id="cke_31"
																		class="cke_button cke_button__italic cke_button_off"
																		href="javascript:void(&#39;Italic&#39;)"
																		title="Italic" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_31_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(44,event);"
																		onfocus="return CKEDITOR.tools.callFunction(45,event);"
																		onclick="CKEDITOR.tools.callFunction(46,this);return false;"><span
																			class="cke_button_icon cke_button__italic_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -48px; background-size: auto;">&nbsp;</span><span
																			id="cke_31_label"
																			class="cke_button_label cke_button__italic_label"
																			aria-hidden="false">Italic</span></a><a id="cke_32"
																		class="cke_button cke_button__underline cke_button_off"
																		href="javascript:void(&#39;Underline&#39;)"
																		title="Underline" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_32_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(47,event);"
																		onfocus="return CKEDITOR.tools.callFunction(48,event);"
																		onclick="CKEDITOR.tools.callFunction(49,this);return false;"><span
																			class="cke_button_icon cke_button__underline_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -144px; background-size: auto;">&nbsp;</span><span
																			id="cke_32_label"
																			class="cke_button_label cke_button__underline_label"
																			aria-hidden="false">Underline</span></a><a id="cke_33"
																		class="cke_button cke_button__strike cke_button_off"
																		href="javascript:void(&#39;Strikethrough&#39;)"
																		title="Strikethrough" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_33_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(50,event);"
																		onfocus="return CKEDITOR.tools.callFunction(51,event);"
																		onclick="CKEDITOR.tools.callFunction(52,this);return false;"><span
																			class="cke_button_icon cke_button__strike_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -72px; background-size: auto;">&nbsp;</span><span
																			id="cke_33_label"
																			class="cke_button_label cke_button__strike_label"
																			aria-hidden="false">Strikethrough</span></a><span
																		class="cke_toolbar_separator" role="separator"></span><a
																		id="cke_34"
																		class="cke_button cke_button__subscript cke_button_off"
																		href="javascript:void(&#39;Subscript&#39;)"
																		title="Subscript" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_34_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(53,event);"
																		onfocus="return CKEDITOR.tools.callFunction(54,event);"
																		onclick="CKEDITOR.tools.callFunction(55,this);return false;"><span
																			class="cke_button_icon cke_button__subscript_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -96px; background-size: auto;">&nbsp;</span><span
																			id="cke_34_label"
																			class="cke_button_label cke_button__subscript_label"
																			aria-hidden="false">Subscript</span></a><a id="cke_35"
																		class="cke_button cke_button__superscript cke_button_off"
																		href="javascript:void(&#39;Superscript&#39;)"
																		title="Superscript" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_35_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(56,event);"
																		onfocus="return CKEDITOR.tools.callFunction(57,event);"
																		onclick="CKEDITOR.tools.callFunction(58,this);return false;"><span
																			class="cke_button_icon cke_button__superscript_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -120px; background-size: auto;">&nbsp;</span><span
																			id="cke_35_label"
																			class="cke_button_label cke_button__superscript_label"
																			aria-hidden="false">Superscript</span></a></span><span
																	class="cke_toolbar_end"></span></span><span id="cke_36"
																class="cke_toolbar" role="toolbar"><span
																	class="cke_toolbar_start"></span><span
																	class="cke_toolgroup" role="presentation"><a
																		id="cke_37"
																		class="cke_button cke_button__justifyleft cke_button_off"
																		href="javascript:void(&#39;Align Left&#39;)"
																		title="Align Left" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_37_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(59,event);"
																		onfocus="return CKEDITOR.tools.callFunction(60,event);"
																		onclick="CKEDITOR.tools.callFunction(61,this);return false;"><span
																			class="cke_button_icon cke_button__justifyleft_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1128px; background-size: auto;">&nbsp;</span><span
																			id="cke_37_label"
																			class="cke_button_label cke_button__justifyleft_label"
																			aria-hidden="false">Align Left</span></a><a id="cke_38"
																		class="cke_button cke_button__justifycenter cke_button_off"
																		href="javascript:void(&#39;Center&#39;)"
																		title="Center" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_38_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(62,event);"
																		onfocus="return CKEDITOR.tools.callFunction(63,event);"
																		onclick="CKEDITOR.tools.callFunction(64,this);return false;"><span
																			class="cke_button_icon cke_button__justifycenter_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1104px; background-size: auto;">&nbsp;</span><span
																			id="cke_38_label"
																			class="cke_button_label cke_button__justifycenter_label"
																			aria-hidden="false">Center</span></a><a id="cke_39"
																		class="cke_button cke_button__justifyright cke_button_off"
																		href="javascript:void(&#39;Align Right&#39;)"
																		title="Align Right" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_39_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(65,event);"
																		onfocus="return CKEDITOR.tools.callFunction(66,event);"
																		onclick="CKEDITOR.tools.callFunction(67,this);return false;"><span
																			class="cke_button_icon cke_button__justifyright_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1152px; background-size: auto;">&nbsp;</span><span
																			id="cke_39_label"
																			class="cke_button_label cke_button__justifyright_label"
																			aria-hidden="false">Align Right</span></a><a id="cke_40"
																		class="cke_button cke_button__justifyblock cke_button_off"
																		href="javascript:void(&#39;Justify&#39;)"
																		title="Justify" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_40_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(68,event);"
																		onfocus="return CKEDITOR.tools.callFunction(69,event);"
																		onclick="CKEDITOR.tools.callFunction(70,this);return false;"><span
																			class="cke_button_icon cke_button__justifyblock_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1080px; background-size: auto;">&nbsp;</span><span
																			id="cke_40_label"
																			class="cke_button_label cke_button__justifyblock_label"
																			aria-hidden="false">Justify</span></a></span><span
																	class="cke_toolbar_end"></span></span><span id="cke_41"
																class="cke_toolbar" role="toolbar"><span
																	class="cke_toolbar_start"></span><span
																	class="cke_toolgroup" role="presentation"><a
																		id="cke_42"
																		class="cke_button cke_button__maximize cke_button_off"
																		href="javascript:void(&#39;Maximize&#39;)"
																		title="Maximize" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_42_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(71,event);"
																		onfocus="return CKEDITOR.tools.callFunction(72,event);"
																		onclick="CKEDITOR.tools.callFunction(73,this);return false;"><span
																			class="cke_button_icon cke_button__maximize_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1392px; background-size: auto;">&nbsp;</span><span
																			id="cke_42_label"
																			class="cke_button_label cke_button__maximize_label"
																			aria-hidden="false">Maximize</span></a><a id="cke_43"
																		class="cke_button cke_button__showblocks cke_button_off"
																		href="javascript:void(&#39;Show Blocks&#39;)"
																		title="Show Blocks" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_43_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(74,event);"
																		onfocus="return CKEDITOR.tools.callFunction(75,event);"
																		onclick="CKEDITOR.tools.callFunction(76,this);return false;"><span
																			class="cke_button_icon cke_button__showblocks_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1776px; background-size: auto;">&nbsp;</span><span
																			id="cke_43_label"
																			class="cke_button_label cke_button__showblocks_label"
																			aria-hidden="false">Show Blocks</span></a><span
																		class="cke_toolbar_separator" role="separator"></span><a
																		id="cke_44"
																		class="cke_button cke_button__about cke_button_off"
																		href="javascript:void(&#39;About CKEditor&#39;)"
																		title="About CKEditor" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_44_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(77,event);"
																		onfocus="return CKEDITOR.tools.callFunction(78,event);"
																		onclick="CKEDITOR.tools.callFunction(79,this);return false;"><span
																			class="cke_button_icon cke_button__about_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 0px; background-size: auto;">&nbsp;</span><span
																			id="cke_44_label"
																			class="cke_button_label cke_button__about_label"
																			aria-hidden="false">About CKEditor</span></a></span><span
																	class="cke_toolbar_end"></span></span><span id="cke_45"
																class="cke_toolbar" role="toolbar"><span
																	class="cke_toolbar_start"></span><span
																	class="cke_toolgroup" role="presentation"><a
																		id="cke_46"
																		class="cke_button cke_button__outdent cke_button_disabled "
																		href="javascript:void(&#39;Decrease Indent&#39;)"
																		title="Decrease Indent" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_46_label"
																		aria-haspopup="false" aria-disabled="true"
																		onkeydown="return CKEDITOR.tools.callFunction(80,event);"
																		onfocus="return CKEDITOR.tools.callFunction(81,event);"
																		onclick="CKEDITOR.tools.callFunction(82,this);return false;"><span
																			class="cke_button_icon cke_button__outdent_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1032px; background-size: auto;">&nbsp;</span><span
																			id="cke_46_label"
																			class="cke_button_label cke_button__outdent_label"
																			aria-hidden="false">Decrease Indent</span></a><a
																		id="cke_47"
																		class="cke_button cke_button__indent cke_button_off"
																		href="javascript:void(&#39;Increase Indent&#39;)"
																		title="Increase Indent" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_47_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(83,event);"
																		onfocus="return CKEDITOR.tools.callFunction(84,event);"
																		onclick="CKEDITOR.tools.callFunction(85,this);return false;"><span
																			class="cke_button_icon cke_button__indent_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -984px; background-size: auto;">&nbsp;</span><span
																			id="cke_47_label"
																			class="cke_button_label cke_button__indent_label"
																			aria-hidden="false">Increase Indent</span></a><a
																		id="cke_48"
																		class="cke_button cke_button__blockquote cke_button_off"
																		href="javascript:void(&#39;Block Quote&#39;)"
																		title="Block Quote" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_48_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(86,event);"
																		onfocus="return CKEDITOR.tools.callFunction(87,event);"
																		onclick="CKEDITOR.tools.callFunction(88,this);return false;"><span
																			class="cke_button_icon cke_button__blockquote_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -216px; background-size: auto;">&nbsp;</span><span
																			id="cke_48_label"
																			class="cke_button_label cke_button__blockquote_label"
																			aria-hidden="false">Block Quote</span></a><a id="cke_49"
																		class="cke_button cke_button__creatediv cke_button_off"
																		href="javascript:void(&#39;Create Div Container&#39;)"
																		title="Create Div Container" tabindex="-1"
																		hidefocus="true" role="button"
																		aria-labelledby="cke_49_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(89,event);"
																		onfocus="return CKEDITOR.tools.callFunction(90,event);"
																		onclick="CKEDITOR.tools.callFunction(91,this);return false;"><span
																			class="cke_button_icon cke_button__creatediv_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -480px; background-size: auto;">&nbsp;</span><span
																			id="cke_49_label"
																			class="cke_button_label cke_button__creatediv_label"
																			aria-hidden="false">Create Div Container</span></a></span><span
																	class="cke_toolbar_end"></span></span><span id="cke_50"
																class="cke_toolbar" role="toolbar"><span
																	class="cke_toolbar_start"></span><span
																	class="cke_toolgroup" role="presentation"><a
																		id="cke_51"
																		class="cke_button cke_button__numberedlist cke_button_off"
																		href="javascript:void(&#39;Insert/Remove Numbered List&#39;)"
																		title="Insert/Remove Numbered List" tabindex="-1"
																		hidefocus="true" role="button"
																		aria-labelledby="cke_51_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(92,event);"
																		onfocus="return CKEDITOR.tools.callFunction(93,event);"
																		onclick="CKEDITOR.tools.callFunction(94,this);return false;"><span
																			class="cke_button_icon cke_button__numberedlist_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1368px; background-size: auto;">&nbsp;</span><span
																			id="cke_51_label"
																			class="cke_button_label cke_button__numberedlist_label"
																			aria-hidden="false">Insert/Remove Numbered
																				List</span></a><a id="cke_52"
																		class="cke_button cke_button__bulletedlist cke_button_off"
																		href="javascript:void(&#39;Insert/Remove Bulleted List&#39;)"
																		title="Insert/Remove Bulleted List" tabindex="-1"
																		hidefocus="true" role="button"
																		aria-labelledby="cke_52_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(95,event);"
																		onfocus="return CKEDITOR.tools.callFunction(96,event);"
																		onclick="CKEDITOR.tools.callFunction(97,this);return false;"><span
																			class="cke_button_icon cke_button__bulletedlist_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1320px; background-size: auto;">&nbsp;</span><span
																			id="cke_52_label"
																			class="cke_button_label cke_button__bulletedlist_label"
																			aria-hidden="false">Insert/Remove Bulleted
																				List</span></a><span class="cke_toolbar_separator"
																		role="separator"></span><a id="cke_53"
																		class="cke_button cke_button__link cke_button_off"
																		href="javascript:void(&#39;Link&#39;)" title="Link"
																		tabindex="-1" hidefocus="true" role="button"
																		aria-labelledby="cke_53_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(98,event);"
																		onfocus="return CKEDITOR.tools.callFunction(99,event);"
																		onclick="CKEDITOR.tools.callFunction(100,this);return false;"><span
																			class="cke_button_icon cke_button__link_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1248px; background-size: auto;">&nbsp;</span><span
																			id="cke_53_label"
																			class="cke_button_label cke_button__link_label"
																			aria-hidden="false">Link</span></a><a id="cke_54"
																		class="cke_button cke_button__unlink cke_button_disabled "
																		href="javascript:void(&#39;Unlink&#39;)"
																		title="Unlink" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_54_label"
																		aria-haspopup="false" aria-disabled="true"
																		onkeydown="return CKEDITOR.tools.callFunction(101,event);"
																		onfocus="return CKEDITOR.tools.callFunction(102,event);"
																		onclick="CKEDITOR.tools.callFunction(103,this);return false;"><span
																			class="cke_button_icon cke_button__unlink_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1272px; background-size: auto;">&nbsp;</span><span
																			id="cke_54_label"
																			class="cke_button_label cke_button__unlink_label"
																			aria-hidden="false">Unlink</span></a></span><span
																	class="cke_toolbar_end"></span></span><span id="cke_55"
																class="cke_toolbar" role="toolbar"><span
																	class="cke_toolbar_start"></span><span
																	class="cke_toolgroup" role="presentation"><a
																		id="cke_56"
																		class="cke_button cke_button__image cke_button_off"
																		href="javascript:void(&#39;Image&#39;)" title="Image"
																		tabindex="-1" hidefocus="true" role="button"
																		aria-labelledby="cke_56_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(104,event);"
																		onfocus="return CKEDITOR.tools.callFunction(105,event);"
																		onclick="CKEDITOR.tools.callFunction(106,this);return false;"><span
																			class="cke_button_icon cke_button__image_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -936px; background-size: auto;">&nbsp;</span><span
																			id="cke_56_label"
																			class="cke_button_label cke_button__image_label"
																			aria-hidden="false">Image</span></a><a id="cke_57"
																		class="cke_button cke_button__flash cke_button_off"
																		href="javascript:void(&#39;Flash&#39;)" title="Flash"
																		tabindex="-1" hidefocus="true" role="button"
																		aria-labelledby="cke_57_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(107,event);"
																		onfocus="return CKEDITOR.tools.callFunction(108,event);"
																		onclick="CKEDITOR.tools.callFunction(109,this);return false;"><span
																			class="cke_button_icon cke_button__flash_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -576px; background-size: auto;">&nbsp;</span><span
																			id="cke_57_label"
																			class="cke_button_label cke_button__flash_label"
																			aria-hidden="false">Flash</span></a><a id="cke_58"
																		class="cke_button cke_button__table cke_button_off"
																		href="javascript:void(&#39;Table&#39;)" title="Table"
																		tabindex="-1" hidefocus="true" role="button"
																		aria-labelledby="cke_58_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(110,event);"
																		onfocus="return CKEDITOR.tools.callFunction(111,event);"
																		onclick="CKEDITOR.tools.callFunction(112,this);return false;"><span
																			class="cke_button_icon cke_button__table_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1896px; background-size: auto;">&nbsp;</span><span
																			id="cke_58_label"
																			class="cke_button_label cke_button__table_label"
																			aria-hidden="false">Table</span></a><a id="cke_59"
																		class="cke_button cke_button__horizontalrule cke_button_off"
																		href="javascript:void(&#39;Insert Horizontal Line&#39;)"
																		title="Insert Horizontal Line" tabindex="-1"
																		hidefocus="true" role="button"
																		aria-labelledby="cke_59_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(113,event);"
																		onfocus="return CKEDITOR.tools.callFunction(114,event);"
																		onclick="CKEDITOR.tools.callFunction(115,this);return false;"><span
																			class="cke_button_icon cke_button__horizontalrule_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -888px; background-size: auto;">&nbsp;</span><span
																			id="cke_59_label"
																			class="cke_button_label cke_button__horizontalrule_label"
																			aria-hidden="false">Insert Horizontal Line</span></a><a
																		id="cke_60"
																		class="cke_button cke_button__smiley cke_button_off"
																		href="javascript:void(&#39;Smiley&#39;)"
																		title="Smiley" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_60_label"
																		aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(116,event);"
																		onfocus="return CKEDITOR.tools.callFunction(117,event);"
																		onclick="CKEDITOR.tools.callFunction(118,this);return false;"><span
																			class="cke_button_icon cke_button__smiley_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1056px; background-size: auto;">&nbsp;</span><span
																			id="cke_60_label"
																			class="cke_button_label cke_button__smiley_label"
																			aria-hidden="false">Smiley</span></a><a id="cke_61"
																		class="cke_button cke_button__specialchar cke_button_off"
																		href="javascript:void(&#39;Insert Special Character&#39;)"
																		title="Insert Special Character" tabindex="-1"
																		hidefocus="true" role="button"
																		aria-labelledby="cke_61_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(119,event);"
																		onfocus="return CKEDITOR.tools.callFunction(120,event);"
																		onclick="CKEDITOR.tools.callFunction(121,this);return false;"><span
																			class="cke_button_icon cke_button__specialchar_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1848px; background-size: auto;">&nbsp;</span><span
																			id="cke_61_label"
																			class="cke_button_label cke_button__specialchar_label"
																			aria-hidden="false">Insert Special Character</span></a><a
																		id="cke_62"
																		class="cke_button cke_button__pagebreak cke_button_off"
																		href="javascript:void(&#39;Insert Page Break for Printing&#39;)"
																		title="Insert Page Break for Printing" tabindex="-1"
																		hidefocus="true" role="button"
																		aria-labelledby="cke_62_label" aria-haspopup="false"
																		onkeydown="return CKEDITOR.tools.callFunction(122,event);"
																		onfocus="return CKEDITOR.tools.callFunction(123,event);"
																		onclick="CKEDITOR.tools.callFunction(124,this);return false;"><span
																			class="cke_button_icon cke_button__pagebreak_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -1488px; background-size: auto;">&nbsp;</span><span
																			id="cke_62_label"
																			class="cke_button_label cke_button__pagebreak_label"
																			aria-hidden="false">Insert Page Break for
																				Printing</span></a></span><span class="cke_toolbar_end"></span></span><span
																id="cke_63" class="cke_toolbar" role="toolbar"><span
																	class="cke_toolbar_start"></span><span id="cke_11"
																	class="cke_combo cke_combo__font cke_combo_off"
																	role="presentation"><span id="cke_11_label"
																		class="cke_combo_label">Font</span><a
																		class="cke_combo_button" title="Font Name"
																		tabindex="-1"
																		href="javascript:void(&#39;Font Name&#39;)"
																		hidefocus="true" role="button"
																		aria-labelledby="cke_11_label" aria-haspopup="true"
																		onkeydown="return CKEDITOR.tools.callFunction(126,event,this);"
																		onfocus="return CKEDITOR.tools.callFunction(127,event);"
																		onclick="CKEDITOR.tools.callFunction(125,this);return false;"><span
																			id="cke_11_text"
																			class="cke_combo_text cke_combo_inlinelabel">Font</span><span
																			class="cke_combo_open"><span
																				class="cke_combo_arrow"></span></span></a></span><span id="cke_12"
																	class="cke_combo cke_combo__fontsize cke_combo_off"
																	role="presentation"><span id="cke_12_label"
																		class="cke_combo_label">Size</span><a
																		class="cke_combo_button" title="Font Size"
																		tabindex="-1"
																		href="javascript:void(&#39;Font Size&#39;)"
																		hidefocus="true" role="button"
																		aria-labelledby="cke_12_label" aria-haspopup="true"
																		onkeydown="return CKEDITOR.tools.callFunction(129,event,this);"
																		onfocus="return CKEDITOR.tools.callFunction(130,event);"
																		onclick="CKEDITOR.tools.callFunction(128,this);return false;"><span
																			id="cke_12_text"
																			class="cke_combo_text cke_combo_inlinelabel">Size</span><span
																			class="cke_combo_open"><span
																				class="cke_combo_arrow"></span></span></a></span><span
																	class="cke_toolbar_end"></span></span><span id="cke_64"
																class="cke_toolbar" role="toolbar"><span
																	class="cke_toolbar_start"></span><span
																	class="cke_toolgroup" role="presentation"><a
																		id="cke_65"
																		class="cke_button cke_button__textcolor cke_button_off"
																		href="javascript:void(&#39;Text Color&#39;)"
																		title="Text Color" tabindex="-1" hidefocus="true"
																		role="button" aria-labelledby="cke_65_label"
																		aria-haspopup="true"
																		onkeydown="return CKEDITOR.tools.callFunction(131,event);"
																		onfocus="return CKEDITOR.tools.callFunction(132,event);"
																		onclick="CKEDITOR.tools.callFunction(133,this);return false;"><span
																			class="cke_button_icon cke_button__textcolor_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -408px; background-size: auto;">&nbsp;</span><span
																			id="cke_65_label"
																			class="cke_button_label cke_button__textcolor_label"
																			aria-hidden="false">Text Color</span><span
																			class="cke_button_arrow"></span></a><a id="cke_66"
																		class="cke_button cke_button__bgcolor cke_button_off"
																		href="javascript:void(&#39;Background Color&#39;)"
																		title="Background Color" tabindex="-1"
																		hidefocus="true" role="button"
																		aria-labelledby="cke_66_label" aria-haspopup="true"
																		onkeydown="return CKEDITOR.tools.callFunction(134,event);"
																		onfocus="return CKEDITOR.tools.callFunction(135,event);"
																		onclick="CKEDITOR.tools.callFunction(136,this);return false;"><span
																			class="cke_button_icon cke_button__bgcolor_icon"
																			style="background-image: url(https://cham.kiu.ac.kr/js/ckeditor/plugins/icons.png?t=F969); background-position: 0 -384px; background-size: auto;">&nbsp;</span><span
																			id="cke_66_label"
																			class="cke_button_label cke_button__bgcolor_label"
																			aria-hidden="false">Background Color</span><span
																			class="cke_button_arrow"></span></a></span><span
																	class="cke_toolbar_end"></span></span></span></span>
														<div id="cke_1_contents" class="cke_contents cke_reset"
															role="presentation" style="height: 300px;">
															<span id="cke_71" class="cke_voice_label">Press
																ALT 0 for help</span>
															<iframe
																src="./상세정보 _ 경일대학교 도서관_files/saved_resource.html"
																frameborder="0" class="cke_wysiwyg_frame cke_reset"
																title="Rich Text Editor, review_content2"
																aria-describedby="cke_71" tabindex="0"
																allowtransparency="true"
																style="width: 100%; height: 100%;"></iframe>
														</div>
														<span id="cke_1_bottom" class="cke_bottom cke_reset_all"
															role="presentation" style="user-select: none;"><span
															id="cke_1_resizer"
															class="cke_resizer cke_resizer_vertical cke_resizer_ltr"
															title="Resize"
															onmousedown="CKEDITOR.tools.callFunction(0, event)">◢</span><span
															id="cke_1_path_label" class="cke_voice_label">Elements
																path</span><span id="cke_1_path" class="cke_path" role="group"
															aria-labelledby="cke_1_path_label"><span
																class="cke_path_empty">&nbsp;</span></span></span>
													</div>
												</div>
											</dd>
										</dl>
									</fieldset>
									<p class="editorBtn">
										<button type="button">에디터 입력기</button>
									</p>
									<div class="buttons">
										<input type="button" value="저장" onclick="submitReview();">
										<input type="button" value="닫기"
											onclick="closedReview(); return false;">
									</div>
								</form>
							</div>
						</div>

						<div class="comments"></div>
					</div>

				</div>
				<script type="text/javascript"
					src="./상세정보 _ 경일대학교 도서관_files/ckeditor.js.다운로드"></script>
				<script type="text/javascript"
					src="./상세정보 _ 경일대학교 도서관_files/ckfinder.js.다운로드"></script>
				<script type="text/javascript"
					src="./상세정보 _ 경일대학교 도서관_files/ckeditor.js(1).다운로드"></script>

				<script type="text/javascript">
					var JS_PATH = '/js/';
					ckeditor.create('review_content2', 'kyungil');
				</script>


				<!-- //태그정보 -->


				<div class="searchInfo tagW" id="tagW">
					<div class="searchHeader">
						<h3>태그</h3>
					</div>
					<div class="searchContents" style="display: none;">
						<ul class="searchTabs">
							<li class="tabOn"><a
								href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#tagList">Tag
									List</a></li>
							<li><a
								href="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#tagCloud">Tag
									Cloud</a></li>
						</ul>


						<p class="addWriteBtn">
							<a
								href="https://cham.kiu.ac.kr/login?retUrl=/search/detail/CATTOT000000155481">태그추가</a>
						</p>


						<!-- message -->
						<div id="tagWrite" class="addWrite" style="display: none;">
							<p id="tagmsgsuccess" class="msgParagraph msgCheck"
								style="display: none;">
								<img src="./상세정보 _ 경일대학교 도서관_files/msgCheck.gif" alt="확인">태그가
								저장되었습니다. <a href="https://cham.kiu.ac.kr/mytag/list">나의 태그</a>
							</p>
							<p id="tagmsgfail" class="msgParagraph msgCheck"
								style="display: none;">
								<img src="./상세정보 _ 경일대학교 도서관_files/msgError.gif" alt="실패">태그저장
								중 오류가 발생하였습니다. 재시도 하십시오.
							</p>
							<div class="addWriteForm">
								<form name="frmtag" id="frmtag"
									action="https://cham.kiu.ac.kr/search/detail/CATTOT000000155481?mainLink=/search/tot&amp;briefLink=/search/tot/result?q=%EB%8D%B0%EB%AF%B8%EC%95%88_A_st=KWRD_A_y=0_A_si=TOTAL_A_x=0#"
									class="tagsform">
									<input type="hidden" name="module_id" value="search"> <input
										type="hidden" name="content_id" value="CAT000000155481">
									<fieldset>
										<legend>태그추가</legend>
										<dl>
											<dt class="skip">태그입력</dt>
											<dd>
												<input type="text" name="tagentry"
													class="inputTextType1 inputWrite" value="" title="태그입력"
													placeholder="콤마(,)를 구분자로 다수개의 태그를 입력할 수 있습니다.">
											</dd>
											<dt class="tagView">
												<a href="javascript:toggleExistTags();">태그보기</a>
											</dt>
											<dd>
												<div id="tagexist" class="textareaWrite"
													style="display: none;"></div>
											</dd>
										</dl>
									</fieldset>
									<div class="buttons">
										<input type="button" value="저장" onclick="submitTags();">
										<input type="reset" value="닫기">
									</div>
								</form>
							</div>
						</div>
						<div class="tagContents">
							<div id="tagList"></div>
							<div id="tagCloud"></div>
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>


</div>


