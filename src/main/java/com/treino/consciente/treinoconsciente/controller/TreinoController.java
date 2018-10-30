package com.treino.consciente.treinoconsciente.controller;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.treino.consciente.treinoconsciente.model.Treino;
import com.treino.consciente.treinoconsciente.service.ProfessorService;
import com.treino.consciente.treinoconsciente.service.TreinoService;

@Controller
public class TreinoController {
	
	@Autowired
	private TreinoService treinoService;
	@Autowired
	private ProfessorService profService;
	
	Logger logger = LoggerFactory.getLogger(TreinoController.class);
	
	@RequestMapping("/")
	public String findAll(Model model) {
		List<Treino> treinos = treinoService.findAllByStatus("NAOENVIADO");
	    model.addAttribute("treinos", treinos);
		return "home";
	}
	
	@RequestMapping("/sync")
	public String sincronizar(Model model) {
		try {
			treinoService.syncFormulariosRespostas();
		} catch (GeneralSecurityException | IOException | java.text.ParseException e) {
			logger.error(e.getMessage());
		}
		
		List<Treino> treinos = treinoService.findAllByStatus("NAOENVIADO");
	    model.addAttribute("treinos", treinos);
		return "home";
	}
	
	@GetMapping("/add")
	public String add(Treino treino, Model model) { 
		model.addAttribute("treino", treino);
		model.addAttribute("profs", profService.findAll());
		return "treinoAdd";
	}
	
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Long id, Model model) {
		Optional<Treino> treino = treinoService.findOne(id);
		if(treino.isPresent()){
			Treino treinoBusca = treino.get();
			if(treinoBusca.getDataEnvioTreino() == null)
				treinoBusca.setDataEnvioTreino(new Date());
			return add(treino.get(), model);	
		}
			
		return add(new Treino(), model);
	}
	
	@RequestMapping(value = "/delete/id", method = RequestMethod.GET)
	public String delete(@RequestParam("id") Long id, Model model) {
		treinoService.delete(id);
		return findAll(model);
	}

	@PostMapping("/save")
	public String save(@ModelAttribute Treino treino, BindingResult result, Model model) {
		if(result.hasErrors()) {
			return add(treino, model);
		}
		treinoService.save(treino);
		return findAll(model);
	}
	
}
