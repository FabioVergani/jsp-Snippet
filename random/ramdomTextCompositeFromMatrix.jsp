<%@page import="java.util.*" %><%

String[][] elementidisponibili={
	{"01","02","03","04","05"},
	{"11","12","13","14","15"},
	{"21","22","23","24","25"},
},

Random randomValue=new Random();
int n=(Math.abs(randomValue.nextInt())%elementidisponibili.length);

out.print("<p><a href=\"https://zzz/"+elementidisponibili[n][0]+"/index.html?"+elementidisponibili[n][1]+",?"+elementidisponibili[n][2]+"\"><img src=\"https://zzz/"+elementidisponibili[n][1]+"/images/"+elementidisponibili[n][3]+"\">"+elementidisponibili[n][4]+"</a></p>");
%>
