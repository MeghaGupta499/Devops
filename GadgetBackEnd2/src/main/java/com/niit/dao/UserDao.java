package com.niit.dao;

import com.niit.model.User;

public interface UserDao {
	public void InsertUser(User u);

    public int update(UserDao uid);
    public User getUserById(int uid);

}
