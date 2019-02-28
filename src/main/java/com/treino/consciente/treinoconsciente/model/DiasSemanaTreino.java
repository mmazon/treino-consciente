
package com.treino.consciente.treinoconsciente.model;

import java.util.ArrayList;
import java.util.List;

public class DiasSemanaTreino {

	private String nome;
	private int codigo;
	private boolean selecionado;

    public  boolean getSelecionado() {
		return selecionado;
	}

	public void setSelecionado(boolean selecionado) {
		this.selecionado = selecionado;
	}

	public DiasSemanaTreino(final String nome, final int codigo, boolean selecionado) {
		this.nome = nome;
		this.codigo = codigo;
		this.selecionado = selecionado;
    }

    public String getNome() {
    	return this.nome;
    }

    
    public void setNome(final String nome) {
    	this.nome = nome;
    }
    public int getCodigo() {
    	return this.codigo;
    }
    public void setCodigo(final int codigo) {
    	this.codigo = codigo;
    }
    
    public static List<DiasSemanaTreino> obterLista() {
    	List<DiasSemanaTreino> retorno = new ArrayList<>();
       	retorno.add(new DiasSemanaTreino("Dom", 0, false));
       	retorno.add(new DiasSemanaTreino("Seg", 1, false));	
       	retorno.add(new DiasSemanaTreino("Ter", 2, false));	
       	retorno.add(new DiasSemanaTreino("Qua", 3, false));	
       	retorno.add(new DiasSemanaTreino("Qui", 4, false));	
       	retorno.add(new DiasSemanaTreino("Sex", 5, false));	
       	retorno.add(new DiasSemanaTreino("Sab", 6, false));	
    	return retorno;
    }
}
