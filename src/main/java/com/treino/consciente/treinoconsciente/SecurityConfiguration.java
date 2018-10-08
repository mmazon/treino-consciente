package com.treino.consciente.treinoconsciente;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
	    .antMatchers("/formulario/**").permitAll()
	    .antMatchers("/css/**").permitAll()
	    .antMatchers("/js/**").permitAll()
	    .antMatchers("/images/**").permitAll()
        .anyRequest()
        .authenticated()
        .and()
        .formLogin()
        .loginPage("/login")
        .permitAll()
        .successForwardUrl("/")
        .and()
        .logout()
        .permitAll()
        .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
        .logoutSuccessUrl("/login");

	}
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		 auth.inMemoryAuthentication()
         .withUser("mazon")
         .password(passwordEncoder().encode("admin"))
         .roles("ADMIN")
         .and()
         .withUser("rafa")
         .password(passwordEncoder().encode("admin"))
         .roles("ADMIN")
         .and()
         .withUser("josue")
         .password(passwordEncoder().encode("admin"))
         .roles("ADMIN")
		 .and()
         .withUser("rodrigo")
         .password(passwordEncoder().encode("admin"))
         .roles("ADMIN");
	}
	 @Bean
	    public BCryptPasswordEncoder passwordEncoder() {
	        return new BCryptPasswordEncoder();
	}
}
