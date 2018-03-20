<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
    String uid = request.getParameter("uid");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/puc",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from login where user_id='" + uid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", uid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("loggedIn.jsp");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>