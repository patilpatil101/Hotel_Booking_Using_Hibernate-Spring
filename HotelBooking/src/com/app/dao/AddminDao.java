package com.app.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.pojos.RoomDetails;
import com.app.pojos.Users;

@Repository
public class AddminDao implements IAddminDao {

	@Autowired
	private SessionFactory sf;
	@SuppressWarnings("unchecked")
	@Override
	public List<Users> listofUsers() {
		
		return sf.getCurrentSession().createQuery("select s from Users s").list();
	}
	
	
	@Override
	public void unsubscribeUsers(int id) {
		
		System.out.println("dao");
		Users users = (Users)sf.getCurrentSession()
							   .createQuery("select u from Users u where u.userId= :id")
							   .setParameter("id", id).uniqueResult();
		sf.getCurrentSession().delete(users);
	}


	@Override
	public int addRoom(RoomDetails roomDetails) {
		
		roomDetails.addRoomType(roomDetails.getCategoryType());
		int id = (Integer)sf.getCurrentSession().save(roomDetails);
		return id;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<RoomDetails> listOfRooms() {
	
		return sf.getCurrentSession().createQuery("select r from RoomDetails r").list();
	}


	@Override
	public void removeRoom(int roomNo) {
		

		sf.getCurrentSession().delete(new RoomDetails(roomNo));
	}


	@Override
	public RoomDetails fetchRoomDetails(int roomNo) {
		// TODO Auto-generated method stub
		return (RoomDetails)sf.getCurrentSession().createQuery("select r from RoomDetails r where r.roomNo=:rn")
									 .setParameter("rn",roomNo ).uniqueResult();
	}


	@Override
	public void updateRoom(RoomDetails roomDetails) {
		sf.getCurrentSession().update(roomDetails);
		
	}
}




