.<%@page import="dao.MemberDao"%>
<%@page import="dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MemberDto mem = (MemberDto)session.getAttribute("login");
if(mem == null || mem.getNickname()== null || mem.getNickname().equals("")){
%>  
   <script>
   alert("로그인 해 주십시오");
   location.href = "<%=request.getContextPath()%>/z_login/login.jsp";
   </script>   
<%
}
%>     
<!DOCTYPE html>

<html>
<head>
<title>Insert title here</title>
<style type="text/css">
.button {
  width: 140px;
  height: 45px;
  font-size: 13px;
  text-transform: uppercase;
  letter-spacing: 2.5px;
  font-weight: 500;
  color: #000;
  background-color: dark;
  border: none;
  border-radius: 45px;
  box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease 0s;
  cursor: pointer;
  outline: none;
  }

.button:hover {
  background-color: orange;
  box-shadow: orange;
  color: #fff;
  transform: translateY(-7px);
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/all.css">
</head>
<body>
<%try {%>
<a href="/a_GoBack_JJIN/index.jsp?toss=bbs/bbslist"><img alt="" src="./image/worry.png"></a><br><br>
<div align="left" class="container" style="width: 1000px" >
<form action="<%=request.getContextPath() %>/index.jsp?toss=bbs/bbswriteAf" method="post" enctype="multipart/form-data">
<input type="hidden" name="nickname" value="<%=mem.getNickname()%>">
   <select name="cago" class="form-control" style="width: 200px; height: 30px; font-size: 13px;">
      <option value="" class="disabled">- 카테고리를 선택하세요 -</option>
      <option value="학업·진로">학업·진로</option>
      <option value="연애·가족">연애·가족</option>
      <option value="대인관계">대인관계</option>
      <option value="심리·정서">심리·정서</option>
      <option value="금전">금전</option>
      <option value="기타">기타</option>
   </select>
   <br>
    <textarea rows="1" cols="70" name="title" style=" margin: 0px; border-color: white; font-size: 25px" placeholder="제목을 입력하세요."></textarea><hr>
      <textarea rows="10" cols="85" name="content"style=" margin: 0px; border-color: white; font-size: 20px" placeholder="내용을 입력하세요."></textarea><hr>
      <table>
      <col width="1000px">
      <tr><td>
      <input type="file" name="fileload" style="width: 400px">
   </td></tr>
   <tr align="right"><td>
   <input type="submit" class="btn btn-secondary" id="commentWrite" value="작성하기" style='width:70px; font-size: 13px; padding: 3px 3px 3px 3px;'>
   </td></tr></table>
</form>
</div>
<%}catch(Exception e){ %>
   <script>
   alert("로그인 해 주십시오");
   location.href = "<%=request.getContextPath()%>/z_login/login.jsp";
   </script>   
<%
}
%> 
</body>
</html>