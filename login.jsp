<%@page import="java.io.*" language="java" contentType="text/html"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
<html>
  <body>

  <%
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/zoho","root","");
   Statement stmt=con.createStatement();
   String username = request.getParameter("UserName");
   String password = request.getParameter("Password");
   String sqlstmt="SELECT UserName,Password FROM user_profile";
   ResultSet rs=stmt.executeQuery(sqlstmt);
   int flag=0;
   //validating username and password
   while(rs.next())
   {
      String user = rs.getString("UserName");
      String pass = rs.getString("Password");
      if((username.equals(user))&&(password.equals(pass)))
      {
      flag=1;
      session.setAttribute("uname",user);
      RequestDispatcher rd = request.getRequestDispatcher("home.html");
      rd.include(request, response);
      break;
    }
  }
  if(flag==0) {%>
    <h1 style="text-align:center">Enter the correct username or password</h1>
    <jsp:include page="login.html"/>
   <%}%>
 </body>
</html>
<%
 con.close();
%>
