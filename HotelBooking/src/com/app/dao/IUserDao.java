package com.app.dao;


import com.app.pojos.Login;
import com.app.pojos.Reservation;
import com.app.pojos.RoomDetails;

public interface IUserDao {

	Reservation reservedRooms(Reservation reservation, Login login, RoomDetails details);

	Reservation getReservationInfo(int userId);

	void addRoom(Reservation r1, RoomDetails details);
	

}
