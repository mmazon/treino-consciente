package com.treino.consciente.treinoconsciente.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.treino.consciente.treinoconsciente.model.ModeloExercicio;

@Repository
public interface ModeloExercicioRepository  extends JpaRepository<ModeloExercicio, Long> {
	
	public List<ModeloExercicio> findAllByQtDiasOrderByIdModeloAsc(Integer qtDias);
}
