<%@page import="org.apache.commons.lang.StringEscapeUtils"%><%
String PageTitle=this.getClass().getSimpleName().replaceFirst("_jsp","");
//PageTitle.substring(0,1).toUpperCase()+PageTitle.substring(1);
PageTitle=(" | "+StringUtils.capitalize(PageTitle));
%>
