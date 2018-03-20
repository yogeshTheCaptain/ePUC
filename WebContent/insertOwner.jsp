<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="java.io.*, java.util.*,java.text.*"%> 

<%
String name=request.getParameter("name");
String contact=request.getParameter("contact");
String email=request.getParameter("email");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/puc", "root", "root");
Statement st=conn.createStatement();


int i=st.executeUpdate("insert into owner(name,contact,email)"+"values('"+name+"','"+contact+"','"+email+"')");                

%>
<jsp:forward page="registerVehicles.jsp" /> 

<%
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

    