<%

response.addHeader("pragma","no-cache");
response.addHeader("cache-control","no-store");
response.addHeader("expire" ,"0");

HttpSession ss=request.getSession(false);
ss.invalidate();
response.sendRedirect("index.jsp");
%>