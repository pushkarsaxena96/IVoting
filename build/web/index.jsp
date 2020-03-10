<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>IVoting System</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
  <div id="logo">
      <img src="images/vote_1.png" alt="" height="100" width="100"/>&nbsp;<h1><a href="">IVoting</a></h1>
    <h2><a href=""></a></h2>
  </div>
  <div id="menu">
    <ul>
      <li class="active"><a href="index.jsp">Homepage</a></li>
      <li><a href="aboutus.jsp">About Us</a></li>
   
      <li><a href="contact.jsp">Contact Us</a></li>
    </ul>
  </div>
</div>
<div id="content">
  <div id="sidebar">
    <div id="login" class="boxed">
      <div class="title">
        <h2> Account</h2>
      </div>
      <div class="content">
<%@include file="connect.jsp" %>
 <%
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
String s3=request.getParameter("type");
if(s1!=null)
{
    String tab="";
   if(s3.equalsIgnoreCase("admin"))
       tab="admin";
    else if(s3.equalsIgnoreCase("user"))
       tab="users";
    if(tab =="admin" || tab=="users")
    {    
   int x=0;
    ResultSet rs=st.executeQuery("select * from "+tab+" where userid='"+s1+"' and password='"+s2+"'");
    if(rs.next())
      {
       x=1;
    }
    if(x==1 && s3.equalsIgnoreCase("admin") )
    {
    session.setAttribute("uid",s1);
    session.setAttribute("type",s3);
    response.sendRedirect("Adminhome.jsp");
    }
    else if(x==1)
      {
    session.setAttribute("uid",s1);
    session.setAttribute("type",s3);
    response.sendRedirect("Home.jsp");
    }
else
    {
  out.println("<font color=red><b>Login fail, try Again...</b></font>");

    }
    }
    else
    {
        out.println("<font color=red><b>Please select your user type !!</b></font>");

    }


}



%>

        <form id="form1" method="post" action="">
          <fieldset>
          <legend>Sign-In</legend>
          <label for="inputtext1">User ID:</label>
          <input id="inputtext1" type="text" name="t1" value="" />
          <label for="inputtext2">Password:</label>
          <p>
            <input id="inputtext2" type="password" name="t2" value="" />
          </p>
          <p>
            <select name="type" >
              <option>-select-</option>
              <option>Admin</option>
              <option>User</option>
            </select>

</p>
          <p>
            <input id="inputsubmit1" type="submit" name="inputsubmit1" value="Sign In" />
            <a href="SignUp.jsp"> Sign Up?</a></p>
          </fieldset>
        </form>
      </div>
    </div>
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
  <div id="main">
    <div id="welcome" class="post">
      <h2 class="title"><span>Welcome to I Voting Portal!</span></h2>
      <h3 class="date">&nbsp;</h3>
      <div class="story"><img src="images/india-vote101.jpg" alt="" width="120" height="120" class="left" />
        <p><strong>Electronic voting</strong> (also known as <strong>e-voting</strong>) is a term encompassing several different types of <a href="http://en.wikipedia.org/wiki/Voting" title="Voting">voting</a>, embracing both electronic means of casting a vote and electronic means of counting votes.</p>
        <p>Electronic voting technology can include <a href="http://en.wikipedia.org/wiki/Punched_card" title="Punched card">punched cards</a>, <a href="http://en.wikipedia.org/wiki/Optical_scan_voting_system" title="Optical scan voting system">optical scan voting systems</a> and specialized voting kiosks (including self-contained <a href="http://en.wikipedia.org/wiki/Electronic_voting#Direct-recording_electronic_.28DRE.29_voting_system">direct-recording electronic voting systems</a>, or DRE). It can also involve transmission of <a href="http://en.wikipedia.org/wiki/Ballot" title="Ballot">ballots</a> and votes via telephones, private <a href="http://en.wikipedia.org/wiki/Computer_network" title="Computer network">computer networks</a>, or the <a href="http://en.wikipedia.org/wiki/Internet" title="Internet">Internet</a>.</p>
      </div>
      <div class="meta">
        <p><br />
          </p>
      </div>
    </div>
    <!-- end #welcome -->
    <div id="example" class="post">
        <img src="images/1.jpg" alt="" height="350" width="350" />
      
        
      </div>
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
    <!-- end #sponsors -->
    <div id="ad120x600"><a href="http://www.free-css.com/"><img src="images/ad_120x600.jpg" alt="" width="120" height="600" /></a></div>
  </div>
  <div style="clear: both;">&nbsp;</div>
</div>
<!-- end #sidebar2 -->
<!-- end #content -->
<div id="footer">
<p id="legal">Copyright &copy; All Rights Reserved. </p>
  <p id="links"><a href="index.jsp">Home</a> | <a href="terms.jsp">Terms of Use</a></p>
</div>
</body>
</html>
