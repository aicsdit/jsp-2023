<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	int x = Integer.parseInt(request.getParameter("x"));
	int y = Integer.parseInt(request.getParameter("y"));
	String op = request.getParameter("op");
	double result = 0;
	
	
	switch(op){
	case "+":
		result = x+y;
		break;
	case "-":
		result = x-y;
		break;
	case "*":
		result = x*y;
		break;
	case "/":
		if(y!=0){
			result = (double)x/(double)y;
		}else{
			out.println("0으로 나눌 수 없습니다!");
		}
		break;
	}
	

%>
<%=x%><%=op %><%=y%>=<%=result %>

</body>
</html>