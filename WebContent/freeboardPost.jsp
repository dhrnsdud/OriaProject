<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<title>글쓰기</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
<script>

</script>
</head>
<body>
<jsp:include page="Title.jsp">
<jsp:param value="a" name="a"/>
</jsp:include>
<br/><br/><br/>

<jsp:useBean id="dao" class="model.freeBoardDao"></jsp:useBean>
   
      <br>
      <br>
      <h2>자유 게시판</h2>
      <br>
      <table width=80%  cellspacing=0 cellpadding=3 >
         <form method=post action="project">
            <input type="hidden" name="cmd" value="FREEBOARDINSERT" />
            
            <tr>
               <td align=center>
                  <table border=0 width=100% align=center class="table table-striped">
                     <tr>
                        <td width=10%>이름</td>
                        <td width=90%> <%= dao.getMemberList(((String)session.getAttribute("member_id"))) %></td>
                     </tr>                                       
                     <tr>
                        <td width=10%>제 목</td>
                        <td width=90%>
                        <input type="text" name="freeboard_subject" size="50" maxlength="30"/></td>
                     </tr>
                     <tr>
                        <td width=10%>내 용</td>
                        <td width=90%><textarea style="width:98%;" name="freeboard_content" rows=10 cols=50></textarea></td>
                     </tr>
                     </table>
                     <tr>
                        <td colspan=2><hr size=1></td>
                        <td>
                        <input type=submit  class="btn" value="등록">   <br/><br/>            
                      
                        <input type=reset class="btn" value="다시쓰기">&nbsp;&nbsp;
                        </td>
                        
                     </tr>
                     
                     
                     
                  
               </td>
            </tr>
         </form>
      </table>
   
</body>
</html>