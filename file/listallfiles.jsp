<!DOCTYPE html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0,minimal-ui"><title>-</title></head><body><%@page import="java.io.*,java.util.*"%><%
File[] m=new File(request.getRealPath(request.getServletPath())).getParentFile().listFiles();//files
File e=null;//file

List<String> s = new ArrayList<String>();

for(int i=0,l=m.length; i<l; i++){
 e=m[i];
 if(e.isFile()){
  s.add(e.getName());
 };
};

Collections.sort(s);

StringBuffer sb=new StringBuffer("");
for(String x:s){sb.append(x+"\r");};
out.print("<pre>\n\r"+sb+"</pre>");

%></body></html>
