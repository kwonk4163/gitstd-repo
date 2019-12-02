<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@page import="java.util.regex.Pattern"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>
<c:forEach items="${articleList}" var="article">
<form action="update.do" method="post" onsubmit="return formCheck();">
	<input type="hidden" name="idx" value="${article.idx }">
	번호: ${article.idx }, 작성자: ${article.writer }, 
	작성일: ${article.reg_date } 수정일: ${article.mod_date }, 조회수: ${article.hit_count }<br>
    제목: <input type="text" name="title" value="${article.title }"/><br />
    <!-- 작성자: <input type="text" name="writer"/><br /> -->
    내용: <textarea name="content" cols="30" rows="10">${article.content }</textarea><br />
    <input type="submit"/>
</form>
</c:forEach>

<script>
    function formCheck() {
        var title, writer, regdate, content, myForm;
        myForm = document.forms[0];
        title = myForm.title.value;
        writer = myForm.writer.value;
        regdate = myForm.regdate.value;
        content = myForm.content.value;
        
        if(title == null || title == ""){
            alert("제목을 입력하세요");
            myForm.title.focus();
            return false;
        }
        if(writer == null || writer == ""){
            alert("제목을 입력하세요");
            myForm.writer.focus();
            return false;
        }
        if(regdate == null || regdate == ""){
            alert("제목을 입력하세요");
            myForm.regdate.focus();
            return false;
        }
        if(content == null || content == ""){
            alert("제목을 입력하세요");
            myForm.content.focus();
            return false;
        }
    }
</script>
</body>
</html>