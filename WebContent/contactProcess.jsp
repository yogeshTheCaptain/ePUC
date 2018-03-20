<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="java.io.*, java.util.*,java.text.*"%> 

<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String subject=request.getParameter("subject");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/puc", "root", "root");
Statement st=conn.createStatement();


int i=st.executeUpdate("insert into contact_us(name,email,mobile,subject)"+"values('"+name+"','"+email+"','"+mobile+"','"+subject+"')");                
out.println("Response sent successfully ");
%>


<jsp:forward page="index.jsp" /> 

<%
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

    