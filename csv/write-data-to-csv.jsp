<%
    response.setHeader("Content-Encoding", "UTF-8");
    response.setContentType("text/csv; charset=UTF-8");
    response.setHeader("Content-Disposition","inline; filename=myTest.csv");
    String outputData = (String)request.getParameter("outputData");
    out.clear();
    out.print(outputData);
    out.close();




%>
