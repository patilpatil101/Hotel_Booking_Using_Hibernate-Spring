package com.app.service;



import com.app.pojos.Login;
import com.app.pojos.Reservation;
import com.app.pojos.RoomDetails;

public interface IUserService {

	Reservation reservedRooms(Reservation reservation, Login login, RoomDetails details);

	Reservation getReservationInfo(int userId);

	void addRoom(Reservation r1, RoomDetails details);

	

}
