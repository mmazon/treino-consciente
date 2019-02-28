package com.treino.consciente.treinoconsciente.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.treino.consciente.treinoconsciente.model.PlanilhaExercicio;

@Repository
public interface PlanilhaExercicioRepository  extends JpaRepository<PlanilhaExercicio, Long> {
	
	@Query("SELECT pe FROM planilha_exercicio pe WHERE pe.modeloTreino.idModelo = ?1 ORDER BY idPlanilhaExercicio asc")
	public List<PlanilhaExercicio> findAllPorIdModelo(Long idModelo);
}
