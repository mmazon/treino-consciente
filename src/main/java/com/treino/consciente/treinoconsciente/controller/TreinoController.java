package com.treino.consciente.treinoconsciente.controller;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.Calendar;
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

import com.treino.consciente.treinoconsciente.model.Treino;
import com.treino.consciente.treinoconsciente.service.AlunoService;
import com.treino.consciente.treinoconsciente.service.ProfessorService;
import com.treino.consciente.treinoconsciente.service.TreinoService;

@Controller
public class TreinoController {
	
	@Autowired
	private TreinoService treinoService;
	@Autowired
	private AlunoService alunoService;
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
	
//	@GetMapping("/formulario")
//	public String formulario(Model model) { 
//		return "formulario";
//	}
	
	@GetMapping("/add")
	public String add(Treino treino, Model model) { 
		model.addAttribute("treino", treino);
		model.addAttribute("profs", profService.findAll());
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
		treino.setProfessor(profService.findOne(treino.getProfessor().getIdProfessor()).get());
		treino.setAluno(alunoService.findOne(treino.getAluno().getIdAluno()).get());
		if(treino.getStatus().equals("ENVIADO")){
			treino.setDataEnvioTreino(new Date());
			Calendar calhj = Calendar.getInstance();
			LocalDate dataHoje = LocalDate.of(calhj.get(Calendar.YEAR), calhj.get(Calendar.MONTH)+1, calhj.get(Calendar.DAY_OF_MONTH));
			dataHoje = dataHoje.plusDays(30);
			treino.setDataReentrada(Date.from(dataHoje.atStartOfDay(ZoneId.systemDefault()).toInstant())); 
		}
		treinoService.save(treino);
		return findAll(model);
	}
	
}
