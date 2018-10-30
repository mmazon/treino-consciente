package com.treino.consciente.treinoconsciente.service;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailService {
    
	@Autowired private MailContentBuilder mailContentBuilder;
	
	@Value("${mail.name.param}")
    private String fromName;
	
	@Value("${mail.from.param}")
	private String fromMail;
	
	@Value("${mail.from.qualidade.param}")
	private String fromQualidadeMail;
    
	public void sendMail(String subject, String template, String mailTo){
		JavaMailSender mailSender = null;
		if(template.contains("qualidade")){
			mailSender = getMailSender(fromQualidadeMail);
		}else{
			mailSender = getMailSender(fromMail);
		}
		
		MimeMessage mail = mailSender.createMimeMessage();
	    MimeMessageHelper helper = new MimeMessageHelper(mail);
	    try {
			helper.setTo(mailTo);
			helper.setSubject(subject);
			
			if(template.contains("qualidade")){
				helper.setFrom(fromQualidadeMail, fromName);
			}else{
				helper.setFrom(fromMail, fromName);
			}
			
			String content = mailContentBuilder.build(template);
			helper.setText(content, true);
		    mailSender.send(mail);
		} catch (MessagingException | UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	
    public JavaMailSender getMailSender(String userName) {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
 
        mailSender.setHost("smtp.zoho.com");
        mailSender.setPort(587);
        
        mailSender.setUsername(userName);
        mailSender.setPassword("Quebrando_Mitos1234");
 
        Properties javaMailProperties = new Properties();
        javaMailProperties.put("mail.smtp.starttls.enable", "true");
        javaMailProperties.put("mail.smtp.auth", "true");
        javaMailProperties.put("mail.transport.protocol", "smtp");
        javaMailProperties.put("mail.debug", "false");
 
        mailSender.setJavaMailProperties(javaMailProperties);
        return mailSender;
    }  
}
