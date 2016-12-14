<%@page import="java.util.Random"%><%!

public static int getRandomNumberWithin(int a, int b){//lower,upper
  Random o = new Random();
  int n = o.nextInt(b-a)+a;
  return (n==a)?(a+1):n;
}

%><%
int[] galN={64,69,70,79,180,182,183,242,243};
%><%=galN[getRandomNumberWithin(0,galN.length)]%>
