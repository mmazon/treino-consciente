package com.treino.consciente.treinoconsciente.service;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.treino.consciente.treinoconsciente.model.Aluno;
import com.treino.consciente.treinoconsciente.model.Professor;
import com.treino.consciente.treinoconsciente.model.Treino;
import com.treino.consciente.treinoconsciente.repository.AlunoRepository;
import com.treino.consciente.treinoconsciente.repository.ProfessorRepository;
import com.treino.consciente.treinoconsciente.repository.TreinoRepository;

@Service
public class TreinoService {
	
	@Autowired
	private TreinoRepository treinoRepository;
	
	@Autowired
	private AlunoRepository alunoRepository;
	
	@Autowired
	private ProfessorRepository profRepository;
	
    Logger logger = LoggerFactory.getLogger(TreinoService.class);
	
    private static final String SPREADSHEET_ID_NOVO_MES = "1Yk_P9yv7pfDVNUMtj4arMjpIaHc89VJ1bVpwQBDteSY";
    private static final String SPREADSHEET_ID_NOVO_TRI = "1VFDiB1gu8QndoXqMupwRXtZFL58hQxWqCpbOdKaCw5k";
    private static final String SPREADSHEET_ID_NOVO_ANO = "1Wn1bH09-8R7wXc4OMNGQ5-Fbo3l8uJm6XJ3HPLeuNWU";
    private static final String SPREADSHEET_ID_RENOV_MES = "1wCyiScZNpQUmSaZ8m4xUE_IQjfzOYjMNAIGmWS4XYRk";
	private static final String SPREADSHEET_ID_RENOV_TRI = "1vNJdUIvOBNW34jGQfAASv79h-KXeZZhRx6L3VqjB-m4";
	private static final String SPREADSHEET_ID_RENOV_ANO = "1CpE3TeHMwRpTk9zH-0l1lceotPIiFOWtNPunJvEDdSA";
	
	public List<Treino> findAll() {
		return treinoRepository.findAll();
	}
	
	public List<Treino> findAllByStatus(String status) {
		return treinoRepository.findAllByStatusOrderByIdTreinoAsc(status);
	}
	
	public Optional<Treino> findOne(Long id) {
		return treinoRepository.findById(id);
	}
	
	public Treino save(Treino Treino) {
		return treinoRepository.save(Treino);
	}
	
	public void delete(Long id) {
		treinoRepository.deleteById(id);
	}
	
	public void syncFormulariosRespostasNovaCompra(String spreadsheet, String range, String tipoTreino, String plano) throws GeneralSecurityException, IOException, ParseException {
		List<List<Object>> values = consultaGoogleSpreasheetTreinos(spreadsheet, range);
       
	   if (values == null || values.isEmpty()) {
	       logger.info("No data found in " + spreadsheet);
	   } else {
	       for (List<Object> row : values) {
	    	   String a = (String)row.get(0);
	    	   if(a.equals("Carimbo de data/hora")){
				   logger.info("No data found in " + spreadsheet);
				   continue;
			   }
	    	   SimpleDateFormat formatterDataHora = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
	    	   SimpleDateFormat formatterHora = new SimpleDateFormat("dd/MM/yyyy");
	    	   
	    	   Date dataRespostaFormulario = pegaDataResposta(formatterDataHora.parse((String)row.get(0)));
	    	   String email = (String)row.get(1);
	    	   Boolean jaImportou = verificaSeJaImportouHoje(dataRespostaFormulario, email);

	    	   if(!jaImportou){
	    		   Aluno alunoCriado = criaAluno(row, dataRespostaFormulario, formatterHora, spreadsheet);
	    		   criaTreino(verificaResposalvelTreino(), tipoTreino, plano, row, dataRespostaFormulario, alunoCriado, false);
	    	   }
	       }
	   }
   }
	
	private Boolean verificaSeJaImportouHoje(Date dataRespostaFormulario, String email) {
		return treinoRepository.findTreinoByDataRespostaAndEmail(dataRespostaFormulario, email) != null;
	}

	private Date pegaDataResposta(Date dataResposta) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(dataResposta);
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE,0);
		cal.set(Calendar.SECOND,0);
		cal.set(Calendar.MILLISECOND,0);
		return cal.getTime();
	}

	public void syncFormulariosRespostasRenovacao(String spreadsheet, String range, String tipoTreino, String plano) throws GeneralSecurityException, IOException, ParseException {
      List<List<Object>> values = consultaGoogleSpreasheetTreinos(spreadsheet, range);
      
      if (values == null || values.isEmpty()) {
          logger.info("No data found in " + spreadsheet);
      } else {
		   for (List<Object> row : values) {
			   String a = (String)row.get(0);
			   if(a.equals("Carimbo de data/hora")){
				   logger.info("No data found in " + spreadsheet);
				   continue;
			   }
				   
			   SimpleDateFormat formatterDataHora = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			   SimpleDateFormat formatterHora = new SimpleDateFormat("dd/MM/yyyy");
			   
			   Date dataRespostaFormulario = pegaDataResposta(formatterDataHora.parse((String)row.get(0)));
			   String email = (String)row.get(1);
			   Boolean jaImportou = verificaSeJaImportouHoje(dataRespostaFormulario, email);
			   
			   if(!jaImportou){
				   Aluno alunoCriado = criaAlunoRenovacao(row, dataRespostaFormulario, formatterHora, spreadsheet);
				   criaTreino(verificaResposalvelTreinoRenovacao(alunoCriado.getIdAluno()), tipoTreino, plano, row, dataRespostaFormulario, alunoCriado, true);
			   }
		   }
      }
  }

	private List<List<Object>> consultaGoogleSpreasheetTreinos(String spreadsheet, String range)
			throws GeneralSecurityException, IOException {
		GoogleSheetsReader gr = new GoogleSheetsReader();
		return gr.readSheet(range, spreadsheet);
	}

	private void criaTreino(Professor professor, String tipoTreino, String plano, List<Object> row, Date dataRespostaFormulario, Aluno alunoCriado, Boolean isRenovacao) throws ParseException {
		int sequencia = 1;
		Treino ultimoTreino = null;
		if(isRenovacao){
			List<Treino> treinos = treinoRepository.buscaTreinosByIdAluno(alunoCriado.getIdAluno());
			if(treinos != null && treinos.size() > 0){
				ultimoTreino = treinos.get(0); 
			}
		}
		Treino treino = new Treino();
		treino.setDataRespostaFormulario(dataRespostaFormulario);
		treino.setStatus("NAOENVIADO");
		treino.setTipoTreino(sequencia +""+ tipoTreino);
		treino.setPlano(plano);
		if(ultimoTreino != null && ultimoTreino.getProfessor() != null){
			treino.setProfessor(ultimoTreino.getProfessor());
		}else{
			treino.setProfessor(professor);
		}
		treino.setAluno(alunoCriado);
		treino.setSequenciaTreino(sequencia);
		treinoRepository.save(treino);
	}
	
	public void verificaReentradasTreinos(){
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE,0);
		cal.set(Calendar.SECOND,0);
		cal.set(Calendar.MILLISECOND,0);
		List<Treino> treinosReentradas = treinoRepository.buscaTreinosReentradas(cal.getTime());
		List<Treino> treinosUpdateReentradas = new ArrayList<>();
		for (Treino treino : treinosReentradas){
			
			Calendar calhj = Calendar.getInstance();
			LocalDate dataHoje = LocalDate.of(calhj.get(Calendar.YEAR), calhj.get(Calendar.MONTH)+1, calhj.get(Calendar.DAY_OF_MONTH));
			
			Calendar calDtReentrada = Calendar.getInstance();
			calDtReentrada.setTime(treino.getDataReentrada());
			LocalDate dataReentrada = LocalDate.of(calDtReentrada.get(Calendar.YEAR), calDtReentrada.get(Calendar.MONTH)+1, calDtReentrada.get(Calendar.DAY_OF_MONTH));
			
			Period p = Period.between(dataHoje, dataReentrada);
			
			if(p.getMonths() == 0 && p.getDays() <= 7){
				treino.setReentrou(1);
				treinosUpdateReentradas.add(treino);
				
				Treino treinoRentrada = new Treino(treino.getObservacao(), null, null, null, "NAOENVIADO",null, treino.getPlano(), null, 
						0, treino.getAluno(), treino.getProfessor());
				treinoRentrada.setIdTreino(null);
				treinoRentrada.setDataRespostaFormulario(treino.getDataReentrada());
				String tipoTreino = treino.getTipoTreino().substring(1);
				treinoRentrada.setSequenciaTreino(treino.getSequenciaTreino() + 1);
				treinoRentrada.setTipoTreino(treinoRentrada.getSequenciaTreino() +""+ tipoTreino);
				treinoRepository.save(treinoRentrada);
			}
			
		}
		
	}
	
	private Aluno criaAlunoRenovacao(List<Object> row, Date dataRespostaFormulario, SimpleDateFormat formatterHora, String spreadsheet) throws ParseException {
		Aluno aluno = alunoRepository.findByEmail((String)row.get(1));
		if(aluno == null || aluno.getIdAluno() == null){		
			aluno = new Aluno();
		    aluno.setEmail((String)row.get(1));
		    aluno.setNome((String)row.get(2));
		}
		aluno.setPeso((String)row.get(4));
		aluno.setDataRespostaFormulario(dataRespostaFormulario);
		aluno.setLinkFormulario("https://docs.google.com/spreadsheets/d/" + spreadsheet);
		return alunoRepository.save(aluno);
	}

	private Aluno criaAluno(List<Object> row, Date dataRespostaFormulario, SimpleDateFormat formatter2, String spreadsheet) throws ParseException {
		Aluno aluno = alunoRepository.findByEmail((String)row.get(1));
		if(aluno == null || aluno.getIdAluno() == null){		
			aluno = new Aluno();
		    aluno.setEmail((String)row.get(1));
		    aluno.setNome((String)row.get(2));
		    aluno.setSexo((String)row.get(3));
		    aluno.setDataNascimento(formatter2.parse((String)row.get(4)));
		    aluno.setTelefone((String)row.get(6));
		    aluno.setCidadeUf((String)row.get(8));
		}
		aluno.setDataRespostaFormulario(dataRespostaFormulario);
		aluno.setLinkFormulario("https://docs.google.com/spreadsheets/d/" + spreadsheet);
		return alunoRepository.save(aluno);
	}
	
	public void syncFormulariosRespostas() throws GeneralSecurityException, IOException, ParseException {
		this.syncFormulariosRespostasNovaCompra(SPREADSHEET_ID_NOVO_MES, "Respostas ao formulário 1", "-1", "Mensal");
		this.syncFormulariosRespostasNovaCompra(SPREADSHEET_ID_NOVO_TRI, "Respostas ao formulário 2", "-3", "Trimestral");
		this.syncFormulariosRespostasNovaCompra(SPREADSHEET_ID_NOVO_ANO, "Respostas ao formulário 1", "-12", "Anual");
		
		this.syncFormulariosRespostasRenovacao(SPREADSHEET_ID_RENOV_TRI, "Respostas ao formulário 1", "-3", "Renov. Trimestral");
		this.syncFormulariosRespostasRenovacao(SPREADSHEET_ID_RENOV_MES, "Respostas ao formulário 1", "-1", "Renov. Mensal");
		this.syncFormulariosRespostasRenovacao(SPREADSHEET_ID_RENOV_ANO, "Respostas ao formulário 1", "-12", "Renov. Anual");
		
	}
	
	public Professor verificaResposalvelTreino(){
		List<Professor> profs = profRepository.findAll();
		List<Treino> treinos = treinoRepository.findTreinosByTipoAndPlano("1-", "Renov.");
		for(Professor prof : profs){
			if(treinos != null && treinos.size() > 0){
				Treino treino1 = treinos.get(0);
				if(treino1.getProfessor().getIdProfessor() == prof.getIdProfessor())
					continue;
				if(treinos.size() > 1){
					Treino treino2 = treinos.get(1);
					if(treino2.getProfessor().getIdProfessor() == prof.getIdProfessor())
						continue;
					else
						return prof;
				}else{
					return prof;
				}
			}else{
				return prof;
			}
		}
		return profs.get(0);
	}

	private Professor verificaResposalvelTreinoRenovacao(long idAluno) {
		List<Treino> treinos = treinoRepository.buscaTreinosByIdAluno(idAluno);
		if(treinos != null && treinos.size() > 0)
			return treinos.get(0).getProfessor();
		return verificaResposalvelTreino();
	}

	public List<Treino> buscaTreinosReentradas(Date time) {
		return treinoRepository.buscaTreinosReentradas(time);
	}

}
