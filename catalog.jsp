<%@page import="java.io.*" language="java" contentType="text/html"%>
<%@page import="java.lang.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!--BOOK CATALOGUE-->
<html>
  <head>
  <meta charset="utf-8">
  <title>BOOK CATALOGUE</title>
  <style>
      .container {
      display: block;
      position: relative;
      padding-left: 35px;
      margin-bottom: 12px;
      cursor: pointer;
      font-size: 22px;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
      }
      .container input {
        position: absolute;
        opacity: 0;
        cursor: pointer;
        height: 0;
        width: 0;
  }
  </style>
  </head>
    <body style="background-color:#34ebb7" >
    <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/zoho", "root", "");
    Statement stmt=con.createStatement();
    String sqlstmt="SELECT * FROM book";
    ResultSet rs=stmt.executeQuery(sqlstmt);
    rs.next();%>
    <h1 style="text-align:center;height:40px ;
    font-size:40px ; color:black;">BOOK CATALOGUE</h1><br/><br>
    <div style="display:inline-block;vertical-align:top;">
      <label class="container"><image src="images/Beauty_and_Beast.jpeg" width="250px" height="300px" style="border:2px solid black;"/>
      </label>
    </div>
    <div style="display:inline-block;">
      <h1 style="height:20px ;"> &emsp;BOOK TITLE :<b style="color:maroon;">
      <%=rs.getString("Title")%></b></h1><br/>
      &emsp;&emsp;&emsp;&emsp;&emsp;<b>AUTHOR : </b>
      <b style="color:maroon;"><%=rs.getString("Author")%></b><br/> <p>&emsp;&emsp;&emsp;&emsp;&emsp;<b>PRICE : </b>
      <b style="color:maroon;">Rs.<%=rs.getString("Price")%></b><br/>&emsp;&emsp;&emsp;&emsp;&emsp;<br/>&emsp;&emsp;&emsp;&emsp;&emsp;<b>NO OF BOOKS AVAILABLE : </b>
      <b style="color:maroon;"><%=rs.getString("Quantity")%></b><br/>&emsp;&emsp;&emsp;&emsp;&emsp;<br/>&emsp;&emsp;&emsp;&emsp;&emsp;<b>EDITION: </b>
      <b style="color:maroon;"><%=rs.getString("Edition")%></b><br/></p>
    </div>
    <%
    rs.next();
    %>
    <br/><br/>

    <div style="display:inline-block;vertical-align:top;">
      <label class="container"><image src="images/Tarzan.png" width="250px" height="300px" style="border:2px solid black;"/>
      </label>
    </div>
    <div style="display:inline-block;">
      <h1 style="height:20px ;"> &emsp;BOOK TITLE :<b style="color:maroon;">
      <%=rs.getString("Title")%></b></h1><br/>
      &emsp;&emsp;&emsp;&emsp;&emsp;<b>AUTHOR : </b>
      <b style="color:maroon;"><%=rs.getString("Author")%></b><br/> <p>&emsp;&emsp;&emsp;&emsp;&emsp;<b>PRICE : </b>
      <b style="color:maroon;">Rs.<%=rs.getString("Price")%></b><br/>&emsp;&emsp;&emsp;&emsp;&emsp;<br/>&emsp;&emsp;&emsp;&emsp;&emsp;<b>NO OF BOOKS AVAILABLE : </b>
      <b style="color:maroon;"><%=rs.getString("Quantity")%></b><br/>&emsp;&emsp;&emsp;&emsp;&emsp;<br/>&emsp;&emsp;&emsp;&emsp;&emsp;<b>EDITION: </b>
      <b style="color:maroon;"><%=rs.getString("Edition")%></b><br/></p>
   </div>
   <%
   rs.next();
   %>
   <br/><br/>

   <div style="display:inline-block;vertical-align:top;">
     <label class="container"><image src="images/book2.jpg" width="250px" height="300px" style="border:2px solid black;"/>
     </label>
   </div>
   <div style="display:inline-block;">
     <h1 style="height:20px ;"> &emsp;BOOK TITLE :<b style="color:maroon;">
     <%=rs.getString("Title")%></b></h1><br/>
     &emsp;&emsp;&emsp;&emsp;&emsp;<b>AUTHOR : </b>
     <b style="color:maroon;"><%=rs.getString("Author")%></b><br/> <p>&emsp;&emsp;&emsp;&emsp;&emsp;<b>PRICE : </b>
     <b style="color:maroon;">Rs.<%=rs.getString("Price")%></b><br/>&emsp;&emsp;&emsp;&emsp;&emsp;<br/>&emsp;&emsp;&emsp;&emsp;&emsp;<b>NO OF BOOKS AVAILABLE : </b>
     <b style="color:maroon;"><%=rs.getString("Quantity")%></b><br/>&emsp;&emsp;&emsp;&emsp;&emsp;<br/>&emsp;&emsp;&emsp;&emsp;&emsp;<b>EDITION: </b>
     <b style="color:maroon;"><%=rs.getString("Edition")%></b><br/></p>
  </div>
  <%
  rs.next();
  %>
  <br/><br/>

  <div style="display:inline-block;vertical-align:top;">
    <label class="container"><image src="images/book1.jpg" width="250px" height="300px" style="border:2px solid black;"/>
    </label>
  </div>
  <div style="display:inline-block;">
    <h1 style="height:20px ;"> &emsp;BOOK TITLE :<b style="color:maroon;">
    <%=rs.getString("Title")%></b></h1><br/>
    &emsp;&emsp;&emsp;&emsp;&emsp;<b>AUTHOR : </b>
    <b style="color:maroon;"><%=rs.getString("Author")%></b><br/> <p>&emsp;&emsp;&emsp;&emsp;&emsp;<b>PRICE : </b>
    <b style="color:maroon;">Rs.<%=rs.getString("Price")%></b><br/>&emsp;&emsp;&emsp;&emsp;&emsp;<br/>&emsp;&emsp;&emsp;&emsp;&emsp;<b>NO OF BOOKS AVAILABLE : </b>
    <b style="color:maroon;"><%=rs.getString("Quantity")%></b><br/>&emsp;&emsp;&emsp;&emsp;&emsp;<br/>&emsp;&emsp;&emsp;&emsp;&emsp;<b>EDITION: </b>
    <b style="color:maroon;"><%=rs.getString("Edition")%></b><br/></p>
 </div>
 <%
 rs.next();
 %>
 <br/><br/>

 <div style="display:inline-block;vertical-align:top;">
   <label class="container"><image src="images/book3.jpg" width="250px" height="300px" style="border:2px solid black;"/>
   </label>
 </div>
 <div style="display:inline-block;">
   <h1 style="height:20px ;"> &emsp;BOOK TITLE :<b style="color:maroon;">
   <%=rs.getString("Title")%></b></h1><br/>
   &emsp;&emsp;&emsp;&emsp;&emsp;<b>AUTHOR : </b>
   <b style="color:maroon;"><%=rs.getString("Author")%></b><br/> <p>&emsp;&emsp;&emsp;&emsp;&emsp;<b>PRICE : </b>
   <b style="color:maroon;">Rs.<%=rs.getString("Price")%></b><br/>&emsp;&emsp;&emsp;&emsp;&emsp;<br/>&emsp;&emsp;&emsp;&emsp;&emsp;<b>NO OF BOOKS AVAILABLE : </b>
   <b style="color:maroon;"><%=rs.getString("Quantity")%></b><br/>&emsp;&emsp;&emsp;&emsp;&emsp;<br/>&emsp;&emsp;&emsp;&emsp;&emsp;<b>EDITION: </b>
   <b style="color:maroon;"><%=rs.getString("Edition")%></b><br/></p>
</div>
</html>
<%
con.close();
%>
