String cxp=request.getContextPath();
String css=getServletContext().getRealPath((cxp+"/style/zzz.css"));

if(new File(css).exists()){
	%>1<%
}else{
	%>0<%
};



/*
<%
String g="gallery/available";
String cxp=request.getContextPath();
String cxg=(cxp+"/"+g);
String defaultgallery=(cxg+"/xxx.jsp");
String n=request.getParameter("n");
if(n==null||n.equals("0")){
 response.sendRedirect(defaultgallery);
}else{%><%@page import="java.io.File"%><%
 if(new File(getServletContext().getRealPath(g+"/"+n+".jsp")).exists()){
	response.sendRedirect(cxg+"/"+n+".jsp");
 }else{
	response.sendRedirect(defaultgallery);
 };
};
%>
*/
