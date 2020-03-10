\<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>IVoting System</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link href="default.css" rel="stylesheet" type="text/css" /></head>
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
      <h2 class="title"><span>Sign up Form </span></h2>
      <h3 class="date"><span class="month">Aug.</span> <span class="day">1</span><span class="year">, 2014</span></h3>
      <div class="story">
          <%@include file="connect.jsp" %>
    <%!static int id=1000; %>
          <%
String name=request.getParameter("t2");
String cno=request.getParameter("t3");
String add=request.getParameter("t4");
String gen=request.getParameter("t5");
String dob=request.getParameter("t6");


if(name!=null  || cno!=null ||  add!=null || gen!=null || dob!=null)
{
    id++;
String uid="IV"+id;
long l=System.currentTimeMillis();
String s=l+"";
String sub=s.substring(6);
String pwd="PS"+sub;

   int x=0;
   PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?)");
   ps.setString(2,name);
   ps.setString(3,cno);
   ps.setString(4,add);
   ps.setString(5,gen);
   ps.setString(6,dob);
   ps.setString(1,uid);
   ps.setString(7,pwd);
   ps.setString(8,"0");

   x=ps.executeUpdate();
  if(x==1)
      out.println("<font color=red><b>Account Created Successfully</b></font>");
    out.println("<br/><font color=red><b>your userId is </font><font color=green>"+uid+"</font> <font color=red>and password is </font><font color=green>"+pwd+"</b></font>");
}
%>


          <table width="446" height="283" >

              <form action="" method="post">
                  
		   <tr>  <th width="174" scope="row">Name</th>
            <td width="260"><label>
              <input type="text" name="t1" required/>
            </label></td>
          </tr>
          <tr>
            <th scope="row">Contact No </th>
            <td><label>
              <input type="text" name="t2" required/>
            </label></td>
          </tr>
          <tr>
            <th scope="row">Address</th>
            <td><label>
            <textarea name="t3" required></textarea>
            </label></td>
          </tr>
          <tr>
            <th scope="row">Gender</th>
            <td><label>
            <select name="t4" required>
			<option >select</option>
		    <option >Male</option>
			<option >Female</option>



			</select>
            </label></td>
          </tr>
          <tr>
            <th scope="row">D.O.B</th>
            
            <td><input type="date" name="t5" required/></td>
          </tr>
          <tr>
            <th scope="row"><label>
              <input type="submit" name="Submit" value="Submit" required />
            </label></th>
            <td><label>
               <input type="reset" name="Submit2" value="Reset" required/>
            </label></td>
          </tr>
          <tr>
		  </form>
            <th scope="row">&nbsp;</th>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <th scope="row">&nbsp;</th>
            <td>&nbsp;</td>
          </tr>
        </table>
      </div>
      <div class="meta"></div>
    </div>
    <div id="example" class="post"><div class="meta"></div>
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
    <div id="ad120x600"><a href=""></a></div>
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
