package com.app.dao;

import com.app.pojos.Login;

public interface HotelBookingDao {

	Login validate(String emailId, String password);
}
