package com.springsecurity.user.registration.entity.dao;

import com.springsecurity.user.registration.entity.User;

public interface UserDao {

    User findByUserName(String userName);
    
    void save(User user);
    
}
