<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%
response.addHeader("pragma","no-cache");
response.addHeader("cache-control","no-store");
response.addHeader("expire" ,"0");
    %>

    <%!String s;%>
    <%
s=(String)session.getAttribute("uid");
if(s==null)
    {
response.sendRedirect("index.jsp");
}
else
{

%>

    <head>
<title>IVoting System</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div id="header">
  <div id="logo">
    <img src="images/vote_1.png" alt="" height="100" width="100"/>&nbsp;<h1><a href="">IVoting</a></h1>
    <h2><a href=""></a></h2>
  </div>
  <div id="inmenu">
    <ul>
      <li class="active"><a href="Home.jsp">Home</a></li>
      <li><a href="Changepwd.jsp">Change Password </a></li>
      <li><a href="Logout.jsp">Logout</a></li>
      <li></li>
    </ul>
  </div>
</div>
<div id="content">
  <div id="sidebar">
    <!-- end #login -->
<div id="updates" class="boxed">
      <div class="title">
        <h2>News Bulletin </h2>
      </div>
      <div class="content">
       <marquee direction="up" scrollamount="3"> <ul><li>
            
            <p><a href="http://www.economictimes.indiatimes.com/tech/internet/twitter-to-take-india-election-strategy-innovations-global/articleshow/35553506.cms">Twitter to take India Election Innovations global.&#8230;</a></p>
          </li>
          <li>
            
            <p><a href="http://en.wikipedia.org/wiki/List_of_political_parties_in_India">List of political parties and Election Symbols&#8230;</a></p>
          </li>
          <li>
            
          </li>
          <li>
              <p><a href="http://www.dnaindia.com/topic/election-commission-of-india-eci">Activist complains to Election Commission of India over election expenditure&#8230;</a></p>
          </li>
          <li>
           
            <p><a href="http://www.esocialsciences.org/General/A2013412184534_19.pdf">Does social media play a key role in Lok Sabha Polls ?</a></p>
          </li>
        </ul></marquee>
      </div>
    </div>
    <!-- end #updates -->
  </div>
  <!-- end #sidebar -->

<%@include  file="connect.jsp"%>
<%!String c,p,cid ;%>
<%@page import="java.sql.*"%>
  


  <div id="main">
    <div id="welcome" class="post">
      <h2 class="title"><span>Welcome to User home!</span></h2>
      <h3 class="date"><span class="month">Aug.</span> <span class="day">1</span><span class="year">, 2014</span></h3>
      <div class="story">
<%
 cid=request.getParameter("cid");
 c=request.getParameter("c");
 p=request.getParameter("p");
Statement st0=con.createStatement();
ResultSet rs=st0.executeQuery("select status from users where userid='"+s+"'");
if(rs.next())
{
  if(rs.getInt("status")==1)
 {
      out.println("<font color=red><b>You have already given the vote.</b></font>");
 }else
{
 Statement st=con.createStatement();
con.setAutoCommit(false);
st.executeUpdate("update candidate set nov=nov + "+1+" where cid="+cid);
Statement st1=con.createStatement();
st1.executeUpdate("update users set status='1' where userid='"+s+"'");
con.commit();
con.close();
%>



        <p class="style1"> Thanks for Voting, your vote is successfully given in the favor of  </p>
        <p class="style1"> Candidate Name : <font color="green"><%=c%></font></p>
        <p class="style1">Party Name: <font color="green"><%=p%></font></p>
<%
}}
%>

        <p align="center" class="style1"> <a href="Logout.jsp">Logout</a> </p>
      </div>
      <div class="meta">
        <p>&nbsp;</p>
      </div>
    </div>
    <!-- end #welcome -->
    <div id="example" class="post">
      
      
    </div>
    <!-- end #example -->
  </div>
  <!-- end #main -->
  <div id="sidebar2">
    <div id="sponsors" class="boxed">
      <div class="title"> 
          
      </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="story"><img src="images/0.jpg" alt="" width="200" height="280" class="left" />&nbsp;&nbsp;&nbsp;&nbsp;
          
        
     
    </div>
    </div>
  
    <!-- end #sponsors -->
    <div id="ad120x600"><a href=""></a></div>
  </div>
</div>
<!-- end #sidebar2 -->
<!-- end #content -->
<div id="footer">
 <p id="legal">Copyright &copy; All Rights Reserved. </p>
  <p id="links"><a href="Home.jsp">Home</a> | <a href="terms.jsp">Terms of Use</a></p>
</div>
</body>
</html>
<%
}
%>