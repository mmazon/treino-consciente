package com.treino.consciente.treinoconsciente.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treino.consciente.treinoconsciente.model.Treino;
import com.treino.consciente.treinoconsciente.repository.AlunoRepository;

@Service
public class AlunoService {
	
	@Autowired
	private AlunoRepository repository;
	
	public List<Treino> findAll() {
		return repository.findAll();
	}
	
	public Optional<Treino> findOne(Long id) {
		return repository.findById(id);
	}
	
	public Treino save(Treino Treino) {
		return repository.save(Treino);
	}
	
	public void delete(Long id) {
		repository.deleteById(id);
	}

}
