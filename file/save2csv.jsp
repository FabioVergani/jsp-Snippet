<%@page
pageEncoding="UTF-8"
contentType="text/plain"
import="java.net.URLDecoder,java.util.Enumeration,java.io.*"
%><%
//contentType="text/html;charset=UTF-8"
//out.print("<!DOCTYPE html><html><head><meta charset=\"utf-8\"></head><body>");

StringBuffer sb=new StringBuffer();
sb.append(System.currentTimeMillis());
Enumeration requestParameterNames=request.getParameterNames();
	while(requestParameterNames.hasMoreElements()){
	String Name=requestParameterNames.nextElement().toString();
	String Value=request.getParameter(Name);
	sb.append(URLDecoder.decode(Value,"UTF-8")+",");
};
String Data2Save=sb.toString();
sb.setLength(0);//eq:sb.delete(0,sb.length());
sb=null;

String PhysicalPath2ServletDirectory=request.getRealPath(request.getServletPath());
PhysicalPath2ServletDirectory=PhysicalPath2ServletDirectory.substring(0,PhysicalPath2ServletDirectory.lastIndexOf('/'));
//out.println(PhysicalPath2ServletDirectory);

try{
	BufferedWriter bw=new BufferedWriter(new OutputStreamWriter(new FileOutputStream(PhysicalPath2ServletDirectory+"/data.csv",true),"UTF-8"));
	bw.write(Data2Save);
	bw.newLine();
	bw.close();
}catch(IOException e){
	out.println(e.getMessage());
};

//out.print("</body></html>");
%>
