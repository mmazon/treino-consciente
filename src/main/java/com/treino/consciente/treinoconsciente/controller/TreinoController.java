package com.treino.consciente.treinoconsciente.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp;
import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.store.FileDataStoreFactory;
import com.google.api.services.sheets.v4.Sheets;
import com.google.api.services.sheets.v4.SheetsScopes;
import com.google.gson.Gson;
import com.treino.consciente.treinoconsciente.model.Treino;
import com.treino.consciente.treinoconsciente.service.TreinoService;

@Controller
public class TreinoController {
	
	@Autowired
	private TreinoService service;
	
	@Autowired
	private static Sheets sheetsService;
	
//	private static final String SPREADSHEET_ID = "1awe4rmAdk8mGJ-Qu51a5j19UIveRv6Ynf858nkr3vBU";
	private static final String SPREADSHEET_ID = "1VFDiB1gu8QndoXqMupwRXtZFL58hQxWqCpbOdKaCw5k";
    private static final JsonFactory JSON_FACTORY = JacksonFactory.getDefaultInstance();
    private static final String APPLICATION_NAME = "Treino Consciente";
    private static final List<String> SCOPES = Collections.singletonList(SheetsScopes.SPREADSHEETS_READONLY);

	
	
	@PostConstruct
    public static void setup() throws GeneralSecurityException, IOException {
//		 // Build a new authorized API client service.
//        final NetHttpTransport HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
//        Sheets service = new Sheets.Builder(HTTP_TRANSPORT, JSON_FACTORY, getCredentials(HTTP_TRANSPORT))
//                .setApplicationName(APPLICATION_NAME)
//                .build();
//        
//        final String range = "Respostas ao formulário 1!A2:AQ";
//        ValueRange response = service.spreadsheets().values()
//                .get(SPREADSHEET_ID, range)
//                .execute();
//        List<List<Object>> values = response.getValues();
//        
//        if (values == null || values.isEmpty()) {
//            System.out.println("No data found.");
//        } else {
//            for (List row : values) {
//                // Print columns A and E, which correspond to indices 0 and 4.
//            	
//            	String linha = (String) row.stream().collect(Collectors.joining(","));
//                System.out.printf("%s\n", linha);
//            }
//        }
        
    }
	
	 private static Credential getCredentials(final NetHttpTransport HTTP_TRANSPORT) throws IOException {
	        // Load client secrets.
	        InputStream in = TreinoController.class.getResourceAsStream("/credentials.json");
	        GoogleClientSecrets clientSecrets = GoogleClientSecrets.load(JSON_FACTORY, new InputStreamReader(in));

	        // Build flow and trigger user authorization request.
	        GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(
	                HTTP_TRANSPORT, JSON_FACTORY, clientSecrets, SCOPES)
	                .setDataStoreFactory(new FileDataStoreFactory(new java.io.File("tokens")))
	                .setAccessType("offline")
	                .build();
	        return new AuthorizationCodeInstalledApp(flow, new LocalServerReceiver()).authorize("user");

    }

	
	@RequestMapping("/")
	public String findAll(Model model) {
		//Gson gson = new Gson();
		List<Treino> treinos = service.findAll();
	    //String treinosJson = gson.toJson(treinos);
		
	    model.addAttribute("treinos", treinos);
	    
//		ModelAndView mv = new ModelAndView("/treino");
//		mv.addObject("treinos", treinos);
		
		return "treino";
	}
	
	@GetMapping("/add")
	public String add(Treino treino, Model model) { 
		model.addAttribute("treino", treino);
		return "treinoAdd";
	}
	
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Long id, Model model) {
		Optional<Treino> treino = service.findOne(id);
		if(treino.isPresent())
			return add(treino.get(), model);
		return add(new Treino(), model);
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		
		service.delete(id);
		
		return findAll(null);
	}

	@PostMapping("/save")
	public String save(@ModelAttribute Treino treino, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			return add(treino, model);
		}
		
		service.save(treino);
		
		return findAll(model);
	}
	
}
