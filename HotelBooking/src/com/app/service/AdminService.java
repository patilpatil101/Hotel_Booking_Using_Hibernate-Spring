package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IAddminDao;
import com.app.pojos.RoomDetails;
import com.app.pojos.Users;

@Service
@Transactional
public class AdminService implements IAdminService {

	@Autowired
	private IAddminDao dao;
	@Override
	public List<Users> listofUsers() {
		
		return dao.listofUsers();
	}
	@Override
	public void unsubscribeUsers(int id) {
		dao.unsubscribeUsers(id);
		
	}
	@Override
	public int addRoom(RoomDetails roomDetails) {
		
		return dao.addRoom(roomDetails);
	}
	@Override
	public List<RoomDetails> listOfRooms() {
		
		return dao.listOfRooms();
	}
	@Override
	public void remove(int roomNo) {
		dao.removeRoom(roomNo);
		
	}
	@Override
	public RoomDetails fetchRoomDetails(int roomNo) {
	
		return dao.fetchRoomDetails(roomNo);
	}
	@Override
	public void updateRoom(RoomDetails roomDetails) {
		
		 dao.updateRoom(roomDetails);
	}

}
