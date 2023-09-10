package com.example.fluuterspring.security;

import com.example.fluuterspring.servies.CustomUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
public class SecurityConfig {

    @Autowired
    private JWTEntryPoint jwtEntryPoint;

    @Autowired
    private JwtAuthFilter jwtAuthFilter;

    @Bean
    SecurityFilterChain defaultSecurityFilterChain(HttpSecurity http) throws Exception {
        http.csrf(AbstractHttpConfigurer::disable)
                .authorizeHttpRequests()// HTTP 요청의 권한을 설정 하기 위한 메서드 호출 시작
                .requestMatchers(HttpMethod.GET).permitAll() // GET 메서드에 대한 모든 요청을 인증 없이 허용
                .requestMatchers("/api/auth/**").permitAll()// 해당 패턴의 요청을 인증 없이 허용
                .requestMatchers(HttpMethod.POST,
                        "/api/bus/add",
                        "api/schedule/add",
                        "api/route/add").authenticated()// 해당 패턴의  POST 요청은 인증이 필요
                .requestMatchers(HttpMethod.POST, "/api/reservation/add").permitAll()// 해당 패턴의 POST 요청은 인즈 없이 허용
                .and()
                .exceptionHandling(exception -> exception.authenticationEntryPoint(jwtEntryPoint)) // 인증되지 않은 사용자 접근 시 인증 진입 지점 설정
                .sessionManagement(session -> session.sessionCreationPolicy(SessionCreationPolicy.STATELESS));
        http.addFilterBefore(jwtAuthFilter, UsernamePasswordAuthenticationFilter.class);
        return http.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration configuration) throws Exception {
        return configuration.getAuthenticationManager();
    }
}
