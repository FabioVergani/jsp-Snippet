String absolutepath=getServletContext().getRealPath("/");
out.print(absolutepath);
String pageurl=request.getRequestURL().toString();
out.print(pageurl);
