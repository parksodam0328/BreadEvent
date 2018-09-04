<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/index.css">
<style>
* {box-sizing: border-box;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 30%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
</head>
<body>
<div id="content">
	<div id="box">
		<div width="100%" height="100%">
			<span style="left:75%; top:13%; position:absolute;"><a onclick="document.getElementById('id02').style.display='block'"> 로그인 </a>| <a onclick="document.getElementById('id01').style.display='block'">회원가입</a></span>
			<img width="70%" height="65%" src="images/map.jpg" style="left:15%; top:16%; position:absolute;">
			<img src="images/sandwich.png" width="90px" height="60px" style="position:absolute; top:23%; left:20%;">
			<img src="images/baguette.png" width="90px" height="60px" style="position:absolute; top:40%; left:50%;">
			<img src="images/bacon.png" width="90px" height="60px" style="position:absolute; top:50%; left:45%;">
			<img src="images/croissant.png" width="90px" height="60px" style="position:absolute; top:68%; left:33%;">
			<img src="images/hot-dog.png" width="90px" height="60px" style="position:absolute; top:68%; left:66%;">
			<img src="images/sandwich (1).png" width="90px" height="80px" style="position:absolute; top:30%; left:66%;">
		</div>
	</div>
</div>

<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="/action_page.php">
    <div class="container">
      <h1>회원가입</h1>
      <hr>
      <label for="ID"><b>아이디</b></label>
      <input type="text" placeholder="아이디" name="userID" required>

      <label for="psw"><b>비밀번호</b></label>
      <input type="password" placeholder="비밀번호" name="userPassword" required>

	  <label for="name"><b>이름</b></label>
      <input type="text" placeholder="이름" name="userName" required>
      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">취소</button>
        <button type="submit" class="signupbtn">회원가입</button>
      </div>
    </div>
  </form>
</div>

<div id="id02" class="modal">
  <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" action="loginAction.jsp">
    <div class="container">
      <h1>회원가입</h1>
      <hr>
      <label for="ID"><b>아이디</b></label>
      <input type="text" placeholder="아이디" name="userID" required>

      <label for="psw"><b>비밀번호</b></label>
      <input type="password" placeholder="비밀번호" name="userPassword" required>
      
      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id02').style.display='none'; document.getElementById('id01').style.display='block'" class="cancelbtn">회원가입</button>
        <button type="submit" class="signupbtn">로그인</button>
      </div>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

var modal = document.getElementById('id02');

//When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
 if (event.target == modal) {
     modal.style.display = "none";
 }
}
</script>
</body>
</html>