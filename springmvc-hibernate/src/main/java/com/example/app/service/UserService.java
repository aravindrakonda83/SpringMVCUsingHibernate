package com.example.app.service;

import java.util.List;

import com.example.app.model.User;

public interface UserService {
    void saveUser(User user);
    List<User> getAllUsers();
}
