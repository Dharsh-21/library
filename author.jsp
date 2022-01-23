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
    String name = request.getParameter("author");
    PreparedStatement ps=conn.prepareStatement("select * from book where Author=?"); ps.setString(1,name);
    ResultSet rs = ps.executeQuery();
    int flag=0;%>
    <h1 style="text-align:center;">BOOKS AVAILABLE</h1><br><br>
    <table align="center" style="border-color:black;" width="50%" border="1px">
    <thead>
      <tr>
        <th>BOOK ID</th>
        <th>BOOK TITLE</th>
        <th>AUTHOR</th>
        <th>BOOK PRICE</th>
        <th>NUMBER OF BOOKS</th>
        <th>EDITION</th>
        <th>DESCRIPTION</th>
      </tr>
    </thead>
  <% while(rs.next())
  { flag=1; //print book details
  %>
    <tr style="text-align:center;">
      <td><%out.println(rs.getString("Book_ID")); %></td>
      <td><%out.println(rs.getString("Title")); %></td>
      <td><%out.println(rs.getString("Author")); %></td>
      <td><%out.println("Rs."+rs.getString("Price")); %></td>
      <td><%out.println(rs.getString("Quantity")); %></td>
      <td><%out.println(rs.getString("Edition")); %></td>
      <td><%out.println(rs.getString("Description")); %></td>
    </tr>
      <%}%>
  </table>
  <%if(flag==0)
  {%>
  <h1 style="text-align:center">BOOK IS NOT AVAILABLE</h1> <%}
  conn.close();
  %>
  </body>
</html>
