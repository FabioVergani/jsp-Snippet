<pre>
<%=application.getRealPath(request.getServletPath())%>
<%=this.getClass().getName()%>
<%=getServletConfig().getServletContext().getRealPath(request.getServletPath())%>
<%
s=application.getRealPath(request.getServletPath());
s=s.substring(s.lastIndexOf('/')+1,s.lastIndexOf('.'));
out.print(s);

%>
</pre>
