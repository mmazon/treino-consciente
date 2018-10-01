package com.treino.consciente.treinoconsciente.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

@Entity(name = "aluno")
public class Aluno implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "id_aluno")
	@SequenceGenerator(name = "aluno_seq", sequenceName = "aluno_seq")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "aluno_seq")
	private Long idAluno;
	
	@Column(name = "nm_aluno")
	private String nome;
	
	@Column(name = "data_resposta_form")
	private Date dataRespostaFormulario;
	
	@Column(name = "data_nascimento")
	private Date dataNascimento;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "sexo")
	private String sexo;
	
	@Column(name = "telefone")
	private String telefone;
	
	@Column(name = "cidade_uf")
	private String cidadeUf;
	
	@Column(name = "link_formulario")
	private String linkFormulario;
	
	@Column(name = "ds_obs")
	private String observacao;
	
	@Column(name = "peso")
	private String peso;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "aluno")
    private List<Treino> treinos;
	
	public Aluno() {
	}

	public List<Treino> getTreinos() {
		return treinos;
	}

	public void setTreinos(List<Treino> treinos) {
		this.treinos = treinos;
	}

	public Long getIdAluno() {
		return idAluno;
	}
	
	public String getLinkFormulario() {
		return linkFormulario;
	}

	public void setLinkFormulario(String linkFormulario) {
		this.linkFormulario = linkFormulario;
	}

	public void setIdAluno(Long idAluno) {
		this.idAluno = idAluno;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
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

	public Date getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getCidadeUf() {
		return cidadeUf;
	}

	public void setCidadeUf(String cidadeUf) {
		this.cidadeUf = cidadeUf;
	}
	
	public String getPeso() {
		return peso;
	}

	public void setPeso(String peso) {
		this.peso = peso;
	}

	@Override
	public String toString() {
		return "Aluno [idAluno=" + idAluno + ", nome=" + nome + ", dataRespostaFormulario=" + dataRespostaFormulario
				+ ", dataNascimento=" + dataNascimento + ", email=" + email + ", sexo=" + sexo + ", telefone="
				+ telefone + ", cidadeUf=" + cidadeUf + ", linkFormulario=" + linkFormulario + ", observacao="
				+ observacao + ", peso=" + peso + ", treinos=" + treinos + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cidadeUf == null) ? 0 : cidadeUf.hashCode());
		result = prime * result + ((dataNascimento == null) ? 0 : dataNascimento.hashCode());
		result = prime * result + ((dataRespostaFormulario == null) ? 0 : dataRespostaFormulario.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((idAluno == null) ? 0 : idAluno.hashCode());
		result = prime * result + ((linkFormulario == null) ? 0 : linkFormulario.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result + ((observacao == null) ? 0 : observacao.hashCode());
		result = prime * result + ((peso == null) ? 0 : peso.hashCode());
		result = prime * result + ((sexo == null) ? 0 : sexo.hashCode());
		result = prime * result + ((telefone == null) ? 0 : telefone.hashCode());
		result = prime * result + ((treinos == null) ? 0 : treinos.hashCode());
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
		Aluno other = (Aluno) obj;
		if (cidadeUf == null) {
			if (other.cidadeUf != null) {
				return false;
			}
		} else if (!cidadeUf.equals(other.cidadeUf)) {
			return false;
		}
		if (dataNascimento == null) {
			if (other.dataNascimento != null) {
				return false;
			}
		} else if (!dataNascimento.equals(other.dataNascimento)) {
			return false;
		}
		if (dataRespostaFormulario == null) {
			if (other.dataRespostaFormulario != null) {
				return false;
			}
		} else if (!dataRespostaFormulario.equals(other.dataRespostaFormulario)) {
			return false;
		}
		if (email == null) {
			if (other.email != null) {
				return false;
			}
		} else if (!email.equals(other.email)) {
			return false;
		}
		if (idAluno == null) {
			if (other.idAluno != null) {
				return false;
			}
		} else if (!idAluno.equals(other.idAluno)) {
			return false;
		}
		if (linkFormulario == null) {
			if (other.linkFormulario != null) {
				return false;
			}
		} else if (!linkFormulario.equals(other.linkFormulario)) {
			return false;
		}
		if (nome == null) {
			if (other.nome != null) {
				return false;
			}
		} else if (!nome.equals(other.nome)) {
			return false;
		}
		if (observacao == null) {
			if (other.observacao != null) {
				return false;
			}
		} else if (!observacao.equals(other.observacao)) {
			return false;
		}
		if (peso == null) {
			if (other.peso != null) {
				return false;
			}
		} else if (!peso.equals(other.peso)) {
			return false;
		}
		if (sexo == null) {
			if (other.sexo != null) {
				return false;
			}
		} else if (!sexo.equals(other.sexo)) {
			return false;
		}
		if (telefone == null) {
			if (other.telefone != null) {
				return false;
			}
		} else if (!telefone.equals(other.telefone)) {
			return false;
		}
		if (treinos == null) {
			if (other.treinos != null) {
				return false;
			}
		} else if (!treinos.equals(other.treinos)) {
			return false;
		}
		return true;
	}
    
}
