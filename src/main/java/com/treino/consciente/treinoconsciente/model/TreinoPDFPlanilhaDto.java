package com.treino.consciente.treinoconsciente.model;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class TreinoPDFPlanilhaDto {

	private Treino treino;
	private List<PlanilhaTreino> treinosAs = new ArrayList<>();
	private List<PlanilhaTreino> treinosBs = new ArrayList<>();
	private List<PlanilhaTreino> treinosCs = new ArrayList<>();
	private List<PlanilhaTreino> hiit1 = new ArrayList<>();
	private List<PlanilhaTreino> hiit2 = new ArrayList<>();
	private String obs;
	private String dataIni;
	private String dataTroca;
	
	public TreinoPDFPlanilhaDto(Treino treino) {
		SimpleDateFormat fmt = new SimpleDateFormat("dd/MM/yyyy");    
		this.treino = treino;
		Calendar calhj = Calendar.getInstance();
		LocalDate dataPlus30 = LocalDate.of(calhj.get(Calendar.YEAR), calhj.get(Calendar.MONTH)+1, calhj.get(Calendar.DAY_OF_MONTH));
		dataPlus30 = dataPlus30.plusDays(30);
		dataTroca = fmt.format(Date.from(dataPlus30.atStartOfDay(ZoneId.systemDefault()).toInstant()));
		dataIni = fmt.format(new Date());
	}
	
	public void buildListasAbcHiit(){
		setaPlanilhaA();
		setaPlanilhaB();
		setaPlanilhaC();
		setaPlanilhaHiit1();
		setaPlanilhaHiit2();
	}
	
	private void setaPlanilhaA() {
		for(PlanilhaTreino pla : treino.getPlanilhas()){
			if(pla.getNomePlanilhaExer().startsWith("Treino A")){
				treinosAs.add(pla);
			}
		}
	}
	
	private void setaPlanilhaB() {
		for(PlanilhaTreino pla : treino.getPlanilhas()){
			if(pla.getNomePlanilhaExer().startsWith("Treino B")){
				treinosBs.add(pla);
			}
		}
	}
	
	private void setaPlanilhaC() {
		for(PlanilhaTreino pla : treino.getPlanilhas()){
			if(pla.getNomePlanilhaExer().startsWith("Treino C")){
				treinosCs.add(pla);
			}
		}
	}

	private void setaPlanilhaHiit2() {
		for(PlanilhaTreino pla : treino.getPlanilhas()){
			if(pla.getNomePlanilhaExer().startsWith("Aer")){
				hiit2.add(pla);
				break;
			}
		}
	}

	private void setaPlanilhaHiit1() {
		for(PlanilhaTreino pla : treino.getPlanilhas()){
			if(pla.getNomePlanilhaExer().startsWith("HIIT")){
				hiit1.add(pla);
				break;
			}
		}
	}

	public Treino getTreino() {
		return treino;
	}

	public void setTreino(Treino treino) {
		this.treino = treino;
	}

	public List<PlanilhaTreino> getTreinosAs() {
		return treinosAs;
	}

	public void setTreinosAs(List<PlanilhaTreino> treinosAs) {
		this.treinosAs = treinosAs;
	}

	public List<PlanilhaTreino> getTreinosBs() {
		return treinosBs;
	}

	public void setTreinosBs(List<PlanilhaTreino> treinosBs) {
		this.treinosBs = treinosBs;
	}

	public List<PlanilhaTreino> getTreinosCs() {
		return treinosCs;
	}

	public void setTreinosCs(List<PlanilhaTreino> treinosCs) {
		this.treinosCs = treinosCs;
	}

	public List<PlanilhaTreino> getHiit1() {
		return hiit1;
	}

	public void setHiit1(List<PlanilhaTreino> hiit1) {
		this.hiit1 = hiit1;
	}

	public List<PlanilhaTreino> getHiit2() {
		return hiit2;
	}

	public void setHiit2(List<PlanilhaTreino> hiit2) {
		this.hiit2 = hiit2;
	}

	public String getObs() {
		return obs;
	}

	public void setObs(String obs) {
		this.obs = obs;
	}

	public String getDataIni() {
		return dataIni;
	}

	public void setDataIni(String dataIni) {
		this.dataIni = dataIni;
	}

	public String getDataTroca() {
		return dataTroca;
	}

	public void setDataTroca(String dataTroca) {
		this.dataTroca = dataTroca;
	}

	@Override
	public String toString() {
		return "TreinoPDFPlanilhaDto [treino=" + treino + ", treinosAs=" + treinosAs + ", treinosBs=" + treinosBs
				+ ", treinosCs=" + treinosCs + ", hiit1=" + hiit1 + ", hiit2=" + hiit2 + ", obs=" + obs + ", dataIni="
				+ dataIni + ", dataTroca=" + dataTroca + "]";
	}
	
	
	
}
