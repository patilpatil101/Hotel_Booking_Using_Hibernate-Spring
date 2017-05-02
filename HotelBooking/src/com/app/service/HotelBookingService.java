package com.app.service;

import com.app.pojos.Login;
import com.app.pojos.Users;

public interface HotelBookingService {

	Login validateUser(String emailId,String password);
	int registerUser(Users users);

}
