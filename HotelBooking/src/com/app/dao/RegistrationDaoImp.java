package com.app.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.Users;

@Repository
public class RegistrationDaoImp implements RegistrationDao{

	@Autowired
	private SessionFactory sf;
	
	@Override
	public int registerUser(Users users) {
		return (int)sf.getCurrentSession().save(users);
	}
	

}
