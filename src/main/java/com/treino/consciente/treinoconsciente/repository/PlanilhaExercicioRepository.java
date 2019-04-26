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
	
	    @Query("SELECT " +
	           "    new com.treino.consciente.treinoconsciente.model.PlanilhaExercicio(e.nomeExercicio, e.linkExercicio, e.metodo, e.linkMetodo) " +
	           "FROM " +
	           "    planilha_exercicio e " +
	           "GROUP BY " +
	           "    e.nomeExercicio, e.linkExercicio,e.metodo,e.linkMetodo " + 
	           "ORDER BY e.nomeExercicio")
    public  List<PlanilhaExercicio> findTodosGroupNameLink();
}
