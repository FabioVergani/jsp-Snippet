<%@page import="java.io.*,java.util.*"%><%

File currentfile = new File(request.getRealPath(request.getServletPath()));
File currentdir = currentfile.getParentFile();
File[] m=currentdir.listFiles();

Arrays.sort(m);
StringBuffer s = new StringBuffer("");//filename(s)


for(int i=0, l=m.length; i<l ; i++){
 if(m[i].isDirectory()){
  s.append(e.getName()+"\r");
 };
}

out.println(s);
%>
