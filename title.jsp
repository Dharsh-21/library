<%@page import="java.io.*" language="java" contentType="text/html"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
  <body bgcolor="#34ebb7">
  <%
  /*Database Connectivity*/
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/zoho", "root", "");
  Statement stmt=conn.createStatement();
  String name = request.getParameter("book");
  PreparedStatement ps=conn.prepareStatement("select * from book where Title=?"); ps.setString(1,name);
  ResultSet rs = ps.executeQuery();
  int flag=0;
  //print book details
  if(rs.next())
  { flag=1; %>
  <h1 style="text-align:center;">BOOK DETAILS</h1><br><br>
  <table align="center" width="60%"" style="border-color:black;font-size:25px; margin-left:300px;" border="1px">
  <tr>
    <td><b>BOOK TITLE :</b>
    <%=rs.getString("Title")%></td>
  </tr>
  <tr>
    <td><b>AUTHOR :</b>
    <%out.print(rs.getString("Author")); %></td>
  <tr>
  </tr>
    <td><b>BOOK ID :</b>
    <%out.print(rs.getString("Book_ID")); %></td>
  </tr>
  <tr>
    <td><b>PRICE :</b>
    <%out.print("Rs."+rs.getString("Price")); %></td>
  </tr>
  <tr>
    <td><b>NUMBER OF BOOKS AVAILABLE :</b>
    <%out.print(rs.getString("QUANTITY")); %></td>
  </tr>
  <tr>
    <td><b>EDITION :</b>
    <%out.print(rs.getString("Edition")); %></td>
  </tr>
  <tr>
    <td><b>DESCRIPTION :</b>
    <%out.print(rs.getString("Description")); %></td>
  </tr>
  <%}
  if(flag==0)
  {%>
  <h1 style="text-align:center">BOOK IS NOT AVAILABLE</h1>
  <%}
  conn.close();
  %>
  </body>
</html>
