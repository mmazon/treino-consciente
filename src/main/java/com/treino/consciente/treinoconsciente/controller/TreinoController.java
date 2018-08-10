package com.treino.consciente.treinoconsciente.controller;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.treino.consciente.treinoconsciente.model.Treino;
import com.treino.consciente.treinoconsciente.service.TreinoService;

@Controller
public class TreinoController {
	
	@Autowired
	private TreinoService service;
	
	@GetMapping("/")
	public ModelAndView findAll() {
		
		ModelAndView mv = new ModelAndView("/treino");
		mv.addObject("treinos", service.findAll());
		
		return mv;
	}
	
	@GetMapping("/add")
	public ModelAndView add(Treino treino) {
		
		ModelAndView mv = new ModelAndView("/treinoAdd");
		mv.addObject("treino", treino);
		
		return mv;
	}
	
	@GetMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable("id") Long id) {
		Optional<Treino> treino = service.findOne(id);
		if(treino.isPresent())
			return add(treino.get());
		return add(new Treino());
	}
	
	@GetMapping("/delete/{id}")
	public ModelAndView delete(@PathVariable("id") Long id) {
		
		service.delete(id);
		
		return findAll();
	}

	@PostMapping("/save")
	public ModelAndView save(@Valid Treino treino, BindingResult result) {
		
		if(result.hasErrors()) {
			return add(treino);
		}
		
		service.save(treino);
		
		return findAll();
	}
	
}
