<%@ page contentType="text/html; charset=EUC-KR"%>
 <jsp:useBean id="dao" class="model.favoriteDao">
</jsp:useBean>
<%	System.out.println("��ٴٴٴٴٴ�");	
	String del[] = request.getParameterValues("del");System.out.println("��ٴٴٴٴٴ�"); 
	for (int i = 0; i < del.length; i++) {     
		dao.deleteBoard(Integer.parseInt(del[i].trim()));  
		System.out.println("��ٴٴٴٴٴ�");
	}   
	response.sendRedirect("Main.jsp");%>
<html>
<body>
</body>
</html>