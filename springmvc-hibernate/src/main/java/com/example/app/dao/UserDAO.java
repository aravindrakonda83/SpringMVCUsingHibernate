package com.example.app.dao;

import java.util.List;

import com.example.app.model.User;


public interface UserDAO {
    void saveUser(User user);
    List<User> getAllUsers();
}
