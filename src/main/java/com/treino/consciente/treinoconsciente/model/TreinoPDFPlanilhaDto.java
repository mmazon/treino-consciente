package com.treino.consciente.treinoconsciente.model;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

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
	private String segunda;
	private String terca;
	private String quarta;
	private String quinta;
	private String sexta;
	private String sabado;
	private String domingo;
	
	
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
	
	public void buildProgSemanalHiit(){
		List<String> diasSemanSelecionados = Stream.of(treino.getDiasDaSemanaHiitStr().split(","))
				.filter(elem -> !elem.trim().equals("null"))
				.map (elem -> new String(elem.trim()))
				.collect(Collectors.toList());
		
		for(int i=0; i < diasSemanSelecionados.size(); i++){
			String dia = diasSemanSelecionados.get(i);
			
			
			if (dia.equals("0")){
				if(this.domingo != null && !domingo.equals("")){
					this.domingo += "/HIIT" ;
				}else{
					this.domingo = "HIIT";
				}
			}else if(dia.equals("1")){
				if(this.segunda != null && !segunda.equals("")){
					this.segunda += "/HIIT" ;
				}else{
					this.segunda = "HIIT";
				}
			}else if(dia.equals("2")){
				if(this.terca != null && !domingo.equals("")){
					this.terca += "/HIIT" ;
				}else{
					this.terca = "HIIT";
				}
			}else if(dia.equals("3")){
				if(this.quarta != null && !quarta.equals("")){
					this.quarta += "/HIIT" ;
				}else{
					this.quarta = "HIIT";
				}
			}else if(dia.equals("4")){
				if(this.quinta != null && !quinta.equals("")){
					this.quinta += "/HIIT" ;
				}else{
					this.quinta = "HIIT";
				}
			}else if(dia.equals("5")){
				if(this.sexta != null && !sexta.equals("")){
					this.sexta += "/HIIT" ;
				}else{
					this.sexta = "HIIT";
				}
			}else if(dia.equals("6")){
				if(this.sabado != null && !sabado.equals("")){
					this.sabado += "/HIIT" ;
				}else{
					this.sabado = "HIIT";
				}
			}
		}
	}
	
	public void buildProgSemanalAc(){
		List<String> diasSemanSelecionados = Stream.of(treino.getDiasDaSemanaHiit2Str().split(","))
				.filter(elem -> !elem.trim().equals("null"))
				.map (elem -> new String(elem.trim()))
				.collect(Collectors.toList());
		
		for(int i=0; i < diasSemanSelecionados.size(); i++){
			String dia = diasSemanSelecionados.get(i);
			
			
			if (dia.equals("0")){
				if(this.domingo != null && !domingo.equals("")){
					this.domingo += "/AC" ;
				}else{
					this.domingo = "AC";
				}
			}else if(dia.equals("1")){
				if(this.segunda != null && !segunda.equals("")){
					this.segunda += "/AC" ;
				}else{
					this.segunda = "AC";
				}
			}else if(dia.equals("2")){
				if(this.terca != null && !domingo.equals("")){
					this.terca += "/AC" ;
				}else{
					this.terca = "AC";
				}
			}else if(dia.equals("3")){
				if(this.quarta != null && !quarta.equals("")){
					this.quarta += "/AC" ;
				}else{
					this.quarta = "AC";
				}
			}else if(dia.equals("4")){
				if(this.quinta != null && !quinta.equals("")){
					this.quinta += "/AC" ;
				}else{
					this.quinta = "AC";
				}
			}else if(dia.equals("5")){
				if(this.sexta != null && !sexta.equals("")){
					this.sexta += "/AC" ;
				}else{
					this.sexta = "AC";
				}
			}else if(dia.equals("6")){
				if(this.sabado != null && !sabado.equals("")){
					this.sabado += "/AC" ;
				}else{
					this.sabado = "AC";
				}
			}
		}
	}
	
	
	public void builProgrSemanal(){
		if(treino.getDiasDaSemanaStr() != null && !treino.getDiasDaSemanaStr().equals("")){
			boolean temTreinoA = (treinosAs != null && !treinosAs.isEmpty());
			boolean temTreinoB = (treinosBs != null && !treinosBs.isEmpty());
			boolean temTreinoC = (treinosCs != null && !treinosCs.isEmpty());
			
			int qtdeTreinos = 0;
			if(temTreinoA)
				qtdeTreinos++;
			if(temTreinoB)
				qtdeTreinos++;
			if(temTreinoC)
				qtdeTreinos++;
			
			List<String> diasSemanSelecionados = Stream.of(treino.getDiasDaSemanaStr().split(","))
				.filter(elem -> !elem.trim().equals("null"))
				.map (elem -> new String(elem.trim()))
				.collect(Collectors.toList());
			
			String lastLabel = "";
			for(int i=0; i < diasSemanSelecionados.size(); i++){
				String dia = diasSemanSelecionados.get(i);
				
				String labelA = "A";
				String labelB = "B";
				String labelC = "C";
				
				if(qtdeTreinos == 1){
					if (dia.equals("0")){
						this.domingo = labelA;
					}else if(dia.equals("1")){
						this.segunda = labelA;
					}else if(dia.equals("2")){
						this.terca = labelA;
					}else if(dia.equals("3")){
						this.quarta = labelA;
					}else if(dia.equals("4")){
						this.quinta = labelA;
					}else if(dia.equals("5")){
						this.sexta = labelA;
					}else if(dia.equals("6")){
						this.sabado = labelA;
					}
				}
				
				if(qtdeTreinos == 2){
					
					if (dia.equals("0")){
						
						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.domingo = labelB;
						}else{
							this.domingo = labelA;
							lastLabel = labelA;
						}
						
					}else if(dia.equals("1")){
						
						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.segunda = labelB;
						}else{
							lastLabel = labelA;
							this.segunda = labelA;
						}
						
						
					}else if(dia.equals("2")){
						
						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.terca = labelB;
						}else{
							lastLabel = labelA;
							this.terca = labelA;
						}
						
					}else if(dia.equals("3")){
						
						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.quarta = labelB;
						}else{
							lastLabel = labelA;
							this.quarta = labelA;
						}
						
						
					}else if(dia.equals("4")){
						
						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.quinta = labelB;
						}else{
							lastLabel = labelA;
							this.quinta = labelA;
						}
						
						
					}else if(dia.equals("5")){
						
						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.sexta = labelB;
						}else{
							lastLabel = labelA;
							this.sexta = labelA;
						}
						
					}else if(dia.equals("6")){
						
						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.sabado = labelB;
						}else{
							lastLabel = labelA;
							this.sabado = labelA;
						}
						
					}
				}
				
				if(qtdeTreinos == 3){
					
					if (dia.equals("0")){
						
						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.domingo = labelB;
						}else if(lastLabel.equals(labelB)){
							this.domingo = labelC;
							lastLabel = labelC;
						}else{
							lastLabel = labelA;
							this.domingo = labelA;
						}
						
					}else if(dia.equals("1")){
						
						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.segunda = labelB;
						}else if(lastLabel.equals(labelB)){
							this.segunda = labelC;
							lastLabel = labelC;
						}else{
							lastLabel = labelA;
							this.segunda = labelA;
						}
						
						
					}else if(dia.equals("2")){
						

						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.terca = labelB;
						}else if(lastLabel.equals(labelB)){
							this.terca = labelC;
							lastLabel = labelC;
						}else{
							lastLabel = labelA;
							this.terca = labelA;
						}
						
					}else if(dia.equals("3")){
						
						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.quarta = labelB;
						}else if(lastLabel.equals(labelB)){
							this.quarta = labelC;
							lastLabel = labelC;
						}else{
							lastLabel = labelA;
							this.quarta = labelA;
						}
						
						
					}else if(dia.equals("4")){
						
						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.quinta = labelB;
						}else if(lastLabel.equals(labelB)){
							this.quinta = labelC;
							lastLabel = labelC;
						}else{
							lastLabel = labelA;
							this.quinta = labelA;
						}
						
					}else if(dia.equals("5")){
						
						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.sexta = labelB;
						}else if(lastLabel.equals(labelB)){
							this.sexta = labelC;
							lastLabel = labelC;
						}else{
							lastLabel = labelA;
							this.sexta = labelA;
						}
						
					}else if(dia.equals("6")){
						

						if(lastLabel.equals(labelA)){
							lastLabel = labelB;
							this.sabado = labelB;
						}else if(lastLabel.equals(labelB)){
							this.sabado = labelC;
							lastLabel = labelC;
						}else{
							lastLabel = labelA;
							this.sabado = labelA;
						}
						
					}
				}
			}
		}
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

	public String getSegunda() {
		return segunda;
	}

	public void setSegunda(String segunda) {
		this.segunda = segunda;
	}

	public String getTerca() {
		return terca;
	}

	public void setTerca(String terca) {
		this.terca = terca;
	}

	public String getQuarta() {
		return quarta;
	}

	public void setQuarta(String quarta) {
		this.quarta = quarta;
	}

	public String getQuinta() {
		return quinta;
	}

	public void setQuinta(String quinta) {
		this.quinta = quinta;
	}

	public String getSexta() {
		return sexta;
	}

	public void setSexta(String sexta) {
		this.sexta = sexta;
	}

	public String getSabado() {
		return sabado;
	}

	public void setSabado(String sabado) {
		this.sabado = sabado;
	}

	public String getDomingo() {
		return domingo;
	}

	public void setDomingo(String domingo) {
		this.domingo = domingo;
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
				+ dataIni + ", dataTroca=" + dataTroca + ", segunda=" + segunda + ", terca=" + terca + ", quarta="
				+ quarta + ", quinta=" + quinta + ", sexta=" + sexta + ", sabado=" + sabado + ", domingo=" + domingo
				+ "]";
	}
	
}
