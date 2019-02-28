package com.treino.consciente.treinoconsciente.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treino.consciente.treinoconsciente.model.ModeloExercicio;
import com.treino.consciente.treinoconsciente.repository.ModeloExercicioRepository;

@Service
public class ModeloExercicioService {
	
	@Autowired
	private ModeloExercicioRepository repository;
	
	public List<ModeloExercicio> findAllByQtDias(Integer qtDias){
		return repository.findAllByQtDiasOrderByIdModeloAsc(qtDias);
	}
	
	public List<ModeloExercicio> findAll() {
		return repository.findAll();
	}
	
	public Optional<ModeloExercicio> findOne(Long id) {
		return repository.findById(id);
	}
}
