package com.niit.dao;

import com.niit.model.User;

public interface UserDao {
	public void InsertUser(User u);
    public User getUserById(int uid);
    public User getUserByName(String uname);
    public User getUserByEmail(String uemail);
}
