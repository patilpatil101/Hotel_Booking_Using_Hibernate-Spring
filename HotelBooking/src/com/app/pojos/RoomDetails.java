package com.app.pojos;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="room_details")
public class RoomDetails {
	private Integer roomNo;
	private int roomCapacity;
	private double rent;
	private String room_image;
	private String status;
	
	private RoomCategoryType categoryType;
	private Reservation reservation;

	public RoomDetails() {
		
	}
	public RoomDetails(int roomNo) {
		this.roomNo=roomNo;
	}

	public RoomDetails(int roomCapacity, double rent, String room_image, String status) {
		super();
		this.roomCapacity = roomCapacity;
		this.rent = rent;
		this.room_image = room_image;
		this.status = status;
	}

	@Id
	@GeneratedValue
	public Integer getRoomNo() {
		return roomNo;
	}

	public void setRoomNo(Integer roomNo) {
		this.roomNo = roomNo;
	}

	public int getRoomCapacity() {
		return roomCapacity;
	}

	public void setRoomCapacity(int roomCapacity) {
		this.roomCapacity = roomCapacity;
	}

	@Column(columnDefinition="double(7,2)")
	public double getRent() {
		return rent;
	}

	public void setRent(double rent) {
		this.rent = rent;
	}

	public String getRoom_image() {
		return room_image;
	}

	public void setRoom_image(String room_image) {
		this.room_image = room_image;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="category_id")
	public RoomCategoryType getCategoryType() {
		return categoryType;
	}

	public void setCategoryType(RoomCategoryType categoryType) {
		this.categoryType = categoryType;
	}

	@ManyToOne
	@JoinColumn(name="reservation_id",unique=true)
	public Reservation getReservation() {
		return reservation;
	}

	public void setReservation(Reservation reservation) {
		this.reservation = reservation;
	}

	public void addRoomType(RoomCategoryType categoryType){
		this.categoryType=categoryType;
		categoryType.setRoomDetails(this);
	}
	@Override
	public String toString() {
		return "RoomDetails [roomNo=" + roomNo + ", roomCapacity=" + roomCapacity + ", rent=" + rent + ", room_image="
				+ room_image + ", status=" + status + "]";
	}
	
	
}
