<%@page import="java.io.*,java.util.*"%><!DOCTYPE html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0,minimal-ui"><title>jpg presenti</title></head><body>
<pre><%

//File currentfile = new File(request.getRealPath(request.getServletPath()));
//File currentdir = currentfile.getParentFile();
File[] m=new File(request.getRealPath(request.getServletPath())).getParentFile().listFiles();//files

Arrays.sort(m);

File e=null;//file
String s;//filename

for(int i=0,l=m.length; i<l; i++){
 e=m[i];
 if(e.isFile()){
  s=e.getName().toLowerCase();
  if(s.endsWith(".jpg")){
   out.print(s.substring(0,s.length()-4)+"\r");
  };
 };
};

%></pre>
</body></html>
