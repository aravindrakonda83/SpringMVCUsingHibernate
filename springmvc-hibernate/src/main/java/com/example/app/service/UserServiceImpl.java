package com.example.app.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.app.dao.UserDAO;
import com.example.app.model.User;

@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userDAO;

    public void saveUser(User user) {
        userDAO.saveUser(user);
    }

    public List<User> getAllUsers() {
        return userDAO.getAllUsers();
    }
}
