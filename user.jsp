<%@page import="java.io.*" language="java" contentType="text/html"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
<%
 /*Database Connectivity*/
 String docType = "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/zoho", "root", "");
 Statement stmt=conn.createStatement();
 String user = (String)session.getAttribute("uname");
 //Gets the values in the row from the table which has the input username
 PreparedStatement ps=conn.prepareStatement("select * from user_profile where UserName=?");
 ps.setString(1,user);
 ResultSet rs = ps.executeQuery();
 if(rs.next())
 {%>
 <html>
 <head>
   <title>USER DETAILS</title>
 </head>
  <body bgcolor = "#34ebb7" style="text-align:center;font-size:40px;" >
    <h1 align = "center">USER DETAILS</h1>
    <table align="center" width="60%" style="font-size:25px;margin-left:400px">
    <tr>
    <td style="font-weight:bold;">Name:</td>
    <td><%
      String name = rs.getString("Name") ;
      out.print(name);
    %>
    </td>
    </tr>
    <tr>
        <td style="font-weight:bold;">User_ID:</td>
        <td><%=rs.getString("User_ID") %></td>
    </tr>

    <tr>
        <td style="font-weight:bold;">Gender:</td>
        <td><%=rs.getString("Gender") %></td>
    </tr>
    <tr>
        <td style="font-weight:bold;">Age:</td>
        <td><%=rs.getString("Age") %></td>
    </tr>
    <tr>
        <td style="font-weight:bold;">Joining:</td>
        <td><%=rs.getString("Joining") %></td>
    </tr>
    </table>
 </body>
</html>
<% }
conn.close();
%>
