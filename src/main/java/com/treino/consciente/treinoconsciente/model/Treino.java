package com.treino.consciente.treinoconsciente.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonProperty;

@Entity(name = "treino")
public class Treino implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "id_treino")
	@SequenceGenerator(name = "treino_seq", sequenceName = "treino_seq")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "treino_seq")
	private Long idTreino;
	
	@Column(name = "nm_autor")
	private String autor;
	
	@JsonProperty("title")
	@Column(name = "ds_treino")
	private String descricao;
	
	@Column(name = "ds_obs")
	private String observacao;
	
	@Column(name = "dt_treino")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	private Date dataTreino;
	
	@Column(name = "status")
	private String status;
	
	@ManyToOne
	@JoinColumn(name = "id_aluno")
    private Aluno aluno;
	
	public Treino() {
	}

	public Treino(Long idTreino, String autor, String descricao, String observacao, Date dataTreino, String status) {
		super();
		this.idTreino = idTreino;
		this.autor = autor;
		this.descricao = descricao;
		this.observacao = observacao;
		this.dataTreino = dataTreino;
		this.status = status;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}

	public Long getIdTreino() {
		return idTreino;
	}

	public void setIdTreino(Long idTreino) {
		this.idTreino = idTreino;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public Date getDataTreino() {
		return dataTreino;
	}

	public void setDataTreino(Date dataTreino) {
		this.dataTreino = dataTreino;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
