package com.treino.consciente.treinoconsciente.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.treino.consciente.treinoconsciente.model.Treino;

@Repository
public interface TreinoRepository extends JpaRepository<Treino, Long> {

}
