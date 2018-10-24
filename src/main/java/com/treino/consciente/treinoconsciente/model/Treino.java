package com.treino.consciente.treinoconsciente.model;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Transient;

import org.springframework.format.annotation.DateTimeFormat;

@Entity(name = "treino")
public class Treino implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "id_treino")
	@SequenceGenerator(name = "treino_seq", sequenceName = "treino_seq")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "treino_seq")
	private Long idTreino;
	
	@Column(name = "ds_obs")
	private String observacao;
	
	@Column(name = "data_resposta_form")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date dataRespostaFormulario;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "data_envio")
	private Date dataEnvioTreino;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "data_reentrada")
	private Date dataReentrada;
	
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	@Column(name = "data_final_treino")
	private Date dataFinalTreino;

	@Column(name = "status")
	private String status;
	
	@Column(name = "tipo")
	private String tipoTreino;
	
	@Column(name = "plano")
	private String plano;
	
	@Column(name = "seq_treino")
	private Integer sequenciaTreino;
	
	@Column(name = "reentrou")
	private Integer reentrou;
	
	@Column(name = "renovou")
	private Integer renovou;
	
	public Integer getRenovou() {
		return renovou;
	}

	public void setRenovou(Integer renovou) {
		this.renovou = renovou;
	}

	@ManyToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name = "id_aluno")
    private Aluno aluno;
	
	@ManyToOne(cascade=CascadeType.MERGE)
	@JoinColumn(name = "id_professor")
    private Professor professor;
	
	@Transient
	private Boolean piscaFundo = false; //tcheee
	
	public Boolean getPiscaFundo() {
		return piscaFundo;
	}

	public void setPiscaFundo(Boolean piscaFundo) {
		this.piscaFundo = piscaFundo;
	}

	public Treino(String observacao, Date dataRespostaFormulario, Date dataEnvioTreino, Date dataReentrada,
			String status, String tipoTreino, String plano, Integer sequenciaTreino, Integer reentrou, Aluno aluno,
			Professor professor) {
		super();
		this.observacao = observacao;
		this.dataRespostaFormulario = dataRespostaFormulario;
		this.dataEnvioTreino = dataEnvioTreino;
		this.dataReentrada = dataReentrada;
		this.status = status;
		this.tipoTreino = tipoTreino;
		this.plano = plano;
		this.sequenciaTreino = sequenciaTreino;
		this.reentrou = reentrou;
		this.aluno = aluno;
		this.professor = professor;
	}

	public Treino() {
	}

	public Long getIdTreino() {
		return idTreino;
	}

	public void setIdTreino(Long idTreino) {
		this.idTreino = idTreino;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public Date getDataRespostaFormulario() {
		return dataRespostaFormulario;
	}

	public void setDataRespostaFormulario(Date dataRespostaFormulario) {
		this.dataRespostaFormulario = dataRespostaFormulario;
	}

	public Date getDataEnvioTreino() {
		return dataEnvioTreino;
	}

	public void setDataEnvioTreino(Date dataEnvioTreino) {
		this.dataEnvioTreino = dataEnvioTreino;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTipoTreino() {
		return tipoTreino;
	}

	public void setTipoTreino(String tipoTreino) {
		this.tipoTreino = tipoTreino;
	}

	public String getPlano() {
		return plano;
	}

	public void setPlano(String plano) {
		this.plano = plano;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}

	public Professor getProfessor() {
		return professor;
	}

	public void setProfessor(Professor professor) {
		this.professor = professor;
	}
	
	public String getLimiteEnvio() {
		Calendar cal = Calendar.getInstance();
		cal.setTime(dataRespostaFormulario);
		DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
		LocalDate retorno = LocalDate.of(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH)+1, cal.get(Calendar.DAY_OF_MONTH));
//		if (this.sequenciaTreino == 1) {
			retorno = retorno.plusDays(7);
//		}
		return retorno.format(dateFormatter);
	}
	
	public String getCorFundoTreino(){
		Calendar calhj = Calendar.getInstance();
		LocalDate dataHoje = LocalDate.of(calhj.get(Calendar.YEAR), calhj.get(Calendar.MONTH)+1, calhj.get(Calendar.DAY_OF_MONTH));
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(dataRespostaFormulario);
		LocalDate dataLimite = LocalDate.of(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH)+1, cal.get(Calendar.DAY_OF_MONTH));
		dataLimite = dataLimite.plusDays(7);
		Period p = Period.between(dataHoje, dataLimite);
		if(p.getYears() > 0 || p.getMonths() > 0)
			return "background-color: #32CD32"; //verde
		
		if(p.getDays() >= 4){
			return "background-color: #32CD32"; //verde
		}else if(p.getDays() >= 2){
			return "background-color: #FFA500"; //laranja
		}else if(p.getDays() >= 0){
			return "background-color: #FF6347"; //vermelho
		}else{
			setPiscaFundo(true);
			return "background-color: #FF6347"; //vermelho
		}
	}

	@Override
	public String toString() {
		return "Treino [idTreino=" + idTreino + ", observacao=" + observacao + ", dataRespostaFormulario=" + dataRespostaFormulario + ", reentrou=" + reentrou
				+ ", dataEnvioTreino=" + dataEnvioTreino + ", status=" + status + ", dataReentrada=" + dataReentrada 
				+ ", tipoTreino=" + tipoTreino + ", plano=" + plano + ", sequenciaTreino=" + sequenciaTreino
				+ ", aluno=" + aluno + ", professor=" + professor + ", dataFinalTreino=" + dataFinalTreino + ", renovou=" + renovou +"]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((aluno == null) ? 0 : aluno.hashCode());
		result = prime * result + ((dataEnvioTreino == null) ? 0 : dataEnvioTreino.hashCode());
		result = prime * result + ((dataRespostaFormulario == null) ? 0 : dataRespostaFormulario.hashCode());
		result = prime * result + ((idTreino == null) ? 0 : idTreino.hashCode());
		result = prime * result + ((observacao == null) ? 0 : observacao.hashCode());
		result = prime * result + ((plano == null) ? 0 : plano.hashCode());
		result = prime * result + ((professor == null) ? 0 : professor.hashCode());
		result = prime * result + ((sequenciaTreino == null) ? 0 : sequenciaTreino.hashCode());
		result = prime * result + ((status == null) ? 0 : status.hashCode());
		result = prime * result + ((tipoTreino == null) ? 0 : tipoTreino.hashCode());
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
		Treino other = (Treino) obj;
		if (aluno == null) {
			if (other.aluno != null) {
				return false;
			}
		} else if (!aluno.equals(other.aluno)) {
			return false;
		}
		if (dataEnvioTreino == null) {
			if (other.dataEnvioTreino != null) {
				return false;
			}
		} else if (!dataEnvioTreino.equals(other.dataEnvioTreino)) {
			return false;
		}
		if (dataRespostaFormulario == null) {
			if (other.dataRespostaFormulario != null) {
				return false;
			}
		} else if (!dataRespostaFormulario.equals(other.dataRespostaFormulario)) {
			return false;
		}
		if (idTreino == null) {
			if (other.idTreino != null) {
				return false;
			}
		} else if (!idTreino.equals(other.idTreino)) {
			return false;
		}
		if (observacao == null) {
			if (other.observacao != null) {
				return false;
			}
		} else if (!observacao.equals(other.observacao)) {
			return false;
		}
		if (plano == null) {
			if (other.plano != null) {
				return false;
			}
		} else if (!plano.equals(other.plano)) {
			return false;
		}
		if (professor == null) {
			if (other.professor != null) {
				return false;
			}
		} else if (!professor.equals(other.professor)) {
			return false;
		}
		if (sequenciaTreino == null) {
			if (other.sequenciaTreino != null) {
				return false;
			}
		} else if (!sequenciaTreino.equals(other.sequenciaTreino)) {
			return false;
		}
		if (status == null) {
			if (other.status != null) {
				return false;
			}
		} else if (!status.equals(other.status)) {
			return false;
		}
		if (tipoTreino == null) {
			if (other.tipoTreino != null) {
				return false;
			}
		} else if (!tipoTreino.equals(other.tipoTreino)) {
			return false;
		}
		return true;
	}
	
	
	public Date getDataReentrada() {
		return dataReentrada;
	}

	public void setDataReentrada(Date dataReentrada) {
		this.dataReentrada = dataReentrada;
	}
	
	public Integer getReentrou() {
		return reentrou;
	}

	public void setReentrou(Integer reentrou) {
		this.reentrou = reentrou;
	}

	public Integer getSequenciaTreino() {
		return sequenciaTreino;
	}

	public void setSequenciaTreino(Integer sequenciaTreino) {
		this.sequenciaTreino = sequenciaTreino;
	}

	public Date getDataFinalTreino() {
		return dataFinalTreino;
	}

	public void setDataFinalTreino(Date dataFinalTreino) {
		this.dataFinalTreino = dataFinalTreino;
	}
}
