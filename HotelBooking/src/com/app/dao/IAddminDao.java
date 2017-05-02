package com.app.dao;

import java.util.List;

import com.app.pojos.RoomDetails;
import com.app.pojos.Users;

public interface IAddminDao {
	List<Users> listofUsers();
	void unsubscribeUsers(int id); 
	int addRoom(RoomDetails roomDetails);
	List<RoomDetails> listOfRooms();
	void removeRoom(int roomNo);
	RoomDetails fetchRoomDetails(int roomNo);
	void updateRoom(RoomDetails roomDetails);
}
