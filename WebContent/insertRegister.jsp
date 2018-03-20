<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="java.io.*, java.util.*,java.text.*"%> 

<%
String vrn=request.getParameter("vrn");
String maker=request.getParameter("maker");
String model=request.getParameter("model");
String mfd=request.getParameter("mfd");
String ft=request.getParameter("ft");

java.util.Date date = Calendar.getInstance().getTime();  
DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
String currDate = dateFormat.format(date);  
 
Calendar c = Calendar.getInstance();
c.setTime(new java.util.Date()); // Now use today date.
c.add(Calendar.DATE, +90);

String validDate = dateFormat.format(c.getTime());



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/puc", "root", "root");
Statement st=conn.createStatement();


int i=st.executeUpdate("insert into vehicle_info(regno,maker,model,made_year,fuel_type,curr_date,vaalid_to)"+"values('"+vrn+"','"+maker+"','"+model+"','"+mfd+"','"+ft+"','"+currDate+"','"+ validDate +"')");                

%>
<jsp:forward page="loggedIn.jsp" /> 

<%
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

    