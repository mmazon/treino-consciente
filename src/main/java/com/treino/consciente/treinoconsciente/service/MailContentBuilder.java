package com.treino.consciente.treinoconsciente.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;

import com.treino.consciente.treinoconsciente.model.Treino;

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
    
    public String buildMailTreino(String mailTemplate, Treino treino, String whatsapp, String whatsAppLink) {
        Context context = new Context();
        int indexOf = treino.getAluno().getNome().indexOf(' ');
        context.setVariable("nomeAluno",  treino.getAluno().getNome().substring(0, indexOf)); 
        context.setVariable("whatsApp",  whatsapp);
        context.setVariable("whatsAppLink",  whatsAppLink);
        context.setVariable("nomeProfessor",  treino.getProfessor().getNome().substring(0, treino.getProfessor().getNome().lastIndexOf(' ')));
        return templateEngine.process(mailTemplate, context);
    }

}