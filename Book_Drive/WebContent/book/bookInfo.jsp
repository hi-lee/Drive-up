<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="divContentsW">
	<div id="divContents">
		<table>
			<tr>
				<td>서명 :</td>
				<td>${book.bookName }</td>
				<td>${param.bookName }</td>
			</tr>
			<tr>
				<td>저자 :</td>
				<td>${book.bookWriter }</td>
			</tr>
			<tr>
				<td>출판사 :</td>
				<td>${book.bookPub }</td>
			</tr>
		</table>
		
		<a href="bookSearchPro.bk?page=${param.page }">목록보기 </a>
	</div>
</div>

