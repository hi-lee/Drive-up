<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css" href="bdstyle/style/ko/home/brief.css">
<script type="text/javascript" src="bdstyle/script/jquery.selectBox.js"></script>
<div id="divContentsW">
	<div id="divContents">
		<script type="text/javascript"
			src="./전체 _ 경일대학교 도서관_files/cookie.js" charset="utf-8"></script>

		<h2 id="divTitle">전체</h2>

		<div id="divLocation">
			<ul>
				<li><a href="template_main.jsp" title="HOME"> <img
						src="bdstyle/image/ko/local/home.png" alt="HOME"></a></li>
				<li><a href="https://cham.kiu.ac.kr/search/tot">소장자료검색</a></li>
				<li><a
					href="https://cham.kiu.ac.kr/search/tot/result?st=KWRD&amp;commandType=advanced&amp;mId=&amp;si=1&amp;q=%EA%B9%80%EC%98%81%ED%95%98&amp;b0=and&amp;weight0=&amp;si=2&amp;q=&amp;b1=and&amp;weight1=&amp;si=3&amp;q=&amp;weight2=&amp;lmt0=TOTAL&amp;_lmt0=on&amp;lmtsn=000000000001&amp;lmtst=OR&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;inc=TOTAL&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;lmt1=TOTAL&amp;lmtsn=000000000003&amp;lmtst=OR&amp;rf=&amp;rt=&amp;range=000000000021&amp;cpp=10&amp;msc=10000#">전체</a></li>
			</ul>
		</div>
		<!-- content -->
		<div id="divContent">
			<!-- 검색 연간물 제본정보에 추가비고란(홍대 ct_accession ser_remark:결호내용) -->
			<!-- 결호내용(홍대) -->

			<script type="text/javascript">
//Message
var imgPath = "/image/ko/";
var noexistSearchDetailDataMsg = "상세정보가 없습니다.";
var mediaMsg = "바로가기";
var abstractMsg = "초록";
var contentsMsg = "메세지가 없습니다";
var commentariesMsg = "해제";
var urlMsg = "URL";
var vodMsg = "VOD";
var aodMsg = "AOD";
var originalMsg = "원문";
var criticismMsg = "메세지가 없습니다";

var numberMsg = "No.";
var bookImageMsg = "책 표지";
var shelfMsg = "소장처";
var bookShelfMsg = "메세지가 없습니다";
var callNoMsg = "청구기호";
var shelfinfoMsg = "소장사항";
var loaninfoMsg = "대출정보";
var bookstateMsg = "도서상태";
var reservationMsg = "예약";
var remarkMsg = "비고";
var returndateMsg = "반납예정일";
var checkinMsg = "권호";
var branchLoanMsg = "분관대출";
var loanreqMsg = "야간대출";
var checkBindingMsg = "권호·제본정보 보기";
var latestdateMsg = "최근입수호";
var missBookMsg = "서가에없는책신고";
var missBookReportMsg="신고";
var nonBookMsg = "메세지가 없습니다";
var deliveryMsg="택배배달신청";
var deliveryTitleMsg = "메세지가 없습니다";
var printMsg = "인쇄";
var smsMsg = "SMS발송";
var selectMsg = "선택";

var bookbindMsg = "제본정보";
var detailholdinfoMsg = "권호정보";
var noItemsMsg = "결과가 없습니다.";
var subscriptionMsg = "구독";
var checkinyearMsg = "연도별 권호정보";
var yearhelpMsg = "연도를 선택하면 해당연도의 상세 권호정보를 보실 수 있습니다.";

var checkinMsg = "권호";
var pubdateMsg = "발행일";
var indateMsg = "입수일";
var articleMsg = "기사";
var appendixMsg = "부록";
var accessionnoMsg = "등록번호";
var checkinnameMsg = "권호명";
var densenoMsg = "밀집번호";
var metsMsg = "매체보기";

var isUseOpacSearch = "false";
var serviceMsg = "서비스";
var preserveMsg = "보존서고도서 신청";

var MSG_ERM_PRODUCED_BY = "제공처";
var MSG_ERM_COVERAGE_PERIOD = "원문제공기간";
var MSG_ERM_RESCNOTE = "주기";

var isSeriesReserve = "false";
var CONST_CHECKINVIEW_TYPE = "radio";
var isUseSerRemark = "false";
var serRemarkMsg = "결호내용";

var isDenseNoDisplay = "false";
var isUseMypreserve = "false";
var isUseSeriesDelivery = "false";

var isUseLocCheck = "N";

var infoServiceMsg = "서비스 이용안내";

var dbNameMsg = "수록DB명";
var offerPeriodMsg = "원문제공기간";
var delayPeriodMsg = "원문지연기간";
var mediaMsg = "바로가기";
var msgCheckinButton = "권호정보";
var msgBindingButton = "제본정보";

</script>
			<div class="searchBrief">


				<div class="dataSearch">
					<form name="refineSearch" method="get" action="bookSearchPro.bk">
						<fieldset>
							<input type="hidden" name="pn" value="1"> <input
								type="hidden" name="isRefine" value="Y"> <input
								type="hidden" name="commandType" value="advanced"><input
								type="hidden" name="lmtsn" value="000000000001"><input
								type="hidden" name="lmtsn" value="000000000003"> <input
								type="hidden" name="range" value="000000000021"><input
								type="hidden" name="_inc" value="on"><input
								type="hidden" name="_inc" value="on"><input
								type="hidden" name="_inc" value="on"><input
								type="hidden" name="_inc" value="on"><input
								type="hidden" name="_inc" value="on"> <input
								type="hidden" name="lmt0" value="TOTAL"> <input
								type="hidden" name="rf" value=""> <input type="hidden"
								name="lmt1" value="TOTAL"><input type="hidden"
								name="_lmt0" value="on"><input type="hidden"
								name="_lmt0" value="on"><input type="hidden"
								name="_lmt0" value="on"><input type="hidden"
								name="_lmt0" value="on"><input type="hidden"
								name="_lmt0" value="on"><input type="hidden"
								name="_lmt0" value="on"><input type="hidden" name="si"
								value="1"><input type="hidden" name="si" value="2"><input
								type="hidden" name="si" value="3"> <input type="hidden"
								name="weight2" value=""> <input type="hidden" name="mId"
								value=""> <input type="hidden" name="weight0" value="">
							<input type="hidden" name="weight1" value=""> <input
								type="hidden" name="inc" value="TOTAL"><input
								type="hidden" name="q" value="김영하"><input type="hidden"
								name="q" value=""><input type="hidden" name="q" value="">
							<input type="hidden" name="b0" value="and"> <input
								type="hidden" name="b1" value="and"><input type="hidden"
								name="lmtst" value="OR"><input type="hidden"
								name="lmtst" value="OR"> <input type="hidden" name="rt"
								value=""> <input type="hidden" name="st" value="KWRD">
							<input type="hidden" name="msc" value="10000"> <input
								type="hidden" name="cpp" value="10">
							<legend>검색항목</legend>
							<div class="searchSelect">
								<span> <input type="radio" id="stKWRD" name="st"
									value="KWRD" checked="checked"> <label for="stKWRD"
									class="cursor">키워드 </label>
								</span> <span> <input type="radio" id="stFRNT" name="st"
									value="FRNT"> <label for="stFRNT" class="cursor">전방일치</label>
								</span> <span> <input type="radio" id="stEXCT" name="st"
									value="EXCT"> <label for="stEXCT" class="cursor">완전일치</label>
								</span>
							</div>

							<select id="si1" name="search" title="검색 항목을 선택하는곳"
								class="searchOpt1 selectBox" style="display: none;">
								<option value="TOTAL">전체</option>
								<option value="bookName" selected="selected">서명</option>
								<option value="bookWriter">저자</option>
								<option value="bookPub">출판사</option>
								<option value="ISBN">ISBN</option>
							</select> <a
								href="https://cham.kiu.ac.kr/search/tot/result?st=KWRD&amp;commandType=advanced&amp;mId=&amp;si=1&amp;q=%EA%B9%80%EC%98%81%ED%95%98&amp;b0=and&amp;weight0=&amp;si=2&amp;q=&amp;b1=and&amp;weight1=&amp;si=3&amp;q=&amp;weight2=&amp;lmt0=TOTAL&amp;_lmt0=on&amp;lmtsn=000000000001&amp;lmtst=OR&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;inc=TOTAL&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;lmt1=TOTAL&amp;lmtsn=000000000003&amp;lmtst=OR&amp;rf=&amp;rt=&amp;range=000000000021&amp;cpp=10&amp;msc=10000#none"
								class="selectBox searchOpt1 selectBox-dropdown hide"
								title="검색 항목을 선택하는곳" tabindex="NaN" name="search"
								style="width: 118px; display: block;" disabled="disabled"><span
								class="selectBox-label" style="width: 74px;">전체</span><span
								class="selectBox-arrow"></span></a> <select id="si2" name="search"
								title="검색 항목을 선택하는곳" class="searchOpt1 hide selectBox"
								disabled="disabled" style="display: none;">
								<option value="TOTAL">전체</option>
								<option value="bookName" selected="selected">서명</option>
								<option value="bookWriter">저자</option>
								<option value="bookPub">출판사</option>
								<option value="ISBN">ISBN</option>
							</select><a
								href="https://cham.kiu.ac.kr/search/tot/result?st=KWRD&amp;commandType=advanced&amp;mId=&amp;si=1&amp;q=%EA%B9%80%EC%98%81%ED%95%98&amp;b0=and&amp;weight0=&amp;si=2&amp;q=&amp;b1=and&amp;weight1=&amp;si=3&amp;q=&amp;weight2=&amp;lmt0=TOTAL&amp;_lmt0=on&amp;lmtsn=000000000001&amp;lmtst=OR&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;inc=TOTAL&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;lmt1=TOTAL&amp;lmtsn=000000000003&amp;lmtst=OR&amp;rf=&amp;rt=&amp;range=000000000021&amp;cpp=10&amp;msc=10000#none"
								class="selectBox searchOpt1 hide selectBox-disabled selectBox-dropdown"
								title="검색 항목을 선택하는곳" tabindex="NaN"
								style="width: 118px; display: none;" disabled="disabled"><span
								class="selectBox-label" style="width: 74px;">전체</span><span
								class="selectBox-arrow"></span></a>
							<div class="searchW">

								<span class="keyword"><input type="text" name="value"
									title="검색어를 입력하세요" placeholder="${ value }"></span> 
									<span class="refine"><input type="checkbox" id="refine" name="refine" value="Y"> 
									<label for="refine">결과내 검색</label></span> 
									<input type="submit" value="검색" class="searchBtn">

							</div>
						</fieldset>
					</form>
				</div>
				<!-- //dataSearch -->

				<div class="searchWords">
					<dl class="searchKeyword">
						<dt>검색어</dt>
						<!-- <dd>[ 키워드 <span class="division">|</span> <span class="keyword">전체 : 행복 and 저자 : 롤링</span> ]</dd> -->
						<dd>
							<span class="keyword">[키워드 / ${search }:${value }]</span>
						</dd>

						<input type="button" class="addLink btnType2"
							onclick="addLink(&#39;(((([김영하,TOT,2,1,3]))))&#39;);" title="추가"
							value="추가" style="display: none;">

					</dl>

					<ul class="selectedFacet">

					</ul>

				</div>

				<div class="briefContent">

					<!-- //facet -->

					<div class="result">
						<div class="resultHeader">
							<!-- <p class="searchCnt">총 <span>8,091건</span> 중 <span>500건</span> 출력</p>-->
							<p class="searchCnt">

								총<strong> ${pageInfo.listCount }</strong>건 출력
							</p>
							<div class="resultInfo">
								<div class="listInfo1">
									<div class="breifPaging">

										<span class="current">${((pageInfo.page-1)*5) + 1 }</span> - ${((pageInfo.page-1)*5) + 6 } <a
											href="bookSearchPro.bk?page=${pageInfo.page + 1 }&search=${param.search}&value=${param.value}"
											class="lastPage" title="다음페이지로">
											<img src="bdstyle/image/ko/local/bookimages/breifLast.png" alt="다음페이지로"></a>

									</div>
								</div>

							</div>
							<div class="briefHeader sort">

								<div class="searchBtns2">
									<span><input type="checkbox" name="allcheck"
										onclick="checkedAll(this, 'briefFrm', 'data')"
										class="checkbox" title="전체선택" id="selectAll"><label
										for="selectAll">전체선택</label></span> <a
										href="javascript:addBasketSelect();"><img
										src="bdstyle/image/ko/local/bookimages/basket.jpg"
										alt="바구니 담기">바구니 담기</a>
								</div>

								<div class="sortOptions">

									<form id="searchOption" name="searchOption"
										action="https://cham.kiu.ac.kr/search/tot/result?st=KWRD&amp;commandType=advanced&amp;mId=&amp;si=1&amp;q=%EA%B9%80%EC%98%81%ED%95%98&amp;b0=and&amp;weight0=&amp;si=2&amp;q=&amp;b1=and&amp;weight1=&amp;si=3&amp;q=&amp;weight2=&amp;lmt0=TOTAL&amp;_lmt0=on&amp;lmtsn=000000000001&amp;lmtst=OR&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;inc=TOTAL&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;lmt1=TOTAL&amp;lmtsn=000000000003&amp;lmtst=OR&amp;rf=&amp;rt=&amp;range=000000000021&amp;cpp=10&amp;msc=10000"
										method="get">
										<fieldset>
											<legend>Search Option</legend>
										<!-- 	<input type="hidden" name="commandType" value="advanced"><input
												type="hidden" name="lmtsn" value="000000000001"><input
												type="hidden" name="lmtsn" value="000000000003"> <input
												type="hidden" name="range" value="000000000021"><input
												type="hidden" name="_inc" value="on"><input
												type="hidden" name="_inc" value="on"><input
												type="hidden" name="_inc" value="on"><input
												type="hidden" name="_inc" value="on"><input
												type="hidden" name="_inc" value="on"> <input
												type="hidden" name="lmt0" value="TOTAL"> <input
												type="hidden" name="rf" value=""> <input
												type="hidden" name="lmt1" value="TOTAL"><input
												type="hidden" name="_lmt0" value="on"><input
												type="hidden" name="_lmt0" value="on"><input
												type="hidden" name="_lmt0" value="on"><input
												type="hidden" name="_lmt0" value="on"><input
												type="hidden" name="_lmt0" value="on"><input
												type="hidden" name="_lmt0" value="on"><input
												type="hidden" name="si" value="1"><input
												type="hidden" name="si" value="2"><input
												type="hidden" name="si" value="3"> <input
												type="hidden" name="weight2" value=""> <input
												type="hidden" name="mId" value=""> <input
												type="hidden" name="weight0" value=""> <input
												type="hidden" name="weight1" value=""> <input
												type="hidden" name="inc" value="TOTAL"><input
												type="hidden" name="q" value="김영하"><input
												type="hidden" name="q" value=""><input type="hidden"
												name="q" value=""> <input type="hidden" name="b0"
												value="and"> <input type="hidden" name="b1"
												value="and"><input type="hidden" name="lmtst"
												value="OR"><input type="hidden" name="lmtst"
												value="OR"> <input type="hidden" name="rt" value="">
											<input type="hidden" name="st" value="KWRD"> 
									-->		
											<input type="hidden" name="msc" value="10000"> <select
												id="oi" name="oi" class="searchOpt2 selectBox" title="항목선택"
												style="display: none;">
										 
												<option value="">항목선택</option>

												<option value="DISP01">서명</option>

												<option value="DISP02">저자</option>

												<option value="DISP03">출판사</option>

												<option value="DISP04">청구기호</option>

												<option value="DISP06">출판년</option>



											</select> <select id="os" name="os" class="searchOpt2 selectBox"
												title="정렬" style="display: none;">
												<option value="">정렬</option>
												<option value="ASC">오름차순</option>
												<option value="DESC">내림차순</option>
											</select> <select id="cpp" name="cpp" class="searchOpt2 selectBox"
												title="쪽당 출력 건수" style="display: none;"><option
													value="5">5</option>
												<option value="10" selected="selected">10</option>
												<option value="15">15</option>
												<option value="20">20</option>
												<option value="30">30</option>
												<option value="50">50</option>
												<option value="100">100</option></select><a
												href="https://cham.kiu.ac.kr/search/tot/result?st=KWRD&amp;commandType=advanced&amp;mId=&amp;si=1&amp;q=%EA%B9%80%EC%98%81%ED%95%98&amp;b0=and&amp;weight0=&amp;si=2&amp;q=&amp;b1=and&amp;weight1=&amp;si=3&amp;q=&amp;weight2=&amp;lmt0=TOTAL&amp;_lmt0=on&amp;lmtsn=000000000001&amp;lmtst=OR&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;inc=TOTAL&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;lmt1=TOTAL&amp;lmtsn=000000000003&amp;lmtst=OR&amp;rf=&amp;rt=&amp;range=000000000021&amp;cpp=10&amp;msc=10000#none"
												class="selectBox searchOpt2 selectBox-dropdown"
												title="쪽당 출력 건수" tabindex="NaN"
												style="width: 48px; display: inline-block;"><span
												class="selectBox-label" style="width: 25px;">10</span><span
												class="selectBox-arrow"></span></a> <input type="submit"
												value="조회" class="btnType6">
										</fieldset>
									</form>
								</div>
							</div>
							<!-- //listInfo -->
						</div>
						<form name="briefFrm" method="post"
							action="https://cham.kiu.ac.kr/search/brief/service"
							onsubmit="return checked(this);">
							<fieldset>
								<legend>Service Form</legend>
								<input type="hidden" name="webSysdiv" value="TOT"> <input
									type="hidden" name="popupYn" value="N"> <input
									type="hidden" name="mainLink" value="/search/tot">
	
		
								<ul class="resultList resultDetail">
									<input type="hidden" name="firstData" value="CAT000000498079">
		
		<c:forEach var="list" items="${bookList }" varStatus="status">
									<li id="item_CATTOT000000498079" class="items">
										<dl>
											<dt class="title">선택</dt>
											<dd class="dataCheck">
												<input type="checkbox" name="data" value="CAT000000498079"
													title="선택">
											</dd>
											<dt class="title">No</dt>
											<dd class="num">${status.index + ((pageInfo.page-1)*5) + 1 }.</dd>
	
											<dt class="title">표지이미지</dt>
											<dd class="book">
												<a
													href="https://cham.kiu.ac.kr/search/detail/CATTOT000000498079?mainLink=/search/tot&amp;briefLink=/search/tot/result?commandType=advanced_A_cpp=10_A_lmtsn=000000000001_A_lmtsn=000000000003_A_range=000000000021_A__inc=on_A__inc=on_A__inc=on_A__inc=on_A__inc=on_A_lmt0=TOTAL_A_rf=_A_lmt1=TOTAL_A__lmt0=on_A__lmt0=on_A__lmt0=on_A__lmt0=on_A__lmt0=on_A__lmt0=on_A_si=1_A_si=2_A_si=3_A_weight2=_A_mId=_A_weight0=_A_weight1=_A_inc=TOTAL_A_q=%EA%B9%80%EC%98%81%ED%95%98_A_q=_A_q=_A_b0=and_A_b1=and_A_lmtst=OR_A_lmtst=OR_A_rt=_A_st=KWRD_A_msc=10000">
													<img id="bookImg_CATTOT000000498079"
													src="bdstyle/image/ko/local/bookimages/06236172.jpg"
													width="75" height="103" alt="표지이미지">
												</a>

												<p class="selectBtn">

													<a id="basket_CAT000000498079"
														href="javascript:toggleBasket(&#39;CAT000000498079&#39;);"
														class="cartBtn " title="바구니 담기">바구니 담기</a>
												</p>
											</dd>

											<dt class="title">서명</dt>
											<dd class="title">
											<c:choose>
												<c:when test="${search == 'bookName' }">
													<a href="bookInfo.bk?page=${pageInfo.page }&bookName=&value=${param.value}">
													<span class="hilight">${list.bookName }</span> : ${list.bookWriter }</a>
												</c:when>
												<c:otherwise>
													<a href="bookInfo.bk?page=${pageInfo.page }&search=${param.search}&value=${param.value}">${list.bookName } : 
													<span class="hilight">${list.bookWriter }</span></a>
												</c:otherwise>
											</c:choose>
												
												<button type="button" title="상세보기"
													onclick="previewDetail('CATTOT000000498079')">상세보기</button>

												<input type="button" class="addItem btnType2"
													onclick="addItem('data=CAT000000498079');"
													title="추가" value="추가" style="display: none;">
											</dd>
		
											<dt class="title">저자</dt>
											<dd class="info">지은이 : ${list.bookWriter }</dd>
											<dt class="title">출판사</dt>
											<dd class="info">${list.bookPub }</dd>
											<dt class="title">청구기호</dt>
											<dt class="title">출판년</dt>
											<dd class="info">${list.bookPubDate }</dd>
											<dt class="title">미리보기</dt>
											<dd class="preview">
												<div id="prevDetail_CATTOT000000498079" class="detailInfo"
													style="display: none;"></div>
											</dd>
											<dt class="title">자료유형</dt>
											<dd class="type info">
												<img alt="도서" title="도서"
													src="bdstyle/image/ko/solution/common/ico/type_m.png">
												도서
											</dd>

											<dt class="title">매체정보</dt>
											<dd class="media"></dd>
											<dt class="title">소장처 정보</dt>
											<dd class="holdingInfo">
												
												<div class="holding">
													<p class="location">
														<a
															href="https://cham.kiu.ac.kr/search/tot/result?st=KWRD&amp;commandType=advanced&amp;mId=&amp;si=1&amp;q=%EA%B9%80%EC%98%81%ED%95%98&amp;b0=and&amp;weight0=&amp;si=2&amp;q=&amp;b1=and&amp;weight1=&amp;si=3&amp;q=&amp;weight2=&amp;lmt0=TOTAL&amp;_lmt0=on&amp;lmtsn=000000000001&amp;lmtst=OR&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;inc=TOTAL&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;lmt1=TOTAL&amp;lmtsn=000000000003&amp;lmtst=OR&amp;rf=&amp;rt=&amp;range=000000000021&amp;cpp=10&amp;msc=10000#previewLocation"
															onclick="javascript:previewHolding('1','1','CAT000000498079','A0000001')">학술정보원<span
															id="availableButton_CAT000000498079_1"
															class="availableBtn enabled">대출가능</span></a>
													</p>
													<div id="holdingW_CAT000000498079_1" class="holdingW"
														style="display: none;"></div>
												</div>
											</dd>
										</dl>
									</li>
								</c:forEach>	
								</ul>
		<div class="paging">
	<!-- 	<section id="pageList">  -->
		
			<!--  이전 페이지 생성 조건 -->
			<c:choose>
				<c:when test="${pageInfo.page <= 1 }">
						[이전]&nbsp;
					</c:when>
				<c:otherwise>
					<a href="bookSearchPro.bk?page=${pageInfo.page - 1 }">[이전]</a>&nbsp;
					</c:otherwise>
			</c:choose>
			<!-- 페이지 번호&이동 생성 조 -->
			<c:forEach begin="${pageInfo.startPage }" end="${pageInfo.endPage }"
				var="a" step="1">
				<c:choose>
					<c:when test="${a == pageInfo.page }">			
						&nbsp;${a }
						</c:when>
					<c:otherwise>
						<a href="bookSearchPro.bk?page=${a }&search=${param.search}&value=${param.value}">&nbsp;${a }</a>&nbsp;
						</c:otherwise>
				</c:choose>
			</c:forEach>
			<!--다음 페이지 생성 조건 -->
			<c:choose>
				<c:when test="${pageInfo.page >= pageInfo.maxPage }">
				[다음]
			</c:when>
				<c:otherwise>
					<a href="bookSearchPro.bk?page=${pageInfo.page + 1 }&search=${param.search}&value=${param.value}">[다음]</a>
				</c:otherwise>
			</c:choose>

	<!-- 	</section>  -->

								</div>
							</fieldset>
						</form>
					</div>
					<!-- //resultInfo -->
				</div>
			</div>
			<!-- //brief -->
			<form name="frmDigicolPopup"
				action="https://cham.kiu.ac.kr/search/tot/result?st=KWRD&amp;commandType=advanced&amp;mId=&amp;si=1&amp;q=%EA%B9%80%EC%98%81%ED%95%98&amp;b0=and&amp;weight0=&amp;si=2&amp;q=&amp;b1=and&amp;weight1=&amp;si=3&amp;q=&amp;weight2=&amp;lmt0=TOTAL&amp;_lmt0=on&amp;lmtsn=000000000001&amp;lmtst=OR&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;_lmt0=on&amp;inc=TOTAL&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;_inc=on&amp;lmt1=TOTAL&amp;lmtsn=000000000003&amp;lmtst=OR&amp;rf=&amp;rt=&amp;range=000000000021&amp;cpp=10&amp;msc=10000">
				<input type="hidden" name="data"><input type="hidden"
					name="digicol_type" value="0003">
			</form>

			<script type="text/javascript">
var IS_USE_OPAC_SEARCH = "false";
var MSG_ERROR_NOT_FIND = "";
var MSG_VALID_LOGIN = "로그인 후 이용하세요.";
var MSG_VALID_SEND_SMS = "발송하시겠습니까?";
var MSG_VALID_COMPLETE_SMS = "발송되었습니다.";
var SITE_CODE = "A0000001";
var TITLE_BASKET = "바구니";
var INFO_BASKET_INPUT = "바구니에 담았습니다.";
var INFO_BASKET_DEL= "바구니에서 삭제 하였습니다.";
var WARN_CHECK_FIELDS = "항목을 체크하세요.";  //항목을 체크하세요.

var SELECT_HOLDING_MODULE = '';
var USE_SERVICE = true;

var saveBtn = "저장";
var mailBtn = "메일";
var printBtn= "인쇄";
var previewBtn = "미리보기";
var endNoteBtn = "EndNote";
var refWorksBtn = "RefWorks";
var selectBtn = "선택";
var imagePath = "/image/ko/";
$.global = {
		resizeMove : null,
		resizeDraw : null,
		resizeSelectBox : null
	};
	
var facetYearList = ['2015','2009','2010','2017','2005','2006','2014','2003','2004','2007','2008','2013','2018','2019'];

var facetYearCount = {};facetYearCount['2015']=5;facetYearCount['2009']=3;facetYearCount['2010']=3;facetYearCount['2017']=3;facetYearCount['2005']=2;facetYearCount['2006']=2;facetYearCount['2014']=2;facetYearCount['2003']=1;facetYearCount['2004']=1;facetYearCount['2007']=1;facetYearCount['2008']=1;facetYearCount['2013']=1;facetYearCount['2018']=1;facetYearCount['2019']=1;

</script>
<script type="text/javascript">
var isUseMypreserveInfo = "false";
var isUseDeliveryInfo = "true";
var isUseLoanreqInfo = "false";
var isUseMissrepoInfo = "false";
var isUseCampusLoanInfo = "false";
var isUsePosPrintInfo = "true";
var isSendSmsInfo = "false";
var isUseBookShelf = "false";
</script>
			<script type="text/javascript"
				src="./전체 _ 경일대학교 도서관_files/ajaxCommon.js"></script>
			<script type="text/javascript"
				src="./전체 _ 경일대학교 도서관_files/brief.js"></script>
			<script type="text/javascript"
				src="./전체 _ 경일대학교 도서관_files/media.js"></script>
			<script type="text/javascript"
				src="./전체 _ 경일대학교 도서관_files/mylibrary.js"></script>
			<script type="text/javascript"
				src="./전체 _ 경일대학교 도서관_files/Checkbox.js"></script>
			<script type="text/javascript"
				src="./전체 _ 경일대학교 도서관_files/jquery.bgiframe.js"></script>
			<script type="text/javascript"
				src="./전체 _ 경일대학교 도서관_files/toastr.min.js"></script>
			<script type="text/javascript"
				src="./전체 _ 경일대학교 도서관_files/jquery.mThumbnailScroller.js"></script>
			<script type="text/javascript"
				src="./전체 _ 경일대학교 도서관_files/jquery.selectBox.js"></script>
			<script type="text/javascript"
				src="./전체 _ 경일대학교 도서관_files/jquery-ui.js"></script>
			<script type="text/javascript"
				src="./전체 _ 경일대학교 도서관_files/Nwagon.js"></script>

			<script type="text/javascript">
var winWidth = window.innerWidth || document.documentElement.clientWidth;
$(window).load(function(){
	
	var _data = getGraphData();
	setGraph(_data, true);
	
	if(winWidth < 768){
		$('.typeList ul').hide();
	}
});

$(document).ready(function() {
	callThumbnail('bookImg_CATTOT000000498079','9788954610148','CAT','000000498079');callThumbnail('bookImg_CATTOT000000489502','9788954645614','CAT','000000489502');callThumbnail('bookImg_CATTOT000000160081','8989351359','CAT','000000160081');callThumbnail('bookImg_CATTOT000000204313','9788954611763','CAT','000000204313');callThumbnail('bookImg_CATTOT000000504248','9788954655972','CAT','000000504248');callThumbnail('bookImg_CATTOT000000228729','9788954635356','CAT','000000228729');callThumbnail('bookImg_CATTOT000000232359','9788954638401','CAT','000000232359');callThumbnail('bookImg_CATTOT000000225085','9788954625470','CAT','000000225085');callThumbnail('bookImg_CATTOT000000220333','9788972752288','CAT','000000220333');callThumbnail('bookImg_CATTOT000000225563','9788954623391','CAT','000000225563');

	$('.mobileTable').footable({
		breakpoints: {
			phone: 1024,
			tablet: 1024
		}
	});

	// 갤러리, 갤러리 상세, 간략 선택-모바일
	if(winWidth < 768){
		$('.typeSelect a').toggle(function(){
			$(this).parent().next().children().show();
			$(this).children().eq(1).attr({'src':'/image/ko/solution/common/ico/calTypeClose.png'},{'alt':'닫기'});
		},function(){
			$(this).parent().next().children().hide();
			$(this).children().eq(1).attr({'src':'/image/ko/solution/common/ico/calTypeOpen.png'},{'alt':'열기'});
		});
	}
	
	$(window).resize(function(){
        winWidth = window.innerWidth || document.documentElement.clientWidth;
        if(winWidth < 768){
                  $('.typeList ul').hide();
                  $('.typeSelect a img').eq(1).attr({'src':'/image/ko/solution/common/ico/calTypeOpen.png'},{'alt':'닫기'});
                  $('.typeSelect a').toggle(function(){
                             $(this).parent().next().children().show();
                             $(this).children().eq(1).attr({'src':'/image/ko/solution/common/ico/calTypeClose.png'},{'alt':'닫기'});
                  },function(){
                             $(this).parent().next().children().hide();
                             $(this).children().eq(1).attr({'src':'/image/ko/solution/common/ico/calTypeOpen.png'},{'alt':'열기'});
                  });
        }else{
                  $('.typeList ul').show();
        }
});


	
	// 모바일 좌측메뉴 이벤트

	if($(window).width() > 767){
	
		$(".facet .listOpenBtn").unbind(".listOpen");
		$(".facet .listOpenBtn").bind("click.listOpen", function() {
			
			if($(".facet .listOpenBtn").hasClass("close"))
			{
				$(".facetList dd").show();
				$(".facet dt a").removeClass();
				$(".facet dt a").attr("class","open");
				$(".facet .listOpenBtn").toggleClass("close");
			}
			else
			{
				$(".facetList dd").hide();
				$(".facet dt a").removeClass();
				$(".facet .listOpenBtn").toggleClass("close");
			}
		});
		
		$(".facetList > ul").show();
		$(".facetList dd").show();
		$(".facet dt a").removeClass();
		$(".facet dt a").attr("class","open");
	}else{
		$(".facet .listOpenBtn").unbind(".listOpen");
		$(".facet .listOpenBtn").bind("click.listOpen", function() {
			$(".facetList > ul").toggle();
		});
		$(".facetList > ul").hide();
	}
	$(window).resize(function(){
        if($(window).width() > 767){
        	$(".facet .listOpenBtn").unbind(".listOpen");
        	$(".facet .listOpenBtn").bind("click.listOpen", function() {
        		if($(".facet .listOpenBtn").hasClass("close"))
    			{
    				$(".facet .listOpenBtn").toggleClass("close");
    				$(".facetList dd").hide();
    				$(".facet dt a").removeClass();
    				$(".facet dt a").attr("class","open");
    			}
    			else
    			{
    				$(".facet .listOpenBtn").toggleClass("close");
    				$(".facetList dd").show();
    				$(".facet dt a").removeClass();
    			}
       		});
            $(".facetList > ul").show();
        }else{
        	$(".facet .listOpenBtn").unbind(".listOpen");
        	$(".facet .listOpenBtn").bind("click.listOpen", function() {
        		$(".facetList > ul").toggle();
        	});
        }
	});
	
	$(".facet dt a").bind("click", function() {
	        $(this).parent().next().toggle();
	        $(this).toggleClass("open");
	        return false;
	});


	// 자료유형 1Depth 클릭 이벤트
	$(".taxonomy button").bind("click", function() {
		$(this).parent().toggleClass("open");
		$(this).parent().find("ul").toggle();
		return false;
	});

	// 자료유형 2Depth 클릭 이벤트
	$(".taxonomy li li a").bind("click", function() {
		$(this).toggleClass("selected");
		return false;
	});

	// 더보기 클릭 이벤트
	$(".facet .more").each(function() {
		$(this).parent("dd").find("li").eq(4).nextAll().hide();
	});
	
	$(".facet .more button").bind("click", function() {
		$(this).parents(".more").toggleClass("open");
		var $list = $(this).parents("dd").find("li");
		if ($(this).hasClass("moreList")) { // 더보기
			$list.show();
		} else { //닫기
			$list.eq(4).nextAll().hide();
		}
	});
	
	//$(".facet dt a").click();
	

	// 내보내기 이벤트
	$("#exportSelected").click(function() {
		if ($("input:checkbox[name=data]:checked").length == 0) {
 			alert("선택한 내보내기가 없습니다.");
			return false;
		}
		$("#export").toggle();
		return false;
	});

    // 공유, 내보내기 이벤트
    $(".searchLink > ul > li > a").click(function() {
        var id = $(this).attr("href");
        if ($(id).size() == 0) return true;
        
        $(id).toggle().siblings("div").hide();
        $(this).parent().toggleClass("on").siblings().removeClass("on");
        
        $( "#exportForm" ).reset();
        $( 'input[type="submit"]' ).val("확인");
        return false;
    });

    // 서지정보 내보내기 이벤트
	$(".exportType input").focus(function() {
	    var $parent = $(this).parent();
	    if ($parent.hasClass("exportMail")) $(".export .mail").show();

	    if ($parent.hasClass("exportEndNote")) {
	        $(".export .range").hide();
	        $(".export .mail").hide();
	        $(".export .refworks").hide();
	        $(".export .endnote").show();
	    }
	    else if ($parent.hasClass("exportRefWorks")) {
	    	$(".export .range").hide();
		    $(".export .mail").hide();
	        $(".export .refworks").show();
	        $(".export .endnote").hide();
	    } 
	    else if ($parent.hasClass("exportHtml") || $parent.hasClass("exportPrint") || $parent.hasClass("exportPreview")) {
	    	$(".export .mail").hide();
	    	$(".export .range").show();
	        $(".export .refworks").hide();
	        $(".export .endnote").hide();
	    } else {
	        $(".export .range").show();
	        $(".export .refworks").hide();
	        $(".export .endnote").hide();
	    }
	});
    
    $( "#exportForm" ).submit(function( event ) {
    	
    	$('#exportForm > input[name=data]').remove();
    	
    	$("input:checkbox[name=data]:checked").each(function() {
    		$('<input>').attr({
    			type: 'hidden',
    			name: 'data',
    			value: this.value
    		}).appendTo("#exportForm");
    	});
    	
    	if ($( 'input:checked[type="radio"]' ).val()  == "html") {
    		$( 'input[type="submit"]' ).val(saveBtn);
    	} else if($( 'input:checked[type="radio"]' ).val() == "email") {
    		$( 'input[type="submit"]' ).val(mailBtn);
    	} else if($( 'input:checked[type="radio"]' ).val() == "print") {
    		$( 'input[type="submit"]' ).val(printBtn);
    	} else if($( 'input:checked[type="radio"]' ).val() == "preview") {
    		$( 'input[type="submit"]' ).val(previewBtn);
    	} else if($( 'input:checked[type="radio"]' ).val() == "endnote") {
    		$( 'input[type="submit"]' ).val(endNoteBtn);
    		$( "#exportForm" ).attr("action","/search/endnote/export");        
        } else if($( 'input:checked[type="radio"]' ).val() == "refworks") {
        	$( 'input[type="submit"]' ).val(refWorksBtn);
        	$( "#exportForm" ).attr("action","/search/refworks/export");
        }
    	
    	$("#export").toggle();
    });
    
    $(".export input[type='reset']").click(function() {
        $("#export, .export .mail, .export .notice").hide();
        $(".export .range").show();
        $(".searchLink .mail").removeClass("on");
    });
    
	// 서비스 이용안내 클릭 이벤트
	$("div.service dt").click(function() {
		$(this).next().toggle();
	});

	$("input:radio[name='st']").change(function(){
		idx=$(this).parent().index();
		$('.dataSearch .searchOpt1').hide().addClass('hide');
		$('.dataSearch .searchOpt1').eq(idx).removeClass('hide');
		$('.dataSearch a.searchOpt1').hide();
		$('.dataSearch .searchOpt1').selectBox('disable');

		if ($("input:radio[name='st']:checked").val() == 'EXCT') {
            $('.dataSearch .searchOpt1').hide().addClass('hide');
            $('.dataSearch .searchOpt1').eq(1).removeClass('hide');
            $('.dataSearch a.searchOpt1').hide();
            $('.dataSearch .searchOpt1').selectBox('disable');
 		}
		
		if ($("input:radio[name='st']:checked").val() == 'KWRD') {
			$('.dataSearch a.searchOpt1').eq(0).show();
			$('.dataSearch select.searchOpt1').eq(0).selectBox('enable');
	    } else {
			$('.dataSearch a.searchOpt1').eq(1).show();
			$('.dataSearch select.searchOpt1').eq(1).selectBox('enable');
	    }
		
		var ua = window.navigator.userAgent.toLowerCase();
		if ( /iphone/.test(ua) || /android/.test(ua) || /opera/.test(ua) || /bada/.test(ua) || /ipad/.test(ua) || /ipod/.test(ua) ) {		    
			if ($("input:radio[name='st']:checked").val() == 'KWRD') {
				$('.dataSearch .searchOpt1').eq(0).show();
				$('.dataSearch .searchOpt1').eq(1).hide();
		    } else {
				$('.dataSearch .searchOpt1').eq(1).show();
				$('.dataSearch .searchOpt1').eq(0).hide();
		    }
		}
	});
	
	$("#stKWRD").attr('checked','checked');
	$("#stKWRD").change();
	
	viewBasketCount();
	
	

	/*
	//내바구니 담기, 내보내기, 미리보기 선택
	$(".selectBtn a").bind("click", function() {
		if ($(this).hasClass("previewBtn")) {
			var $parents = $(this).parents(".items");
			$(".preview", $parents).toggle();
		}
		$(this).toggleClass("selected");
		return false;
	});
	*/
});



$(window).resize(function() {
	
	var stval = $("input:radio[name='st']:checked").val();
	
	if (stval == 'KWRD') {
		$('.searchSelect span').first().children().eq(0).attr('checked','checked');
		$('.dataSearch select.searchOpt1').eq(0).selectBox('enable');
	}
	else {
		$('.searchSelect span').first().children().eq(1).attr('checked','checked');
		$('.dataSearch select.searchOpt1').eq(1).selectBox('enable');
	}
	$(".searchOpt1").selectBox('destroy').selectBox();
	$('.dataSearch a.hide').hide();
	$("#stKWRD").change();
});

var isUseDdsLink = false;
var isUseHopeBookLink = false;
</script>

			<script>
function addLinkPop (query) {
	document.frmDigicolPopup.action="/digicol/pop/writeitem";
	document.frmDigicolPopup.data.value=query;
	var options = "width=600,height=550,resizable=no,top=100,left=200,scrollbars=yes";
	window.open('',"digicolSave",options);
	
	document.frmDigicolPopup.target="digicolSave";
	document.frmDigicolPopup.submit();
}
</script>
		</div>

		<ul class="resultList resultDetail">

		</ul>


	</div>
</div>

