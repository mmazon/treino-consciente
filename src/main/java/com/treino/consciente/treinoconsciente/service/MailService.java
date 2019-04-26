package com.treino.consciente.treinoconsciente.service;

import java.io.File;
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

import com.treino.consciente.treinoconsciente.model.Treino;

@Service
public class MailService {
    
	@Autowired private MailContentBuilder mailContentBuilder;
	
	@Value("${mail.name.param}")
    private String fromName;
	
	@Value("${mail.from.param}")
	private String fromMail;
	
	@Value("${mail.from.qualidade.param}")
	private String fromQualidadeMail;
    
	public void sendMailRenovacoesEPesquisa(String subject, String template, String mailTo){
		JavaMailSender mailSender = null;
		if(template.contains("qualidade")){
			mailSender = getMailSender(fromQualidadeMail, "Quebrando_Mitos1234");
		}else{
			mailSender = getMailSender(fromMail, "Quebrando_Mitos1234");
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
	
	public void sendMailPlanilhaTreino(Treino treino, String fileName, File planilha){
		String template = "html_email_treino_planilha.html";
		JavaMailSender mailSender = null;
		
		mailSender = getMailSender(fromMail, "Quebrando_Mitos1234");
		
		MimeMessage mail = mailSender.createMimeMessage();
	    
	    try {
	    	MimeMessageHelper helper = new MimeMessageHelper(mail, true);
			//helper.setTo(treino.getAluno().getEmail());
	    	helper.setTo("rafael@treinoconsciente.com.br");
	    	helper.setBcc("moacir.mazon@gmail.com");
			helper.setSubject("Consultoria - teste");
			
			helper.addAttachment(fileName, planilha);
			
			helper.setFrom(fromMail, fromName);
			
			String content = mailContentBuilder.buildMailTreino(template, treino.getAluno().getNome());
			helper.setText(content, true);
		    mailSender.send(mail);
		} catch (MessagingException | UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	
    public JavaMailSender getMailSender(String userName, String pwd) {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setDefaultEncoding("UTF-8");
        System.setProperty("mail.mime.charset", "utf8");
 
        mailSender.setHost("smtp.zoho.com");
        mailSender.setPort(587);
        
        mailSender.setUsername(userName);
        mailSender.setPassword(pwd);
 
        Properties javaMailProperties = new Properties();
        javaMailProperties.put("mail.smtp.starttls.enable", "true");
        javaMailProperties.put("mail.smtp.auth", "true");
        javaMailProperties.put("mail.transport.protocol", "smtp");
        javaMailProperties.put("mail.debug", "false");
 
        mailSender.setJavaMailProperties(javaMailProperties);
        return mailSender;
    }  
}
