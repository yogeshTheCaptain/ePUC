<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Properties" %> 
<%@ page import="javax.mail.*" %> 
<%@ page import="javax.mail.internet.*" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sending an Email</title>
</head>
<body>

<h1>Sending an Email</h1>
   <%! 
              
   %>
   

      <form action="second.jsp" name="myForm" method="post">
      
            <table border="0">
            
                   <tbody>
                          <tr>
                              <td>To :</td>
                              <td><input type="text" value="" name="to" size="50"></input></td>
                          </tr>
                          <tr>
                              <td>Subject :</td>
                              <td><input type="text" value="" name="subject" size="50"></input><</td>
                          </tr>
                          <tr>
                              <td>Message :</td>
                              <td><textarea name="message" row="4" cols="50"></textarea></td>
                          </tr>
                   </tbody>
            
            </table>
      
                 <input type="hidden" name="hidden" value=""></input>
                 <input type="reset" name="clear" value="Clear"></input>
                 <input type="submit" name="send" value="Send"></input>
        
        
      </form>

</body>
</html>