protected void processRequest(HttpServletRequest request,
        HttpServletResponse response)
        throws IOException, ServletException {final String err = "/error.jsp";
    final String succ = "/success.jsp";


    String to = request.getParameter("to");
    String subject = request.getParameter("subject");
    String message = request.getParameter("message");
    String login = request.getParameter("login");
    String password = request.getParameter("password");

    try {
        Properties props = new Properties();
        props.setProperty("mail.host", "smtp.gmail.com");
        props.setProperty("mail.smtp.port", "587");
        props.setProperty("mail.smtp.auth", "true");
        props.setProperty("mail.smtp.starttls.enable", "true");

        Authenticator auth = new SMTPAuthenticator(login, password);

        Session session = Session.getInstance(props, auth);

        MimeMessage msg = new MimeMessage(session);
        msg.setText(message);
        msg.setSubject(subject);


        msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
        Transport.send(msg);

    } catch (AuthenticationFailedException ex) {
        request.setAttribute("ErrorMessage", "Authentication failed");

        RequestDispatcher dispatcher = request.getRequestDispatcher(err);
        dispatcher.forward(request, response);

    } catch (AddressException ex) {
        request.setAttribute("ErrorMessage", "Wrong email address");

        RequestDispatcher dispatcher = request.getRequestDispatcher(err);
        dispatcher.forward(request, response);

    } catch (MessagingException ex) {
        request.setAttribute("ErrorMessage", ex.getMessage());

        RequestDispatcher dispatcher = request.getRequestDispatcher(err);
        dispatcher.forward(request, response);
    }
    RequestDispatcher dispatcher = request.getRequestDispatcher(succ);
    dispatcher.forward(request, response);

}

private class SMTPAuthenticator extends Authenticator {

    private PasswordAuthentication authentication;

    public SMTPAuthenticator(String login, String password) {
        authentication = new PasswordAuthentication(login, password);
    }

    protected PasswordAuthentication getPasswordAuthentication() {
        return authentication;
    }
}

protected void doGet(HttpServletRequest request,
        HttpServletResponse response)
        throws ServletException, IOException {
    processRequest(request, response);
}

protected void doPost(HttpServletRequest request,
        HttpServletResponse response)
        throws ServletException, IOException {
    processRequest(request, response);
}
}