package com.anabada.security;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.access.AccessDeniedHandler;


/**
 * Security 설정
 */
@Configuration
public class WebSecurityConfig {
	
    @Autowired
    private DataSource dataSource;

    @Autowired
    private AccessDeniedHandler accessDeniedHandler;
    
    //설정
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http.csrf().disable()
        .authorizeRequests()
        .antMatchers(
        		"/",
                "/email",
                "/verifyCode",
        		"/chat",
        		"/test",
        		"/api/**",
        		"/join",
        		"/signup",
        		"/check/**",
        		"/assets/**",
                "/img/**",
                "/jQuery/**",
                "/css/**",
                "/js/**").permitAll()
        .antMatchers("/mypage/**").hasRole("USER")
       .antMatchers("/admin/**").hasRole("ADMIN")		// admin만 허용        
        .anyRequest().authenticated()
        .and()
        .csrf().disable().exceptionHandling()
        .accessDeniedHandler(accessDeniedHandler)
        .and()
        .formLogin()					
        .loginPage("/login")			// 변경 필요
        .loginProcessingUrl("/login")
        .defaultSuccessUrl("/")
        .permitAll() // 로그인 성공 시 redirect 이동
        .usernameParameter("user_email")
        .passwordParameter("user_pwd")
        .and()
        .logout()
        .logoutUrl("/logout")
        .logoutSuccessUrl("/")
//        .and().oauth2Login().userInfoEndpoint().userService(customOAuth2UserService)
        .permitAll()
        .and()
        .cors()
        .and()
        .httpBasic();

        return http.build();
    }

    //인증을 위한 쿼리 변경 필요!!!
    @Autowired
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication()
        .dataSource(dataSource)
        // 인증 (로그인)
        .usersByUsernameQuery(
        		"select user_email username, user_pwd password, enable " +
                "from user " +
                "where user_email = ?")
        // 권한
        .authoritiesByUsernameQuery(
        		"select user_email username, user_role role_name " +
                "from user " +
                "where user_email = ?");
    }

    // 단방향 비밀번호 암호화 
    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }
}
