<%@page import="java.sql.*"%>
<%@page import="java.util.regex.Pattern"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 조회</title>
</head>
<body>
<h1>게시글 조회</h1>
<c:forEach items="${articleList}" var="article">
<table>
	<tr>
        <th>번호</th>
        <td>${article.idx}</td>
        <th>작성자</th>
        <td>${article.writer}</td>
        <th>작성일</th>
        <td>${article.reg_date}</td>
        <th>수정일</th>
        <td>${article.mod_date}</td>
        <th>조회수</th>
        <td>${hit_count}</td>
    </tr>
    <tr>
    	<th colspan="2">제목</th>
        <td colspan="7">${article.title}</td>
    </tr>
    <tr>
    	<th colspan="2">내용</th>
        <td colspan="7">${article.content}</td>
    </tr>
</table>
<a href="delete.do?idx=${article.idx}">게시글 삭제</a>
<a href="modify.do?idx=${article.idx}">게시글 수정</a>
</c:forEach>
<a href="list.do">목록으로</a>
</body>
</html>