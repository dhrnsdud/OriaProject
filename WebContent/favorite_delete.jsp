<%@ page contentType="text/html; charset=EUC-KR"%>
 <jsp:useBean id="dao" class="model.favoriteDao">
</jsp:useBean>
<%	System.out.println("우다다다다다닫");	
	String del[] = request.getParameterValues("del");System.out.println("우다다다다다닫"); 
	for (int i = 0; i < del.length; i++) {     
		dao.deleteBoard(Integer.parseInt(del[i].trim()));  
		System.out.println("우다다다다다닫");
	}   
	response.sendRedirect("Main.jsp");%>
<html>
<body>
</body>
</html>