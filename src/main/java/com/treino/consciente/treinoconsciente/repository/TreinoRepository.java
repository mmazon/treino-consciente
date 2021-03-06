package com.treino.consciente.treinoconsciente.repository;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.treino.consciente.treinoconsciente.model.Treino;

@Repository
public interface TreinoRepository extends JpaRepository<Treino, Long> {
	
	@Query("SELECT t FROM treino t WHERE t.aluno.idAluno = ?1 ORDER BY idTreino DESC")
	List<Treino> buscaTreinosByIdAluno(long idAluno);
	
	@Query("SELECT t FROM treino t WHERE t.dataRespostaFormulario = ?1 AND t.aluno.email = ?2")
	List<Treino> findAllTreinoByDataRespostaAndEmail(Date dataRespostaFormulario, String email);
	
	List<Treino> findAllByStatusOrderByIdTreinoAsc(String status);
	
	@Query("SELECT t FROM treino t WHERE t.tipoTreino like ?1% AND t.plano not like ?2% ORDER BY idTreino DESC")
	List<Treino> findTreinosByTipoAndPlano(String tipo, String plano);
	
	@Query("SELECT t FROM treino t WHERE t.dataReentrada > ?1 and (reentrou = 0 OR reentrou is NULL) ")
	List<Treino> buscaTreinosReentradas(Date data);
	
	@Query("SELECT t FROM treino t WHERE t.dataFinalTreino > ?1 and (renovou = 0 OR renovou is NULL) and (t.enviouMailRenov = 0 OR t.enviouMailRenov is NULL)")
	List<Treino> buscaTreinosRenovacao(Date data);

	@Query("SELECT t FROM treino t WHERE t.dataFinalTreino = ?1 and (t.enviouMailPesq = 0 OR t.enviouMailPesq is NULL)")
	List<Treino> buscaTreinosPesquisa(Date data);
	
	@Query("SELECT t FROM treino t WHERE t.dataFinalTreino < ?1 and (renovou = 0 OR renovou is NULL) and t.enviouMailRenov = 1 and (t.enviouMailAindaTempo = 0 OR t.enviouMailAindaTempo is NULL)")
	List<Treino> buscaTreinosAindaTempo(Date data);
	
	@Query("SELECT t FROM treino t WHERE t.aluno.email = ?1 ORDER BY idTreino DESC")
	List<Treino> findLastTreinoByEmail(String email);
	
	@Transactional
	@Modifying
	@Query("DELETE FROM planilha_treino t WHERE t.treino.idTreino = ?1")
	void deletePlanilhaTreino(Long idTreino);

}
