<%@page import="java.util.Random"%><%!

public static int getRandomNumberWithin(int lower, int upper) {
  Random o = new Random();
  int n = o.nextInt(upper - lower) + lower;
  return (n==lower)?(lower+1):n;
}

//getRandomNumberWithin(0,35)
%>
