package com.treino.consciente.treinoconsciente.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.treino.consciente.treinoconsciente.model.Treino;

@Repository
public interface TreinoRepository extends JpaRepository<Treino, Long> {
	
	@Query("SELECT t FROM treino t WHERE t.aluno.idAluno = ?1 ORDER BY idTreino DESC")
	List<Treino> findAlunoTreinoByIdAluno(long idAluno);
	
	@Query("SELECT t FROM treino t WHERE t.dataRespostaFormulario = ?1 AND t.aluno.email = ?2")
	Treino findTreinoByDataRespostaAndEmail(Date dataRespostaFormulario, String email);

}
