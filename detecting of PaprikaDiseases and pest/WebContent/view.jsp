<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<head>
<meta charset="UTF-8">
<title>사진첨부</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
   function readURL(input) {
      if (input.files && input.files[0]) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        $('#preview').attr('src', e.target.result);
          }
         reader.readAsDataURL(input.files[0]);
      }
  }
 
</script>
 <title>사진첨부</title>
 <style>
 	.a{
 		position : relative;
 		left : 250px;
 	}
 	.b{
 		position: absolute;
 		left : 265px;
 		top : 460px;
 	}
 	.main{
 		font-size : 20px;
 		text-align : center;
 	}
 	.c{
 		position: absolute;
 		right : 250px;
 	}
 </style>
 
 <link href="css/header.css" rel="stylesheet">
<link href="image/logo_back_white.png" rel="shortcut icon" type="image/x-icon">
<link href="css/footer.css" rel="stylesheet">
</head>
<body>
<header>
	<jsp:include page="header.jsp"></jsp:include>
</header>
<contents>
	<div style="position: relative;
    top: 25%;">
		<form class="main">
				<div class = "a">
					<img  id="preview" src="#"   alt = "before" align = "left" width=350 height=400/>
				</div>
				<div class = "b">
					<input type ="file" name="imageFileName"  onchange="readURL(this);"/>
					<input type = "submit" value = "저장하기" name ="resultSave"/>
				</div>
				<div class = "c">
					<img  id="preview" src="#"   alt = "after" width=350 height=400/>
				</div>
		</form>
	</div>

</contents>

<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
</body>
</html>