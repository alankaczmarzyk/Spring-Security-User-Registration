package com.springsecurity.user.registration.entity.dao;

import com.springsecurity.user.registration.entity.Role;

public interface RoleDao {

	public Role findRoleByName(String theRoleName);
	
}
