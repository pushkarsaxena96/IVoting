<%@page import="java.sql.*" %>
<%!Statement st=null;Connection con=null;%>
<%
try{
   Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ivote","root","password");
 st=con.createStatement();
}catch(Exception e){out.println(e);}
%>