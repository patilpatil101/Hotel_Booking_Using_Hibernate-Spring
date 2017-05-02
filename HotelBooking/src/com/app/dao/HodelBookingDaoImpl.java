package com.app.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.Login;

@Repository
public class HodelBookingDaoImpl implements HotelBookingDao{
	@Autowired
	private SessionFactory sf;
	
	@Override
	public Login validate(String emailId, String password) {
		
		return (Login)sf.getCurrentSession().createQuery("select l from Login l where emailId= :em and password= :pass")
				.setParameter("em", emailId)
				.setParameter("pass", password)
				.uniqueResult();
	}
	

}
