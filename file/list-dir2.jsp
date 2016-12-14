<%@page import="java.io.*,java.util.*"%><!DOCTYPE html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0,minimal-ui"><title>Dir presenti</title></head><body>
<pre><%

File[] m=new File(request.getRealPath(request.getServletPath())).getParentFile().listFiles();//files

Arrays.sort(m);

File e=null;//file
StringBuffer s = new StringBuffer("");//filename(s)

for(int i=0,l=m.length; i<l; i++){
 e=m[i];
 if(e.isDirectory()){
  s.append(e.getName()+"\r");
 };
};

out.println(s);
%></pre>
</body></html>
