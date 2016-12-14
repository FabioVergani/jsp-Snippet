<%@page import="java.io.*,java.util.*"%><!DOCTYPE html><html><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=0,minimal-ui"><title>Gallery- Random Album</title></head><body><%
String s=request.getParameter("debug");
Boolean debugme=(s==null||"".equals(s))?false:"1".equals(s);
s="/usr/share/tomcat_adv/webapps/xxxx/res";

s+="/script/gallery/album";//thePath for Files
//s+="/image/gallery/album";//thePath for Dirs

File[] m=new File(s).listFiles();
s=null;
if(m.length>0){
 File e=null;//file
 String n="";
 List<String> AlbumDisponibili = new ArrayList<String>();
 for(int i=0,l=m.length; i<l; i++){
  e=m[i];

/*
  if(e.isDirectory()){
   n=e.getName().toLowerCase();
   AlbumDisponibili.add(n);
  };
*/


  if(e.isFile()){
   n=e.getName().toLowerCase();
   if(n.endsWith(".js")){
    n=n.substring(0,n.length()-3);
    AlbumDisponibili.add(n);
   };
  };


 };
 //
 Collections.sort(AlbumDisponibili, new Comparator<String>(){@Override
  public int compare(String a, String b){return new Integer(a).compareTo(new Integer(b));}
 });
 //

 int a=new Integer(AlbumDisponibili.get(0));
 int numerocasualecompreso=a;
 int b=new Integer(AlbumDisponibili.size());
 if(b>1){
  int num = new Random().nextInt(b-a)+a;
  numerocasualecompreso=(num==a)?(a+1):num;
 };

 if(debugme){
  out.print("<pre>a:"+a+", b:"+b+"/ "+numerocasualecompreso+"</pre>");
  StringBuffer sb=new StringBuffer("");
  for(String x:AlbumDisponibili){sb.append(x+"\r");};
  out.print("<pre>"+sb+"\r</pre>");
 }else{
  response.sendRedirect(request.getContextPath()+"/gallery/show-album.jsp?n="+numerocasualecompreso);
 };

}else{
 response.sendRedirect("/");
};


%>
</body></html>
