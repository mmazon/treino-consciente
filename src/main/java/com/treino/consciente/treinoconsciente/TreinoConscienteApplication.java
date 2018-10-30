package com.treino.consciente.treinoconsciente;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class TreinoConscienteApplication {

	public static void main(String[] args) {
		SpringApplication.run(TreinoConscienteApplication.class, args);
	}
}
