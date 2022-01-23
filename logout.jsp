
<%@page import="java.io.*" language="java" contentType="text/html"%>
<%
//delete session
session.invalidate();
//redirect to login page
RequestDispatcher rd = request.getRequestDispatcher("first.html"); rd.include(request, response);
%>
