<%@page import="java.io.*,java.util.*"%><!DOCTYPE html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0,minimal-ui"><title>js presenti</title></head><body>
<pre><%
File[] m=new File("/usr/share/tomcat_adv/webapps/zzz/res/script/zzz/yyy").listFiles();

File e=null;//file
String n="";
StringBuffer s = new StringBuffer("");//filename(s)

for(int i=0,l=m.length; i<l; i++){
 e=m[i];
 if(e.isFile()){
  n=e.getName().toLowerCase();
  if(n.endsWith(".js")){
   s.append(n.substring(0,n.length()-3)+"\r");
  };
 };
};
out.print(s);


%>
</pre>

</body></html>
