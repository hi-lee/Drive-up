<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String openInit = "false";
	if(request.getParameter("openInit")!=null) {
		openInit="true";
	}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="bdstyle/style/ko/home/login.css">
<meta charset="UTF-8">
<title>아이디 중복 검사 </title>
<script>
function init() {
	if(<%=openInit%>){
		document.getElementById("userID").value = opener.document.getElementById("userID").value;		
	}
}
function ok(v){
	opener.idcheck=v.trim();
	opener.document.getElementById("userID").value = v;
	opener.chkld = true;
	window.close();
}
</script>
</head>

<body onload = "init()">
<form action = "idCheckProcess.jsp" method="post" name=f>
	<input type="text" name="id" id="id"/>
	<input type="submit" value="중복확인"/>		
</form>
<% 
	
	if(request.getParameter("chk_id")!=null){
		String chk_id = request.getParameter("chk_id");
		String useble = request.getParameter("useble");
		out.print("<hr>");
		if(useble.equals("yes")){
			out.print("<h3>" + chk_id + "는 사용 가능한 아이디입니다. <a href='#' onclick=\"ok('" + chk_id + "')\"> 사용하기 </a></h3>");
		} else {
			out.println("<h3>" + chk_id + "는 사용 불가능한 아이디입니다. 다시 입력하세요.</h3>");
		}
		
	}
%>
</body>
</html>
