package writefile.java;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;



public class EmailUtils {
	public static void sendEmail(String to, String subject, String content, String attachmentFilePath) throws MessagingException {
		// Sender's email credentials
		String from = "";
		String password = "";

		// SMTP server properties
		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.example.com");
		properties.put("mail.smtp.port", "587");

		// Create a Session object
		Session session = Session.getInstance(properties,
		new javax.mail.Authenticator() {
		protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(from, password);
		}
		});

		try {
		// Create a new message
		Message message = new MimeMessage(session);
		message.setFrom(new InternetAddress(from));
		message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
		message.setSubject(subject);

		// Attach the HTML content
		if (attachmentFilePath != null && !attachmentFilePath.isEmpty()) {
		MimeBodyPart messageBodyPart = new MimeBodyPart();
		messageBodyPart.setContent(content, "text/html");
		Multipart multipart = new MimeMultipart();
		multipart.addBodyPart(messageBodyPart);
}
		
		}
		finally {
			
		}	
	}
}
	
