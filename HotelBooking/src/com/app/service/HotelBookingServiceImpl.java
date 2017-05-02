package com.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.HotelBookingDao;
import com.app.dao.RegistrationDao;
import com.app.pojos.Login;
import com.app.pojos.Users;

@Service
@Transactional
public class HotelBookingServiceImpl  implements HotelBookingService{

	@Autowired
	private HotelBookingDao dao;
	@Autowired
	private RegistrationDao regDao;
	@Override
	public Login validateUser(String emailId, String password) {
		
		return dao.validate(emailId, password);
	}
	
	@Override
	public int registerUser(Users users) {
		
		return regDao.registerUser(users);
	}

}
