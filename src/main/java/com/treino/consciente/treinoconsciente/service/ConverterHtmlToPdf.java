package com.treino.consciente.treinoconsciente.service;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.StringWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Properties;

import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.itextpdf.text.Document;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import com.treino.consciente.treinoconsciente.model.Treino;
import com.treino.consciente.treinoconsciente.model.TreinoPDFPlanilhaDto;

@Service
public class ConverterHtmlToPdf {

	Logger logger = LoggerFactory.getLogger(ConverterHtmlToPdf.class);
	
	@Value("${url.servidor.param}")
    private String urlServidor;
	
	public byte[] convertHtmlToPdf(Treino treinoBusca){
		try {
			String fileName = "treino_" + treinoBusca.getIdTreino() +".pdf";
			
			String html = buildDocumento(treinoBusca);
			
		    OutputStream file = new FileOutputStream(new File(fileName));
		    Document document = new Document(PageSize.A4.rotate());
		    PdfWriter writer = PdfWriter.getInstance(document, file);
		    document.open();
		    InputStream is = new ByteArrayInputStream(html.getBytes());
		    XMLWorkerHelper.getInstance().parseXHtml(writer, document, is);
		    document.close();
		    file.close();
		    
		    Path path = Paths.get(fileName);
	        byte[] fileToReturn = Files.readAllBytes(path);
	        deleteTempFiles(fileName);
	        return fileToReturn;
	        
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private void deleteTempFiles(String fileNamePDFASerCriado) throws IOException {
		Path path2 = Paths.get(fileNamePDFASerCriado);
		Files.delete(path2);
	}

	public String buildDocumento(Treino treinoBusca){
		TreinoPDFPlanilhaDto dtoPlan = new TreinoPDFPlanilhaDto(treinoBusca);
		dtoPlan.buildListasAbcHiit();
		
		Properties p = new Properties();
		StringWriter message = new StringWriter();
		p.setProperty("resource.loader", "file");
		p.setProperty("file.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
	    Velocity.init(p);
		VelocityContext context = new VelocityContext();
		 
		context.put("treinoDto", dtoPlan);
		context.put("exerciciosA", dtoPlan.getTreinosAs());
		context.put("exerciciosB", dtoPlan.getTreinosBs());
		context.put("exerciciosC",  dtoPlan.getTreinosCs());
		context.put("exerciciosHiit1",  dtoPlan.getHiit1());
		context.put("exerciciosHiit2", dtoPlan.getHiit2()); 
		context.put("urlServidor", urlServidor);
		
    	Velocity.mergeTemplate("templates/planilha.vm", "UTF-8", context, message);
        
        return message.toString();
	}
	
}
