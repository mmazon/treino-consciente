package com.treino.consciente.treinoconsciente.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

@Entity(name = "planilha_exercicio")
public class PlanilhaExercicio implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "id_planilha_exercicio")
	@SequenceGenerator(name = "planilha_exercicio_seq", sequenceName = "planilha_exercicio_seq")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "planilha_exercicio_seq")
	private Long idPlanilhaExercicio;
	
	@Column(name = "nome_planilha_exer")
	private String nomePlanilhaExer; //ex: Treino A, Treino B

	@ManyToOne(cascade=CascadeType.DETACH)
	@JoinColumn(name = "id_modelo")
	private ModeloExercicio modeloTreino;
	
	@Column(name = "nome_exercicio")
	private String nomeExercicio;
	
	@Column(name = "link_exercicio")
	private String linkExercicio;
	
	@Column(name = "obs")
	private String observacao;
	
	@Column(name = "metedo")
	private String metodo;
	
	@Column(name = "link_metedo")
	private String linkMetodo;
	
	@Column(name = "series")
	private String series;
	
	@Column(name = "reps")
	private String reps;
	
	@Column(name = "intervalo")
	private String intervalo;
	
	@Column(name = "cadencia")
	private String cadencia;
	
	public PlanilhaExercicio() {
	}
	
	public PlanilhaExercicio(String nome, String link,String metodo, String linkMetodo) {
		this.nomeExercicio = nome;
		this.linkExercicio = link;
		this.metodo = metodo;
		this.linkMetodo = linkMetodo;
	}
	
	public PlanilhaExercicio(String nome, String link) {
		this.nomeExercicio = nome;
		this.linkExercicio = link;
	}
	
	public Long getIdPlanilhaExercicio() {
		return idPlanilhaExercicio;
	}
	public void setIdPlanilhaExercicio(Long idPlanilhaExercicio) {
		this.idPlanilhaExercicio = idPlanilhaExercicio;
	}
	public String getNomePlanilhaExer() {
		return nomePlanilhaExer;
	}
	public void setNomePlanilhaExer(String nomePlanilhaExer) {
		this.nomePlanilhaExer = nomePlanilhaExer;
	}
	public ModeloExercicio getModeloTreino() {
		return modeloTreino;
	}
	public void setModeloTreino(ModeloExercicio modeloTreino) {
		this.modeloTreino = modeloTreino;
	}
	public String getNomeExercicio() {
		return nomeExercicio;
	}
	public void setNomeExercicio(String nomeExercicio) {
		this.nomeExercicio = nomeExercicio;
	}
	public String getLinkExercicio() {
		return linkExercicio;
	}
	public void setLinkExercicio(String linkExercicio) {
		this.linkExercicio = linkExercicio;
	}
	public String getObservacao() {
		return observacao;
	}
	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
	public String getMetodo() {
		return metodo;
	}
	public void setMetodo(String metodo) {
		this.metodo = metodo;
	}
	public String getLinkMetodo() {
		return linkMetodo;
	}
	public void setLinkMetodo(String linkMetodo) {
		this.linkMetodo = linkMetodo;
	}
	public String getSeries() {
		return series;
	}
	public void setSeries(String series) {
		this.series = series;
	}
	public String getReps() {
		return reps;
	}
	public void setReps(String reps) {
		this.reps = reps;
	}
	public String getIntervalo() {
		return intervalo;
	}
	public void setIntervalo(String intervalo) {
		this.intervalo = intervalo;
	}
	public String getCadencia() {
		return cadencia;
	}
	public void setCadencia(String cadencia) {
		this.cadencia = cadencia;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cadencia == null) ? 0 : cadencia.hashCode());
		result = prime * result + ((idPlanilhaExercicio == null) ? 0 : idPlanilhaExercicio.hashCode());
		result = prime * result + ((intervalo == null) ? 0 : intervalo.hashCode());
		result = prime * result + ((linkExercicio == null) ? 0 : linkExercicio.hashCode());
		result = prime * result + ((linkMetodo == null) ? 0 : linkMetodo.hashCode());
		result = prime * result + ((metodo == null) ? 0 : metodo.hashCode());
		result = prime * result + ((modeloTreino == null) ? 0 : modeloTreino.hashCode());
		result = prime * result + ((nomeExercicio == null) ? 0 : nomeExercicio.hashCode());
		result = prime * result + ((nomePlanilhaExer == null) ? 0 : nomePlanilhaExer.hashCode());
		result = prime * result + ((observacao == null) ? 0 : observacao.hashCode());
		result = prime * result + ((reps == null) ? 0 : reps.hashCode());
		result = prime * result + ((series == null) ? 0 : series.hashCode());
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
		PlanilhaExercicio other = (PlanilhaExercicio) obj;
		if (cadencia == null) {
			if (other.cadencia != null) {
				return false;
			}
		} else if (!cadencia.equals(other.cadencia)) {
			return false;
		}
		if (idPlanilhaExercicio == null) {
			if (other.idPlanilhaExercicio != null) {
				return false;
			}
		} else if (!idPlanilhaExercicio.equals(other.idPlanilhaExercicio)) {
			return false;
		}
		if (intervalo == null) {
			if (other.intervalo != null) {
				return false;
			}
		} else if (!intervalo.equals(other.intervalo)) {
			return false;
		}
		if (linkExercicio == null) {
			if (other.linkExercicio != null) {
				return false;
			}
		} else if (!linkExercicio.equals(other.linkExercicio)) {
			return false;
		}
		if (linkMetodo == null) {
			if (other.linkMetodo != null) {
				return false;
			}
		} else if (!linkMetodo.equals(other.linkMetodo)) {
			return false;
		}
		if (metodo == null) {
			if (other.metodo != null) {
				return false;
			}
		} else if (!metodo.equals(other.metodo)) {
			return false;
		}
		if (modeloTreino == null) {
			if (other.modeloTreino != null) {
				return false;
			}
		} else if (!modeloTreino.equals(other.modeloTreino)) {
			return false;
		}
		if (nomeExercicio == null) {
			if (other.nomeExercicio != null) {
				return false;
			}
		} else if (!nomeExercicio.equals(other.nomeExercicio)) {
			return false;
		}
		if (nomePlanilhaExer == null) {
			if (other.nomePlanilhaExer != null) {
				return false;
			}
		} else if (!nomePlanilhaExer.equals(other.nomePlanilhaExer)) {
			return false;
		}
		if (observacao == null) {
			if (other.observacao != null) {
				return false;
			}
		} else if (!observacao.equals(other.observacao)) {
			return false;
		}
		if (reps == null) {
			if (other.reps != null) {
				return false;
			}
		} else if (!reps.equals(other.reps)) {
			return false;
		}
		if (series == null) {
			if (other.series != null) {
				return false;
			}
		} else if (!series.equals(other.series)) {
			return false;
		}
		return true;
	}
	@Override
	public String toString() {
		return "PlanilhaExercicio [idPlanilhaExercicio=" + idPlanilhaExercicio + ", nomePlanilhaExer="
				+ nomePlanilhaExer + ", modeloTreino=" + modeloTreino + ", nomeExercicio=" + nomeExercicio
				+ ", linkExercicio=" + linkExercicio + ", observacao=" + observacao + ", metodo=" + metodo
				+ ", linkMetodo=" + linkMetodo + ", series=" + series + ", reps=" + reps + ", intervalo=" + intervalo
				+ ", cadencia=" + cadencia + "]";
	}
	
	
}
