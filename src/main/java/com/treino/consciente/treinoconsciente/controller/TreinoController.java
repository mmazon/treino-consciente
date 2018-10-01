package com.treino.consciente.treinoconsciente.controller;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.text.ParseException;
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

import com.treino.consciente.treinoconsciente.model.Treino;
import com.treino.consciente.treinoconsciente.service.TreinoService;

@Controller
public class TreinoController {
	
	@Autowired
	private TreinoService treinoService;
	
	Logger logger = LoggerFactory.getLogger(TreinoController.class);
	
	@RequestMapping("/")
	public String findAll(Model model) {
		try {
			treinoService.syncFormulariosRespostas();
		} catch (GeneralSecurityException | IOException | ParseException e) {
			logger.error(e.getMessage());
		}
		
		List<Treino> treinos = treinoService.findAll();
	    model.addAttribute("treinos", treinos);
		return "home";
	}
	
	@GetMapping("/add")
	public String add(Treino treino, Model model) { 
		model.addAttribute("treino", treino);
		return "treinoAdd";
	}
	
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Long id, Model model) {
		Optional<Treino> treino = treinoService.findOne(id);
		if(treino.isPresent())
			return add(treino.get(), model);
		return add(new Treino(), model);
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		
		treinoService.delete(id);
		
		return findAll(null);
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
