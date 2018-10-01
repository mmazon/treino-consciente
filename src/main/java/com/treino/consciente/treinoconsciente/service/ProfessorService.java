package com.treino.consciente.treinoconsciente.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treino.consciente.treinoconsciente.model.Professor;
import com.treino.consciente.treinoconsciente.repository.ProfessorRepository;

@Service
public class ProfessorService {
	
	@Autowired
	private ProfessorRepository repository;
	
	public List<Professor> findAll() {
		return repository.findAll();
	}
	
	public Optional<Professor> findOne(Long id) {
		return repository.findById(id);
	}
	
	public Professor save(Professor professor) {
		return repository.save(professor);
	}
	
	public void delete(Long id) {
		repository.deleteById(id);
	}

}
