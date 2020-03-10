<%@include file="connect.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%
response.addHeader("pragma","no-cache");
response.addHeader("cache-control","no-store");
response.addHeader("expire" ,"0");
%>
<%!String s,go;%>
<%
 s=(String)session.getAttribute("uid");
 String t=(String)session.getAttribute("type");
if(s==null)
    {
    response.sendRedirect("index.jsp");
}
else
{
    if(t.equals("Admin"))
        go="Adminhome.jsp";
    else
        go="Home.jsp";
%>

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
  <div id="inmenu">
    <ul>
      <li ><a href="<%= go %>">Home</a></li>
      <li class="active"><a href="Changepwd.jsp">Change Password </a></li>
      <li><a href="Logout.jsp">Logout</a></li>
      <li></li>
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
  <div id="main">
    <div id="welcome" class="post">
      <h2 class="title"><span>Welcome to User home!</span></h2>
      <h3 class="date"><span class="month">Aug.</span> <span class="day">1</span><span class="year">, 2014</span></h3>
      <div class="story">
        <p>&nbsp; </p>



<%
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
String s3=request.getParameter("t3");
if(s1!=null)
    {

    String tab="";
    if(s.equalsIgnoreCase("admin"))
        {
        tab="admin";
    }
    else
     {
        tab="users";
    }

PreparedStatement ps=con.prepareStatement("update "+tab+" set password=? where userid=? and password=?");
ps.setString(1,s3);
ps.setString(2,s);
ps.setString(3,s1);
int x=0;
if(s2.equals(s3))
x=ps.executeUpdate();
else
out.println("<centre><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=red>new password and retype password should be same</b></font><centre>");

if(x==1)
 {//con.commit();
   out.println("<centre><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=red>Password Changed successfully</b></font><centre>");
}
}
con.close();
%>

<form action="">
    <pre>
    Current Password    <input type="password" name="t1" value="" />
    New Password        <input type="password" name="t2" value="" />
    Retype Password     <input type="password" name="t3" value="" />
   <br/><br/>                      <input type="submit" value="Update" />
	</pre>  </form>
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
    <div id="ad120x600"><a href="http://www.free-css.com/"></a></div>
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