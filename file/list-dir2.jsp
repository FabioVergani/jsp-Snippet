<%@page import="java.io.*,java.util.*"%><!DOCTYPE html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0,minimal-ui"><title>Dir presenti</title></head><body>
<pre><%

File currentfile = new File(request.getRealPath(request.getServletPath()));
File currentdir = currentfile.getParentFile();
File[] m=currentdir.listFiles();

Arrays.sort(m);

for(int i=0, l=m.length; i<l ; i++){
 if(m[i].isDirectory()){
  out.println(m[i].getName()+"\r");//<br>
 };
}

%></pre>
</body></html>
