package com.treino.consciente.treinoconsciente.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

@Service
public class MailContentBuilder {
 
    private TemplateEngine templateEngine;
    
    @Value("${url.servidor.param}")
    private String urlServidor;
 
    @Autowired
    public MailContentBuilder(TemplateEngine templateEngine) {
        this.templateEngine = templateEngine;
    }
 
    public String build(String mailTemplate) {
        Context context = new Context();
        context.setVariable("urlServidor", urlServidor);
        return templateEngine.process(mailTemplate, context);
    }
    
    public String buildMailTreino(String mailTemplate, String aluno) {
        Context context = new Context();
        context.setVariable("nomeAluno", aluno);
        return templateEngine.process(mailTemplate, context);
    }
    

    //para templates que precisamos preencher, exe: planilhas
//    public String build(String message) {
//        Context context = new Context();
//        context.setVariable("message", message);
//        return templateEngine.process("mailTemplate", context);
//    }
 
}