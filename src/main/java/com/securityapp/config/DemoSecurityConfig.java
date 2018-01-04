package com.securityapp.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
@Configuration
@EnableWebSecurity
public class DemoSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		
		//Add users for in memory authentication
		
		auth.inMemoryAuthentication().withUser("John").password("test123").roles("EMPLOYEE");
		auth.inMemoryAuthentication().withUser("Mary").password("test123").roles("MANAGER");
		auth.inMemoryAuthentication().withUser("Hassan").password("test123").roles("LEADER");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().anyRequest().authenticated().and()
		.formLogin().loginPage("/showMyLoginForm")
		.loginProcessingUrl("/authenticateTheUser")
		.permitAll().and().logout();
	}

	
}
