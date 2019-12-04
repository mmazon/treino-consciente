package com.treino.consciente.treinoconsciente.service;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.time.ZoneId;
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
	@Autowired
	private MailService mailService;
	
    Logger logger = LoggerFactory.getLogger(TreinoService.class);
	
    private static final String SPREADSHEET_ID_NOVO_MES = "1Yk_P9yv7pfDVNUMtj4arMjpIaHc89VJ1bVpwQBDteSY";
    private static final String SPREADSHEET_ID_NOVO_TRI = "1VFDiB1gu8QndoXqMupwRXtZFL58hQxWqCpbOdKaCw5k";
    private static final String SPREADSHEET_ID_NOVO_ANO = "1Wn1bH09-8R7wXc4OMNGQ5-Fbo3l8uJm6XJ3HPLeuNWU";
    private static final String SPREADSHEET_ID_RENOV_MES = "1wCyiScZNpQUmSaZ8m4xUE_IQjfzOYjMNAIGmWS4XYRk";
	private static final String SPREADSHEET_ID_RENOV_TRI = "1vNJdUIvOBNW34jGQfAASv79h-KXeZZhRx6L3VqjB-m4";
	private static final String SPREADSHEET_ID_RENOV_ANO = "1CpE3TeHMwRpTk9zH-0l1lceotPIiFOWtNPunJvEDdSA";
	private static final Boolean DEBUG = false;
	
	public List<Treino> findAll() {
		return treinoRepository.findAll();
	}
	
	public List<Treino> findAllByStatus(String status) {
		return treinoRepository.findAllByStatusOrderByIdTreinoAsc(status);
	}
	
	public Optional<Treino> findOne(Long id) {
		return treinoRepository.findById(id);
	}
	
	public void deletePlanilhasTreino(Long idTreino) {
		treinoRepository.deletePlanilhaTreino(idTreino);
	}
	
	public Treino save(Treino treino) {
		treino.setProfessor(profRepository.findById(treino.getProfessor().getIdProfessor()).get());
		treino.setAluno(alunoRepository.findById(treino.getAluno().getIdAluno()).get());
		if(treino.getStatus().equals("ENVIADO")){
			if(treino.getDataEnvioTreino() == null)
				treino.setDataEnvioTreino(new Date());
			Calendar calhj = Calendar.getInstance();
			calhj.setTime(treino.getDataEnvioTreino());

			LocalDate dataPlus30 = LocalDate.of(calhj.get(Calendar.YEAR), calhj.get(Calendar.MONTH)+1, calhj.get(Calendar.DAY_OF_MONTH));
			dataPlus30 = dataPlus30.plusDays(30);
			
			if(isFinalPlano(treino)){
				treino.setDataFinalTreino(Date.from(dataPlus30.atStartOfDay(ZoneId.systemDefault()).toInstant()));
				treino.setRenovou(0);
			}else{
				treino.setDataReentrada(Date.from(dataPlus30.atStartOfDay(ZoneId.systemDefault()).toInstant()));
			}
		}
		return treinoRepository.save(treino);
	}
	
	public Treino saveSemAlterarStatusAndDatas(Treino treino) {
		treino.setProfessor(profRepository.findById(treino.getProfessor().getIdProfessor()).get());
		treino.setAluno(alunoRepository.findById(treino.getAluno().getIdAluno()).get());
		return treinoRepository.save(treino);
	}
	
	private boolean isFinalPlano(Treino treino) {
		String plano = treino.getTipoTreino().substring(treino.getTipoTreino().length() - 2);
		
		if(treino.getSequenciaTreino().toString().equals(plano)){
			return true;
		}
		if(plano.contains("-")){
			plano = plano.substring(1); //para treino com o hifem no plano (3-3, 1-1)
			if(treino.getSequenciaTreino().toString().equals(plano)){
				return true;
			}
		}
		
		return false;
	}
	
	public void delete(Long id) {
		treinoRepository.deleteById(id);
	}
	
	public void syncFormulariosRespostasNovaCompra(String spreadsheet, String range, String tipoTreino, String plano, String forms) throws GeneralSecurityException, IOException, ParseException {
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
	    		   Aluno alunoCriado = criaAluno(row, dataRespostaFormulario, formatterHora);
	    		   criaTreino(verificaResposalvelTreino(), tipoTreino, plano, row, dataRespostaFormulario, alunoCriado, false, forms);
	    	   }
	       }
	   }
   }
	
	private Boolean verificaSeJaImportouHoje(Date dataRespostaFormulario, String email) {
		List<Treino> treinosImportados = treinoRepository.findAllTreinoByDataRespostaAndEmail(dataRespostaFormulario, email); 
		return (treinosImportados != null && treinosImportados.size() > 0);
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

	public void syncFormulariosRespostasRenovacao(String spreadsheet, String range, String tipoTreino, String plano, String forms) throws GeneralSecurityException, IOException, ParseException {
      List<List<Object>> values = consultaGoogleSpreasheetTreinos(spreadsheet, range);
      
      if (values == null || values.isEmpty()) {
          logger.info("No data found in " + spreadsheet);
      } else {
		   for (List<Object> row : values) {
			   if (row == null || row.isEmpty()){
				   logger.info("White ROW found in " + spreadsheet);
				   continue;
			   }
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
			   setaRenovouNoUltimoTreino(email);
			   
			   if(!jaImportou){
				   Aluno alunoCriado = criaAlunoRenovacao(row, dataRespostaFormulario, formatterHora);
				   criaTreino(verificaResposalvelTreinoRenovacao(alunoCriado.getIdAluno()), tipoTreino, plano, row, dataRespostaFormulario, alunoCriado, true, forms);
			   }
		   }
      }
  }

	public void setaRenovouNoUltimoTreino(String email) {
		List<Treino> treinos = treinoRepository.findLastTreinoByEmail(email);
		if(treinos != null && treinos.size() > 0){
			Treino ultimoTreino = treinos.get(0);
			ultimoTreino.setRenovou(1);
			treinoRepository.save(ultimoTreino);
		}
	}

	private List<List<Object>> consultaGoogleSpreasheetTreinos(String spreadsheet, String range)
			throws GeneralSecurityException, IOException {
		GoogleSheetsReader gr = new GoogleSheetsReader();
		return gr.readSheet(range, spreadsheet);
	}

	private void criaTreino(Professor professor, String tipoTreino, String plano, List<Object> row, Date dataRespostaFormulario, Aluno alunoCriado, Boolean isRenovacao, String forms) throws ParseException {
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
		treino.setLinkForm(forms);
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
				
				dataReentrada = dataReentrada.minusDays(7);
				Date date = Date.from(dataReentrada.atStartOfDay(ZoneId.systemDefault()).toInstant());
				
				Treino treinoRentrada = new Treino(treino.getObservacao(), null, null, null, "NAOENVIADO",null, treino.getPlano(), null, 
						0, treino.getAluno(), treino.getProfessor());
				treinoRentrada.setIdTreino(null);
				treinoRentrada.setDataRespostaFormulario(date);
				String tipoTreino = treino.getTipoTreino().substring(1);
				treinoRentrada.setSequenciaTreino(treino.getSequenciaTreino() + 1);
				treinoRentrada.setTipoTreino(treinoRentrada.getSequenciaTreino() +""+ tipoTreino);
				treinoRentrada.setLinkForm(treino.getLinkForm());
				treinoRepository.save(treinoRentrada);
			}
			
		}
		if(treinosUpdateReentradas != null && treinosUpdateReentradas.size() > 0){
			treinoRepository.saveAll(treinosUpdateReentradas);
		}
		
	}
	
	private Aluno criaAlunoRenovacao(List<Object> row, Date dataRespostaFormulario, SimpleDateFormat formatterHora) throws ParseException {
		Aluno aluno = alunoRepository.findByEmail((String)row.get(1));
		if(aluno == null || aluno.getIdAluno() == null){		
			aluno = new Aluno();
		    aluno.setEmail((String)row.get(1));
		    aluno.setNome((String)row.get(2));
		}
		aluno.setPeso((String)row.get(4));
		aluno.setDataRespostaFormulario(dataRespostaFormulario);
		return alunoRepository.save(aluno);
	}

	private Aluno criaAluno(List<Object> row, Date dataRespostaFormulario, SimpleDateFormat formatter2) throws ParseException {
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
		return alunoRepository.save(aluno);
	}
	
	public void syncFormulariosRespostas() throws GeneralSecurityException, IOException, ParseException {
		this.syncFormulariosRespostasNovaCompra(SPREADSHEET_ID_NOVO_MES, "Respostas ao formulário 1", "-1", "Mensal", "https://docs.google.com/forms/d/1Muinme65XOPwJB1x41cpKbwOUFoVShEwtVAbqHRABdA/edit#responses");
		this.syncFormulariosRespostasNovaCompra(SPREADSHEET_ID_NOVO_TRI, "Respostas ao formulário 2", "-3", "Trimestral", "https://docs.google.com/forms/d/1eg642m8OawXgn38ymZVEVJfeBaDAbKtrwySar8xAhXM/edit#responses");
		this.syncFormulariosRespostasNovaCompra(SPREADSHEET_ID_NOVO_ANO, "Respostas ao formulário 1", "-12", "Anual", "https://docs.google.com/forms/d/1pPyQ_o99kMKxFrUv8RvIjOMjir4YKVi9IpGgY5Y6cJE/edit#responses");
		
		this.syncFormulariosRespostasRenovacao(SPREADSHEET_ID_RENOV_TRI, "Respostas ao formulário 1", "-3", "Renov. Trimestral", "https://docs.google.com/forms/d/1uCEWwGPbMUltTnaUIFkU05ldrQWJzXpjXbSMV7erGeY/edit#responses");
		this.syncFormulariosRespostasRenovacao(SPREADSHEET_ID_RENOV_MES, "Respostas ao formulário 1", "-1", "Renov. Mensal", "https://docs.google.com/forms/d/1XDcPnCXOOoBca7ua5bvz6gireCTM4xNCA6jFEycz2Iw/edit#responses");
		this.syncFormulariosRespostasRenovacao(SPREADSHEET_ID_RENOV_ANO, "Respostas ao formulário 1", "-12", "Renov. Anual", "https://docs.google.com/forms/d/1mRyeMCBdoPBvfrBgoOGnye-R1_PuemQccS2ovW5ikHg/edit#responses");
		
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
	
	public void verificaEnviarEmailRenovacao(){
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE,0);
		cal.set(Calendar.SECOND,0);
		cal.set(Calendar.MILLISECOND,0);
		List<Treino> treinosRenovacao = treinoRepository.buscaTreinosRenovacao(cal.getTime());
		for (Treino treino : treinosRenovacao){
			
			Calendar calhj = Calendar.getInstance();
			LocalDate dataHoje = LocalDate.of(calhj.get(Calendar.YEAR), calhj.get(Calendar.MONTH)+1, calhj.get(Calendar.DAY_OF_MONTH));
			
			Calendar calDtRenovacao = Calendar.getInstance();
			calDtRenovacao.setTime(treino.getDataFinalTreino());
			LocalDate dataRenovcao = LocalDate.of(calDtRenovacao.get(Calendar.YEAR), calDtRenovacao.get(Calendar.MONTH)+1, calDtRenovacao.get(Calendar.DAY_OF_MONTH));
			
			Period p = Period.between(dataHoje, dataRenovcao);
			
			if(p.getMonths() == 0 && p.getDays() <= 7){
				String emailAluno = treino.getAluno().getEmail();
				if(DEBUG){
					mailService.sendMailRenovacoesEPesquisa("Renovação", "html_email_renovacao", "moacir.mazon@gmail.com");
				}else{
					mailService.sendMailRenovacoesEPesquisa("Renovação", "html_email_renovacao", emailAluno);
				}
				treino.setEnviouMailRenov(1);				
				treinoRepository.save(treino);
			}
		}
	}
	
	public void verificaEnviarEmailPesquisa(){
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE,0);
		cal.set(Calendar.SECOND,0);
		cal.set(Calendar.MILLISECOND,0);
		List<Treino> treinosPesquisa = treinoRepository.buscaTreinosPesquisa(cal.getTime());
		for (Treino treino : treinosPesquisa){
			
			String emailAluno = treino.getAluno().getEmail();
			if(DEBUG){
				mailService.sendMailRenovacoesEPesquisa("Pesquisa de Satisfação", "html_email_pesq_qualidade", "moacir.mazon@gmail.com");
			}else{
				mailService.sendMailRenovacoesEPesquisa("Pesquisa de Satisfação", "html_email_pesq_qualidade", emailAluno);
			}
			treino.setEnviouMailPesq(1);				
			treinoRepository.save(treino);
		}
	}
	
	public void verificaEnviarEmailAindaTempo(){
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date());
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE,0);
		cal.set(Calendar.SECOND,0);
		cal.set(Calendar.MILLISECOND,0);
		List<Treino> treinosAindaTempo = treinoRepository.buscaTreinosAindaTempo(cal.getTime());
		for (Treino treino : treinosAindaTempo){
			
			Calendar calhj = Calendar.getInstance();
			LocalDate dataHoje = LocalDate.of(calhj.get(Calendar.YEAR), calhj.get(Calendar.MONTH)+1, calhj.get(Calendar.DAY_OF_MONTH));
			
			Calendar calDtFinalTreino = Calendar.getInstance();
			calDtFinalTreino.setTime(treino.getDataFinalTreino());
			LocalDate dataRenovcao = LocalDate.of(calDtFinalTreino.get(Calendar.YEAR), calDtFinalTreino.get(Calendar.MONTH)+1, calDtFinalTreino.get(Calendar.DAY_OF_MONTH));
			
			Period p = Period.between(dataRenovcao, dataHoje);
			
			if(p.getMonths() == 0 && p.getDays() >= 7){
				String emailAluno = treino.getAluno().getEmail();
				if(DEBUG){
					mailService.sendMailRenovacoesEPesquisa("Ainda dá tempo!", "html_email_ainda_tempo", "moacir.mazon@gmail.com");
				}else{
					mailService.sendMailRenovacoesEPesquisa("Ainda dá tempo!", "html_email_ainda_tempo", emailAluno);
				}
				treino.setEnviouMailAindaTempo(1);				
				treinoRepository.save(treino);
			}
		}
	}

	public void addSeteDias(Long id) {
		Optional<Treino> treinoBusca = this.findOne(id);
		Treino treino = new Treino();
		if(treinoBusca.isPresent()){
			treino = treinoBusca.get();
			
			Calendar calhj = Calendar.getInstance();
			calhj.setTime(treino.getDataRespostaFormulario());
			LocalDate dataFormularioAddSeteDias = LocalDate.of(calhj.get(Calendar.YEAR), calhj.get(Calendar.MONTH)+1, calhj.get(Calendar.DAY_OF_MONTH));
			dataFormularioAddSeteDias = dataFormularioAddSeteDias.plusDays(7);
			
			treino.setDataRespostaFormulario(Date.from(dataFormularioAddSeteDias.atStartOfDay(ZoneId.systemDefault()).toInstant()));
			treinoRepository.save(treino);
		}
		
	}

	public boolean isAlunoNovo(Treino treino) {
		List<Treino> treinos = treinoRepository.buscaTreinosByIdAluno(treino.getAluno().getIdAluno());
		if(treinos != null && treinos.size() > 1) //existe mais de 1 treino do aluno, quer dizer que não é novo
			return false;
		return true;
	}

}
