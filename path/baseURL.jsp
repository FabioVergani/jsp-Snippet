String absolutepath=getServletContext().getRealPath("/");
out.print(absolutepath);
String url=request.getRequestURL().toString();
out.print(url);

String baseURL=url.substring(0,url.length()-request.getRequestURI().length())+request.getContextPath()+"/";
out.print( baseURL);
