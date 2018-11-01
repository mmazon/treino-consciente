package com.treino.consciente.treinoconsciente.jobs;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.Scheduled;

import com.treino.consciente.treinoconsciente.service.TreinoService;

@Configuration
public class JobsDoDia {
	
	Logger logger = LoggerFactory.getLogger(JobsDoDia.class);
	
	@Autowired
	private TreinoService treinoService;
	private static final String TIME_ZONE = "America/Sao_Paulo";
	
//	@Scheduled(cron = "*/30 * * * * *", zone = TIME_ZONE)

	@Scheduled(cron = "0 0 12 * * *", zone = TIME_ZONE)
	public void perform() throws Exception {
		logger.warn("Job verificaEnviarEmailRenovacao Started at :" + new Date());
		treinoService.verificaEnviarEmailRenovacao();
		
		logger.warn("Job verificaEnviarEmailPesquisa Started at :" + new Date());
		treinoService.verificaEnviarEmailPesquisa();
		
		logger.warn("Job verificaEnviarEmailAindaTempo Started at :" + new Date());
		treinoService.verificaEnviarEmailAindaTempo();
		
		logger.warn("Job verificaReentradasTreinos Started at :" + new Date());
		treinoService.verificaReentradasTreinos();
	}

	 
}