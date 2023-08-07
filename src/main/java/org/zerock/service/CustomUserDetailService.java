package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.zerock.domain.CustomUser;
import org.zerock.domain.EmployeeVO;
import org.zerock.mapper.EmployeeMapper;

import lombok.extern.log4j.Log4j;

@Log4j
public class CustomUserDetailService implements UserDetailsService{

	@Autowired
	private EmployeeMapper mapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		log.warn("username : " + username);
		EmployeeVO emp = mapper.read(username);
		return emp == null ? null : new CustomUser(emp);
	}
	
	

}
