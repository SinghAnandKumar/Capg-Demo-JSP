<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<%Enumeration headers = request.getHeaderNames(); 
while(headers.hasMoreElements()){
  String name = (String)headers.nextElement();
  String value = request.getHeader(name);
  //out.println(name+" : "+value+"\n");
%>
<tr>
<td><%=name %></td>
<td><%=value %></td>
</tr>
<%
}
%>

</table>
</body>
</html>