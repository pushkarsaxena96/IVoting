<%@include  file="connect.jsp"%>
<%
String uid=request.getParameter("uid");

Statement st=con.createStatement();
st.executeUpdate("delete from users where userid='"+uid+"'");
con.close();
response.sendRedirect("Viewuser.jsp");

%>