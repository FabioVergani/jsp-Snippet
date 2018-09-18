<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
	</head>
	<body>
<%

	String p1=request.getRequestURI();
	String p2=application.getRealPath(p1);
	String p3=application.getRealPath("/"); 
	String p4=request.getServletPath();
	String p5=request.getRealPath(p4);

	StringBuffer sb=new StringBuffer();
	sb.append("<pre>");
	sb.append("RequestURI: <b>"+p1+"</b>\n");
	sb.append("The physical path of the current JSP: <b>"+p2+"</b>\n");
	sb.append("The physical path to the current WEB application: <b>"+p3+"</b>\n");
	sb.append("The ServletPath path: <b>"+p4+"</b> ( virtual ) \n");
	sb.append("The physical path from virtual: <b>"+p5+"</b>");
	sb.append("</pre>");
	out.print(sb);
	sb.setLength(0);//eq:sb.delete(0,sb.length());

%>	
	</body>
</html>
