package org.zerock.domain;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;

import lombok.Data;
import lombok.Getter;

@Getter
public class CustomUser extends User{
	
	private static final long serialVersionUID = 1L;
	
	private EmployeeVO employee;

	public CustomUser(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);
	}
	
	public CustomUser(EmployeeVO emp) {
		super(emp.getEmpname(), emp.getEmppass(), Arrays.asList(new SimpleGrantedAuthority(emp.getAuth().getAuth())));
		this.employee = emp;
		 
	}
	
	

}
