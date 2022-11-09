<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String filePath = request.getParameter("filePath");
if(filePath==null){
	filePath="home";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page='<%=filePath+".jsp"%>'/>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>