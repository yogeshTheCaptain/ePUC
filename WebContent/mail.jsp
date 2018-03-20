// Make sure you add mail.jar and other javamail related jars in you class path. following are jars name
//activation.jar  dsn.jar  gimap.jar  imap.jar  mailapi.jar  mail.jar  pop3.jar  smtp.jar
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page import="java.io.*, java.util.*,java.text.*"%> 

<%@page import="java.util.Enumeration" %> 

<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
       String id = request.getParameter("pucNo");  

       Class.forName("com.mysql.jdbc.Driver");
       Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/owner","root", "root");
        
       Statement st1=conn.createStatement();
       ResultSet rs1 = st1.executeQuery("select * from owner where  pucc_no='"+id+"'");
       
       String email =rs1.getString("pucc_no");
       
       
       Statement st2=conn.createStatement();
       ResultSet rs2 = st2.executeQuery("select * from vehicle_info where  pucc_no='"+id+"'");
      
       DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  

       String currDate = dateFormat.format(rs2.getString("curr_date"));
       String validUpto = dateFormat.format(rs2.getString("vaalid_to"));
       
       

        String result;

   // Get system properties object
        Properties props = System.getProperties();

   // Setup mail server
        String host = "smtp.gmal.com";
        String from = "yogeshsati537@gmail.com";
        String pass = "Ys@573211953965";
        String to = email;
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", from);
        props.put("mail.smtp.password", pass);
        props.put("mail.smtp.port", "587");     //try 465, 25, 587
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.timeout", "25000");

   // Get the default Session object.
        Session mailsession = Session.getDefaultInstance(props);

   try{
      // Create a default MimeMessage object.
        MimeMessage message = new MimeMessage(mailsession);
       
        message.setFrom(new InternetAddress(from));   

        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

        // Set Subject: header field
        message.setSubject("ePUC Certificate");
          
        // Now set the actual message
        message.setText("You are successfully registered with ePUC system. Your validation period is from "+ currDate +" to "+ validUpto + " .");
        
        
        
      //  if you want to send HTML page use  setContent(msg, "text/html");
      // message.setContent("<h1>This is actual message</h1>", "text/html" );
        // Send message
        Transport transport = mailsession.getTransport("smtp");
        transport.connect(host, from, pass);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();
        result = "Sent message successfully....";
    }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: unable to send message....";
    }
%>
<html>
<head>
<title>Send Email using JSP</title>
</head>
<body>
<center>
<h1>Send Email using JSP</h1>
</center>
<p align="center">
<%
   out.println("Result: " + result + "\n");
   
%>
<jsp:forward page="loggedIn.jsp" />
</p>
</body>
</html>