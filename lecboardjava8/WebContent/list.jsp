<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<title>게시글 목록</title>
<style>
    table, th, td {
        border: 1px solid white;
    }
    th {
        background-color: #555;
        color: white;
    }
</style>
</head>
<body> 
<div class="text-container">
<h1>게시글 리스트</h1>
<table>
    <tr class="table">
        <th >번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>수정일</th>
        <th>조회수</th>
        <th>카테고리</th>
    </tr>
    
    <c:forEach items="${articleList}" var="article">
        <tr>
            <td>${article.idx}</td>
            <td><a href="content.do?idx=${article.idx }">${article.title}</a></td>
            <td>${article.writer}</td>
            <td>${article.reg_date}</td>
            <td>${article.mod_date}</td>
            <td>${article.hit_count}</td>
            <td>${article.category }</td>
            
        </tr>
    </c:forEach>
</table>
</div>
<a href="write.do">글쓰기</a>
</body>
</html>