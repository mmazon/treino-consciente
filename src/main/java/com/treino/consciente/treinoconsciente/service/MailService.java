package com.treino.consciente.treinoconsciente.service;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailService {
    
	@Autowired private JavaMailSender mailSender;
	@Autowired private MailContentBuilder mailContentBuilder;
	
	@Value("${mail.name.param}")
    private String fromName;
	
	@Value("${mail.from.param}")
	private String fromMail;
    
	public void sendMail(String subject, String template, String mailTo){
		MimeMessage mail = mailSender.createMimeMessage();
	    MimeMessageHelper helper = new MimeMessageHelper(mail);
	    try {
			helper.setTo(mailTo);
			helper.setSubject(subject);
			helper.setFrom(fromMail, fromName);
			String content = mailContentBuilder.build(template);
			helper.setText(content, true);
		    mailSender.send(mail);
		} catch (MessagingException | UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
}
