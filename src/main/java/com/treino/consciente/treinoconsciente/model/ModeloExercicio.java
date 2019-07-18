package com.treino.consciente.treinoconsciente.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity(name = "modelo_exercicio")
public class ModeloExercicio implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "id_modelo")
	@SequenceGenerator(name = "modelo_exercicio_seq", sequenceName = "modelo_exercicio_seq", allocationSize = 1, initialValue = 100)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "modelo_exercicio_seq")
	private Long idModelo;
	
	@Column(name = "qtde_dias")
	private Integer qtDias;
	
	@Column(name = "nome")
	private String nome;
	
	public ModeloExercicio() {
	}

	public Long getIdModelo() {
		return idModelo;
	}

	public void setIdModelo(Long idModelo) {
		this.idModelo = idModelo;
	}

	public Integer getQtDias() {
		return qtDias;
	}

	public void setQtDias(Integer qtDias) {
		this.qtDias = qtDias;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Override
	public String toString() {
		return "ModeloTreino [idModelo=" + idModelo + ", qtDias=" + qtDias + ", nome=" + nome + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((idModelo == null) ? 0 : idModelo.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result + ((qtDias == null) ? 0 : qtDias.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		ModeloExercicio other = (ModeloExercicio) obj;
		if (idModelo == null) {
			if (other.idModelo != null) {
				return false;
			}
		} else if (!idModelo.equals(other.idModelo)) {
			return false;
		}
		if (nome == null) {
			if (other.nome != null) {
				return false;
			}
		} else if (!nome.equals(other.nome)) {
			return false;
		}
		if (qtDias == null) {
			if (other.qtDias != null) {
				return false;
			}
		} else if (!qtDias.equals(other.qtDias)) {
			return false;
		}
		return true;
	}

}
