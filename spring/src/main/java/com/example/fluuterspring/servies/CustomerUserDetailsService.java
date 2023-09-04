package com.example.fluuterspring.servies;

import com.example.fluuterspring.entities.AppUsers;
import com.example.fluuterspring.repos.AppUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomerUserDetailsService implements UserDetailsService {

    @Autowired
    private AppUserRepository appUserRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        final AppUsers appusers = appUserRepository.findByUserName(username).orElseThrow(() -> new UsernameNotFoundException("User does not exist"));
        return User.builder().username(appusers.getUserName()).password(appusers.getPassword()).roles(appusers.getRole()).build();
    }
}
