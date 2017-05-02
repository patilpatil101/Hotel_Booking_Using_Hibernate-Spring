package com.app.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.Login;
import com.app.pojos.Reservation;
import com.app.pojos.RoomDetails;
import com.app.pojos.Users;

@Repository
public class UserDao implements IUserDao {
	
	@Autowired
	private SessionFactory sf;

	@Override
	public Reservation reservedRooms(Reservation reservation,Login login ,RoomDetails details) {
		
	   reservation.setNoOfRooms(1);
	   reservation.setReservationStatus("booked");
	   details.setStatus("alloted");
	   reservation.addRoomDetails(details);
	   reservation.addUser(
			   				(Users)sf.getCurrentSession().createQuery("select u from Users u where u.userId=:uId")
			   											  .setParameter("uId", login.getUserId()).uniqueResult()
			   			  );
	   reservation.setTotalRent(details.getRent());
	   sf.getCurrentSession().save(reservation);
	   System.out.println(reservation);
	   return reservation;
		
	}

	@Override
	public Reservation getReservationInfo(int userId) {
		
		System.out.println(userId);
		Users users=(Users)sf.getCurrentSession().createQuery("select u from Users u where u.userId=:uId")
			  .setParameter("uId", userId).uniqueResult();
		System.out.println(users);
		if(users.getReservation()==null){
			return null;
		}
		int id=users.getReservation().getReservationId();
		return (Reservation)sf.getCurrentSession().createQuery("select r from Reservation r join fetch r.roomDetails where r.reservationId=:uId")
				.setParameter("uId",id).uniqueResult();
	}

	@Override
	public void addRoom(Reservation r1, RoomDetails details) {
		r1.addRoomDetails(details);
		sf.getCurrentSession().update(r1);
		
	}

}
