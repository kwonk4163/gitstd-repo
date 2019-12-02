<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
button:hover {background-color:#00e8ff; }
.container  {font-family: 'Hi Melody', cursive;}
.container i {font-family: 'Hi Melody', cursive; font-size:20px;}
</style>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Hi+Melody&display=swap" rel="stylesheet">
 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<title>게시글 작성</title>
</head>
<body>
<div class="container">
<h2>글 작성하기</h2>
<form class="form-class" action="insert.do" method="post" onsubmit="return formCheck();">
<i class="fa fa-user">작성자</i><input class="form-control" type="text" name="writer" style="width:250px;" >
    <i class="fa fa-bookmark">제목</i> <input class="form-control" type="text" name="title" style="width:600px;" />
    <!-- 작성자: <input type="text" name="writer"/><br /> -->
   <i class="fa fa-align-right">내용</i><textarea class="form-control" name="content" cols="30" rows="10"></textarea><br /><br>
  <i class="fa fa-drop	box"> 카테고리</i><select class="form-control" name="category" style="width:200px;">
	<option value="공지">공지
		<option value="일반">일반  
  </select><br>
    <button class="form-control" type="submit" value="글작성하기"/ style="width:500px; height:100px; margin-left:300px; font-size:30px;">글 작성하기</button>
</form>
</div>
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