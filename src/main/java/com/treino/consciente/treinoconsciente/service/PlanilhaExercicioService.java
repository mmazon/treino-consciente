package com.treino.consciente.treinoconsciente.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treino.consciente.treinoconsciente.model.PlanilhaExercicio;
import com.treino.consciente.treinoconsciente.repository.PlanilhaExercicioRepository;

@Service
public class PlanilhaExercicioService {
	
	@Autowired
	private PlanilhaExercicioRepository repository;
	
	public List<PlanilhaExercicio> findAllPorIdModelo(Long idModelo){
		return repository.findAllPorIdModelo(idModelo);
	}
 
	public List<PlanilhaExercicio> findTodosGroupNameLink(){
		return repository.findTodosGroupNameLink();
	}
	
	public boolean findAllByNomeExercicioIgnoreCaseContaining(String nome){
		List<PlanilhaExercicio> list = repository.findAllByNomeExercicioIgnoreCaseContaining(nome); 
		if(list != null && list.size() > 0)
			return true;
		return false;
	}
	
	public void saveAll(List<PlanilhaExercicio> planilhas){
		repository.saveAll(planilhas);
	}
}
