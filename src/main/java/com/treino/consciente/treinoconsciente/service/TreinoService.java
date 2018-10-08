package com.treino.consciente.treinoconsciente.service;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
	private TreinoRepository terinoRepository;
	
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
		return terinoRepository.findAll();
	}
	
	public List<Treino> findAllByStatus(String status) {
		return terinoRepository.findAllByStatusOrderByIdTreinoAsc(status);
	}
	
	public Optional<Treino> findOne(Long id) {
		return terinoRepository.findById(id);
	}
	
	public Treino save(Treino Treino) {
		return terinoRepository.save(Treino);
	}
	
	public void delete(Long id) {
		terinoRepository.deleteById(id);
	}
	
	public void syncFormulariosRespostasNovaCompra(String spreadsheet, String range, String tipoTreino, String plano) throws GeneralSecurityException, IOException, ParseException {
		List<List<Object>> values = consultaGoogleSpreasheetTreinos(spreadsheet, range);
       
	   if (values == null || values.isEmpty()) {
	       logger.info("No data found in " + spreadsheet);
	   } else {
	       for (List<Object> row : values) {
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
		return terinoRepository.findTreinoByDataRespostaAndEmail(dataRespostaFormulario, email) != null;
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
			List<Treino> treinos = terinoRepository.buscaTreinosByIdAluno(alunoCriado.getIdAluno());
			if(treinos != null && treinos.size() > 0){
				ultimoTreino = treinos.get(0); 
				sequencia = ultimoTreino.getSequenciaTreino() + 1;
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
		terinoRepository.save(treino);
	
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
		this.syncFormulariosRespostasNovaCompra(SPREADSHEET_ID_NOVO_MES, "Respostas ao formulário 1!A2:AQ", "-1", "Mensal");
		this.syncFormulariosRespostasNovaCompra(SPREADSHEET_ID_NOVO_TRI, "Respostas ao formulário 2!A2:AQ", "-3", "Trimestral");
		this.syncFormulariosRespostasNovaCompra(SPREADSHEET_ID_NOVO_ANO, "Respostas ao formulário 1!A2:AQ", "-12", "Anual");
		
		this.syncFormulariosRespostasRenovacao(SPREADSHEET_ID_RENOV_TRI, "Respostas ao formulário 1!A2:O2", "-3", "Renov. Trimestral");
		this.syncFormulariosRespostasRenovacao(SPREADSHEET_ID_RENOV_MES, "Respostas ao formulário 1!A2:O2", "-1", "Renov. Mensal");
		this.syncFormulariosRespostasRenovacao(SPREADSHEET_ID_RENOV_ANO, "Respostas ao formulário 1!A2:O2", "-12", "Renov. Anual");
		
	}
	
	public Professor verificaResposalvelTreino(){
		List<Professor> profs = profRepository.findAll();
		List<Treino> treinos = terinoRepository.findAllByTipoTreinoIgnoreCaseContainingOrderByIdTreinoDesc("1-");
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
		List<Treino> treinos = terinoRepository.buscaTreinosByIdAluno(idAluno);
		if(treinos != null && treinos.size() > 0)
			return treinos.get(0).getProfessor();
		return verificaResposalvelTreino();
	}

}
