package com.anabada.domain.user;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User implements UserDetails {
	/**
	 * 
	 */
	private static final long serialVersionUID = 5633326669236264844L;
	
	private String user_email;
	private String user_name;
	private String user_nick;
	private String user_pwd;
	private String user_phone;
	private String user_addr;
	private int user_level;
	private int user_trade;
	private int user_penalty;
	private boolean user_account;
	private String user_role;
	private String user_nation;
	private String user_date;
	
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		
		List<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
        auth.add(new SimpleGrantedAuthority(user_role));
        
        return auth;
	}
	@Override
	public String getPassword() {
		// TODO Auto-generated method stub
		return this.user_pwd;
	}
	@Override
	public String getUsername() {
		// TODO Auto-generated method stub
		return this.user_email;
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return this.user_account;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}
}


