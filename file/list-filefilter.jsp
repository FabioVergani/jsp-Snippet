<%@page import="java.io.*,java.util.*"%><!DOCTYPE html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0,minimal-ui"><title>Image Header presenti</title></head><body><%
File[] m=new File(request.getRealPath(request.getServletPath())).getParentFile().listFiles();//files

Arrays.sort(m);

File e=null;//file
String n="";

List<String> s = new ArrayList<String>();

for(int i=0,l=m.length; i<l; i++){
 e=m[i];
 if(e.isFile()){
  n=e.getName().toLowerCase();
  if(n.endsWith(".jpg")){
   s.add(n.substring(0,n.length()-4));
  };
 };
};


Collections.sort(s, new Comparator<String>(){@Override
 public int compare(String a, String b){return new Integer(a).compareTo(new Integer(b));}
});


StringBuffer sb=new StringBuffer("");
for(String x:s){sb.append(x+"\r");};
out.print("<pre>"+sb+"\r</pre>");

%></body></html>
