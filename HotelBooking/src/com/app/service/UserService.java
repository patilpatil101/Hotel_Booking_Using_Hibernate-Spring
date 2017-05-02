package com.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IUserDao;
import com.app.pojos.Login;
import com.app.pojos.Reservation;
import com.app.pojos.RoomDetails;

@Service
@Transactional
public class UserService implements IUserService {

	@Autowired
	private IUserDao userDao;
	
	@Override
	public Reservation reservedRooms(Reservation reservation,Login login,RoomDetails details) {
		
		return userDao.reservedRooms(reservation,login,details);
	}

	@Override
	public Reservation getReservationInfo(int userId) {
		// TODO Auto-generated method stub
		if(userDao.getReservationInfo(userId)==null){
			return null;
		}
		return userDao.getReservationInfo(userId);
	}

	@Override
	public void addRoom(Reservation r1, RoomDetails details) {
		r1.setTotalRent(r1.getTotalRent()+details.getRent());
		System.out.println(r1.getTotalRent());
		System.out.println(details.getRent());
		r1.setNoOfRooms(r1.getNoOfRooms()+1);
		details.setStatus("alloted");
		userDao.addRoom(r1,details);
	}

}
