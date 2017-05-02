package com.app.service;

import java.util.List;

import com.app.pojos.RoomDetails;
import com.app.pojos.Users;

public interface IAdminService {
	List<Users> listofUsers();
	void unsubscribeUsers(int id); 
	int addRoom(RoomDetails roomDetails); 

	List<RoomDetails> listOfRooms();
	void remove(int roomNo);
	RoomDetails fetchRoomDetails(int roomNo);
	void updateRoom(RoomDetails roomDetails);
}
