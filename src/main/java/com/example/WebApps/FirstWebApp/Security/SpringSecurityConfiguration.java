package com.example.WebApps.FirstWebApp.Security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.HeadersConfigurer;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SpringSecurityConfiguration {

	@Bean
	public InMemoryUserDetailsManager createUserDetailsManager() {
		// Create two users with encoded passwords
		UserDetails userDetails1 = createNewUser("Aman", "dummy");
		UserDetails userDetails2 = createNewUser("Amna", "dummydummy");

		return new InMemoryUserDetailsManager(userDetails1, userDetails2);
	}

	private UserDetails createNewUser(String username, String password) {
		return User.builder()
				.username(username)
				.password(passwordEncoder().encode(password))
				.roles("USER", "ADMIN")
				.build();
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		// Configure HTTP security
		http
				.authorizeRequests()
				.anyRequest().authenticated()
				.and()
				.formLogin()
				.permitAll()
				.and()
				.csrf().disable()
				.headers().frameOptions().disable();

		return http.build();
	}
}
