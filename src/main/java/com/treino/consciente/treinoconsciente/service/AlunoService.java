package com.treino.consciente.treinoconsciente.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treino.consciente.treinoconsciente.model.Aluno;
import com.treino.consciente.treinoconsciente.repository.AlunoRepository;

@Service
public class AlunoService {
	
	@Autowired
	private AlunoRepository repository;
	
	public List<Aluno> findAll() {
		return repository.findAll();
	}
	
	public Optional<Aluno> findOne(Long id) {
		return repository.findById(id);
	}
	
	public Aluno save(Aluno aluno) {
		return repository.save(aluno);
	}
	
	public void delete(Long id) {
		repository.deleteById(id);
	}

}
