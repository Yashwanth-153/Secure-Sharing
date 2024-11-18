<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Statement"%>
<%@include file="connect.jsp" %>


<%
int id=Integer.parseInt(request.getParameter("id"));
String sql="";
Statement st=connection.createStatement();
String st1="Yes";
sql="UPDATE srequest SET status='"+st1+"' where id='"+id+"'";
st.executeUpdate(sql);
response.sendRedirect("o_view_search_request.jsp");

%>
