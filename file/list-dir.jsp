<%@page import="java.io.*,java.util.*"%><%

File currentfile = new File(request.getRealPath(request.getServletPath()));
File currentdir = currentfile.getParentFile();
File[] m=currentdir.listFiles();

Arrays.sort(m);

for(int i=0, l=m.length; i<l ; i++){
 if(m[i].isDirectory()){
  out.println(m[i].getName()+"<br>");
 };
}
%>
