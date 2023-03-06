package com.springsecurity.user.registration.service;

import com.springsecurity.user.registration.entity.User;
import com.springsecurity.user.registration.user.CrmUser;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {

    User findByUserName(String userName);

    void save(CrmUser crmUser);
}
