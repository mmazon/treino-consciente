package com.treino.consciente.treinoconsciente.controller;

import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.treino.consciente.treinoconsciente.model.DiasSemanaTreino;
import com.treino.consciente.treinoconsciente.model.ModeloExercicio;
import com.treino.consciente.treinoconsciente.model.PlanilhaExercicio;
import com.treino.consciente.treinoconsciente.model.PlanilhaTreino;
import com.treino.consciente.treinoconsciente.model.Treino;
import com.treino.consciente.treinoconsciente.service.ConverterHtmlToPdf;
import com.treino.consciente.treinoconsciente.service.MailService;
import com.treino.consciente.treinoconsciente.service.ModeloExercicioService;
import com.treino.consciente.treinoconsciente.service.PlanilhaExercicioService;
import com.treino.consciente.treinoconsciente.service.ProfessorService;
import com.treino.consciente.treinoconsciente.service.TreinoService;


@Controller
public class TreinoController {
	
	@Autowired
	private TreinoService treinoService;
	@Autowired
	private ProfessorService profService;
	@Autowired
	private ModeloExercicioService modeloService;
	@Autowired
	private PlanilhaExercicioService planilhaService;
	@Autowired
	ConverterHtmlToPdf pdfConv;
	
	@Autowired
	private MailService mailService;
	
	Logger logger = LoggerFactory.getLogger(TreinoController.class);
	
	@RequestMapping("/")
	public String findAll(Model model) {
		List<Treino> treinos = treinoService.findAllByStatus("NAOENVIADO");
	    model.addAttribute("treinos", treinos);
		return "home";
	}
	
	@RequestMapping(value = "/addSeteDias/id", method = RequestMethod.GET)
	public String addSeteDias(@RequestParam("id") Long id, Model model) {
		treinoService.addSeteDias(id);
		return findAll(model);
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
	
	@GetMapping("/addPlanilha")
	public String addPlanilha(Treino treino, Model model) { 
		model.addAttribute("treino", treino);
		return "planilhaAdd";
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
	
	@GetMapping("/addPlanilha/{id}")
	public String addPlanilha(@PathVariable("id") Long id, Model model) {
		Optional<Treino> treino = treinoService.findOne(id);
		if(treino.isPresent()){
			Treino treinoBusca = treino.get();
			
			if(treinoBusca.getDiasDaSemanaStr() != null && !treinoBusca.getDiasDaSemanaStr().equals("")){
				treinoBusca.setListaDeDiasSelecionadosExer(new ArrayList<String>(Arrays.asList(treinoBusca.getDiasDaSemanaStr().split(","))));
			}
			if(treinoBusca.getDiasDaSemanaHiitStr() != null && !treinoBusca.getDiasDaSemanaHiitStr().equals("")){
				treinoBusca.setListaDeDiasSelecionadosHiit(new ArrayList<String>(Arrays.asList(treinoBusca.getDiasDaSemanaHiitStr().split(","))));
			}
			if(treinoBusca.getDiasDaSemanaHiit2Str() != null && !treinoBusca.getDiasDaSemanaHiit2Str().equals("")){
				treinoBusca.setListaDeDiasSelecionadosOtherHiit(new ArrayList<String>(Arrays.asList(treinoBusca.getDiasDaSemanaHiit2Str().split(","))));
			}
			treinoBusca.setDiasSemana(DiasSemanaTreino.obterLista());
			
			if(treinoBusca.getPlanilhas() != null && treinoBusca.getPlanilhas().size() > 0){
				model.addAttribute("comboModelos", modeloService.findAllByQtDias(treinoBusca.getPlanilhas().get(0).getModeloTreino().getQtDias()));
				treinoBusca.setModeloSelecionado(treinoBusca.getPlanilhas().get(0).getModeloTreino());
				ModeloExercicio modeloHiit1 = findModeloESetaPlanilhaHiit1(treinoBusca.getPlanilhas(), model);
				ModeloExercicio modeloHiit2 = findModeloESetaPlanilhaHiit2(treinoBusca.getPlanilhas(), model);
				treinoBusca.setModeloHiitSelecionado(modeloHiit1);
				treinoBusca.setModeloOtherHiitSelecionado(modeloHiit2);
				List<PlanilhaTreino> planilhasAbc = setaPlanilhaAbc(treinoBusca.getPlanilhas());
				model.addAttribute("planilhasExercicios", planilhasAbc);
			}else{
				model.addAttribute("comboModelos", new ArrayList<>());
			}
			
			model.addAttribute("treino", treinoBusca);
			
			List<ModeloExercicio> modelosHiit = modeloService.findAllByQtDias(7);
			model.addAttribute("comboModelosHiit", modelosHiit);
			model.addAttribute("comboModelosHiit2", modelosHiit);
			model.addAttribute("exers", planilhaService.findTodosGroupNameLink());
			 
			return "planilhaAdd";
		}
		return add(new Treino(), model);
	} 
	
	private List<PlanilhaTreino> setaPlanilhaAbc(List<PlanilhaTreino> planilhas) {
		List<PlanilhaTreino> listAbc = new ArrayList<>();
		for(PlanilhaTreino pla : planilhas){
			if(!pla.getNomePlanilhaExer().startsWith("HIIT") && !pla.getNomePlanilhaExer().startsWith("Aer")){
				listAbc.add(pla);
			}
		}
		return listAbc;
	}

	private ModeloExercicio findModeloESetaPlanilhaHiit2(List<PlanilhaTreino> planilhas, Model model) {
		List<PlanilhaTreino> listHiit = new ArrayList<>();
		for(PlanilhaTreino pla : planilhas){
			if(pla.getNomePlanilhaExer().startsWith("Aer")){
				listHiit.add(pla);
				model.addAttribute("planilhasExerciciosHiit2", listHiit);
				return pla.getModeloTreino();
			}
		}
		model.addAttribute("planilhasExerciciosHiit2", listHiit);
		return new ModeloExercicio();
	}

	private ModeloExercicio findModeloESetaPlanilhaHiit1(List<PlanilhaTreino> planilhas, Model model) {
		List<PlanilhaTreino> listHiit = new ArrayList<>();
		for(PlanilhaTreino pla : planilhas){
			if(pla.getNomePlanilhaExer().startsWith("HIIT")){
				listHiit.add(pla);
				model.addAttribute("planilhasExerciciosHiit", listHiit);
				return pla.getModeloTreino();
			}
		}
		model.addAttribute("planilhasExerciciosHiit", listHiit);
		return new ModeloExercicio();
	}
 
	@PostMapping("/savePlanilha")
	public String savePlanilha(@RequestBody Treino treino, Model model) {
		Optional<Treino> treinoBuscaOpt = treinoService.findOne(treino.getIdTreino());
		if(treinoBuscaOpt.isPresent()){
			Treino treinoBusca = treinoBuscaOpt.get();
			if(treinoBusca.getPlanilhas() != null){
				treinoService.deletePlanilhasTreino(treinoBusca.getIdTreino());
			} 
			trataCamposTela(treino, treinoBusca);
			trataDiasSemana(treino, treinoBusca);
			treinoService.saveSemAlterarStatusAndDatas(treinoBusca);
			trataHiitAcNovos(treinoBusca);
		}
		return addPlanilha(treino.getIdTreino(), model);
	}

	
	private void trataHiitAcNovos(Treino treinoBusca) {
		List<PlanilhaExercicio> listHiitInserir = new ArrayList<>();
		
		for(PlanilhaTreino pt : treinoBusca.getPlanilhas()){
			PlanilhaExercicio peNovo = new PlanilhaExercicio();
			ModeloExercicio modeloNovo = new ModeloExercicio();
			if(pt.getNomePlanilhaExer().equals("HIIT") || pt.getNomePlanilhaExer().startsWith("Aer")){
				if(!planilhaService.findAllByNomeExercicioIgnoreCaseContaining(pt.getNomeExercicio())){
					
					modeloNovo.setNome(pt.getModeloTreino().getNome() + " - " + pt.getNomeExercicio());
					modeloNovo.setQtDias(pt.getModeloTreino().getQtDias());
					modeloNovo = modeloService.save(modeloNovo);	
					
					peNovo.setCadencia(pt.getCadencia());
					peNovo.setIntervalo(pt.getIntervalo());
					peNovo.setLinkExercicio(pt.getLinkExercicio());
					peNovo.setNomeExercicio(pt.getNomeExercicio());
					peNovo.setNomePlanilhaExer(pt.getNomePlanilhaExer());
					peNovo.setObservacao(pt.getObservacao());
					peNovo.setReps(pt.getReps());
					peNovo.setSeries(pt.getSeries());
					peNovo.setModeloTreino(modeloNovo);
					
					listHiitInserir.add(peNovo);
				}
			}
		}
		if(listHiitInserir != null && listHiitInserir.size() > 0)
			planilhaService.saveAll(listHiitInserir);
	}

	@GetMapping(value = "/modelos/{qtdeDias}")
	public String loadModelos(Model model, @PathVariable("qtdeDias") Integer qtdeDias) {
		model.addAttribute("comboModelos", modeloService.findAllByQtDias(qtdeDias));
		model.addAttribute("modeloSelecionado", new ModeloExercicio());
	    return "planilhaAdd :: #selectModelos";
	}
	
	@GetMapping(value = "/exercicios/{idModelo}")
	public String loadExercicios(Model model, @PathVariable("idModelo") Long idModelo) {
		List<PlanilhaExercicio> listExerc = planilhaService.findAllPorIdModelo(idModelo);
		model.addAttribute("planilhasExercicios", listExerc);
	    return "planilhaAdd :: #tableExerResults";
	}
	
	@GetMapping(value = "/exercicios-hiit/{idModelo}")
	public String loadExerciciosHiit(Model model, @PathVariable("idModelo") Long idModelo) {
		List<PlanilhaExercicio> listExerc = planilhaService.findAllPorIdModelo(idModelo);
		model.addAttribute("planilhasExerciciosHiit", listExerc);
	    return "planilhaAdd :: #tableExerHiitResults";
	}
	
	@GetMapping(value = "/exercicios-hiit2/{idModelo}")
	public String loadExerciciosHiit2(Model model, @PathVariable("idModelo") Long idModelo) {
		List<PlanilhaExercicio> listExerc = planilhaService.findAllPorIdModelo(idModelo);
		model.addAttribute("planilhasExerciciosHiit2", listExerc);
	    return "planilhaAdd :: #tableExerHiitResults2";
	} 
	
	@GetMapping(value = "/files/{id}")
	public ResponseEntity<ByteArrayResource> downloadPlanilha(@PathVariable("id") Long idTreino) {
		Optional<Treino> treinoBuscaOpt = treinoService.findOne(idTreino);
		Treino treinoBusca = treinoBuscaOpt.get();
		
		ByteArrayResource resource = new ByteArrayResource(pdfConv.convertHtmlToPdf(treinoBusca));
		
		return ResponseEntity.ok()
                // Content-Disposition
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=" + "Treino_" + treinoBusca.getAluno().getNome().replaceAll("\\s+","_")  +".pdf")
                .contentType(MediaType.valueOf("application/pdf;charset=UTF-8"))
                // Contet-Length
                .body(resource);	
	}
	
	@PostMapping(value = "/enviaMailPlanilha")
	public String enviaEmailPlanilha(@RequestBody Treino treino, Model model) {
		Optional<Treino> treinoBuscaOpt = treinoService.findOne(treino.getIdTreino());
		Treino treinoBusca = treinoBuscaOpt.get();
		File file = pdfConv.convertHtmlToPdfFile(treinoBusca);
		if(treinoBusca.getSequenciaTreino().equals(1))
			mailService.sendMailPlanilhaPrimeiroTreino(treinoBusca, "Treino - "+ treinoBusca.getSequenciaTreino() + " - " + treinoBusca.getAluno().getNome() + ".pdf", file);
		else
			mailService.sendMailPlanilhaTreino(treinoBusca, "Treino - "+ treinoBusca.getSequenciaTreino() + " - " + treinoBusca.getAluno().getNome() + ".pdf", file);
		return addPlanilha(treinoBusca.getIdTreino(), model);
	}

	private void trataCamposTela(Treino treino, Treino treinoBusca) {
		treinoBusca.setDiasDaSemanaStr(treino.getDiasDaSemanaStr());
		treinoBusca.setDiasDaSemanaHiitStr(treino.getDiasDaSemanaHiitStr());
		treinoBusca.setDiasDaSemanaHiit2Str(treino.getDiasDaSemanaHiit2Str());
		List<PlanilhaTreino> planilhasTratadas = new ArrayList<>();
		for(PlanilhaTreino pt : treino.getPlanilhas()){
			if(pt.getNomeExercicio() != null){
				pt.setTreino(treinoBusca);
				planilhasTratadas.add(pt);
			}
		}
		if(planilhasTratadas != null && planilhasTratadas.size() > 0){
			treinoBusca.setPlanilhas(planilhasTratadas);
		}
		
		treinoBusca.setObservacao(treino.getObservacao());
		
	}

	private void trataDiasSemana(Treino treino, Treino treinoBusca) {
		if(treino.getListaDeDiasSelecionadosExer() != null && !treino.getListaDeDiasSelecionadosExer().isEmpty()){
			
			StringBuilder diaSemana = new StringBuilder();
			String sep = ",";
			boolean first = true;
			for(DiasSemanaTreino dia : DiasSemanaTreino.obterLista()){
				List<String> dias = treino.getListaDeDiasSelecionadosExer();
				
				boolean existeDiaSelecionado = dias.stream().anyMatch(d -> Integer.parseInt(d) == dia.getCodigo());
				
				if(existeDiaSelecionado){
					if(first){
						diaSemana.append(dia.getCodigo());
						first = false;
					}else{
						diaSemana.append(sep).append(dia.getCodigo());
					}
				}else{
					if(first){
						diaSemana.append("null");
						first = false;
					}else{
						diaSemana.append(sep).append("null");
					}
				}
			}
			treinoBusca.setDiasDaSemanaStr(diaSemana.toString());
			
			diaSemana = new StringBuilder();
			sep = ",";
			first = true;
			for(DiasSemanaTreino dia : DiasSemanaTreino.obterLista()){
				List<String> dias = treino.getListaDeDiasSelecionadosHiit();
				
				boolean existeDiaSelecionado = dias.stream().anyMatch(d -> Integer.parseInt(d) == dia.getCodigo());
				
				if(existeDiaSelecionado){
					if(first){
						diaSemana.append(dia.getCodigo());
						first = false;
					}else{
						diaSemana.append(sep).append(dia.getCodigo());
					}
				}else{
					if(first){
						diaSemana.append("null");
						first = false;
					}else{
						diaSemana.append(sep).append("null");
					}
				}
			}
			treinoBusca.setDiasDaSemanaHiitStr(diaSemana.toString());
			
			
			diaSemana = new StringBuilder();
			sep = ",";
			first = true;
			for(DiasSemanaTreino dia : DiasSemanaTreino.obterLista()){
				List<String> dias = treino.getListaDeDiasSelecionadosOtherHiit();
				
				boolean existeDiaSelecionado = dias.stream().anyMatch(d -> Integer.parseInt(d) == dia.getCodigo());
				
				if(existeDiaSelecionado){
					if(first){
						diaSemana.append(dia.getCodigo());
						first = false;
					}else{
						diaSemana.append(sep).append(dia.getCodigo());
					}
				}else{
					if(first){
						diaSemana.append("null");
						first = false;
					}else{
						diaSemana.append(sep).append("null");
					}
				}
			}
			treinoBusca.setDiasDaSemanaHiit2Str(diaSemana.toString());
			
		}
	}	
}
