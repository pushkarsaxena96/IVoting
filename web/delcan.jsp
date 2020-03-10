<%@include  file="connect.jsp"%>
<%
String uid=request.getParameter("cid");

Statement st=con.createStatement();
st.executeUpdate("delete from candidates where cid='"+uid+"'");
con.close();
response.sendRedirect("Viewcan.jsp");

%>