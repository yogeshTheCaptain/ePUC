<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="java.io.*, java.util.*,java.text.*"%> 

<%
String pucNo=request.getParameter("pucNo");


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


int i=st.executeUpdate("update vehicle_info set curr_date='"+currDate+"' , vaalid_to='"+validDate+"' where pucc_no='"+pucNo+"'");
		
out.println("Data Updated successfully ");


}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<jsp:forward page="mail.jsp" /> 