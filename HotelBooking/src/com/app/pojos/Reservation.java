package com.app.pojos;

import java.util.Date;
import java.util.LinkedList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="reservation")
public class Reservation {
	
	private Integer reservationId;
	
	@DateTimeFormat(pattern="yyyy-mm-dd")
	private Date dateIn;
	@DateTimeFormat(pattern="yyyy-mm-dd")
	private Date dateOut;
	
	private int noOfRooms;
	private int noOfAdults;
	private int noOfchilds;
	private double totalRent;
	private String reservationStatus;
	
	private Users users;	
	List<RoomDetails> roomDetails =new LinkedList<>();
	public Reservation() {
		
	}
	
	public Reservation(Date dateIn, Date dateOut, int noOfRooms, int noOfAdults, int noOfchilds, double totalRent,
			String reservationStatus) {
		super();
		this.dateIn = dateIn;
		this.dateOut = dateOut;
		this.noOfRooms = noOfRooms;
		this.noOfAdults = noOfAdults;
		this.noOfchilds = noOfchilds;
		this.totalRent = totalRent;
		this.reservationStatus = reservationStatus;
	}

	@Id
	@GeneratedValue
	public Integer getReservationId() {
		return reservationId;
	}
	public void setReservationId(Integer reservationId) {
		this.reservationId = reservationId;
	}
	
	public int getNoOfAdults() {
		return noOfAdults;
	}

	public void setNoOfAdults(int noOfAdults) {
		this.noOfAdults = noOfAdults;
	}

	public int getNoOfchilds() {
		return noOfchilds;
	}

	public void setNoOfchilds(int noOfchilds) {
		this.noOfchilds = noOfchilds;
	}

	@Temporal(TemporalType.DATE)
	@Column(nullable=false)
	public Date getDateIn() {
		return dateIn;
	}
	
	public void setDateIn(Date dateIn) {
		this.dateIn = dateIn;
	}
	
	@Temporal(TemporalType.DATE)
	@Column(nullable=false)
	public Date getDateOut() {
		return dateOut;
	}
	public void setDateOut(Date dateOut) {
		this.dateOut = dateOut;
	}
	@Column(nullable=false)
	public int getNoOfRooms() {
		return noOfRooms;
	}
	public void setNoOfRooms(int noOfRooms) {
		this.noOfRooms = noOfRooms;
	}
	
	@Column(columnDefinition="double(7,2)")
	public double getTotalRent() {
		return totalRent;
	}
	public void setTotalRent(double totalRent) {
		this.totalRent = totalRent;
	}
	public String getReservationStatus() {
		return reservationStatus;
	}
	public void setReservationStatus(String reservationStatus) {
		this.reservationStatus = reservationStatus;
	}
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="user_id",unique=true)
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	
	@OneToMany(mappedBy="reservation",cascade=CascadeType.ALL)
	public List<RoomDetails> getRoomDetails() {
		return roomDetails;
	}
	public void setRoomDetails(List<RoomDetails> roomDetails) {
		this.roomDetails = roomDetails;
	}
	
	public void addUser(Users users){
		this.users=users;
		users.setReservation(this);
	}
	
	public void addRoomDetails(RoomDetails details){
		this.roomDetails.add(details);
		details.setReservation(this);
		
	}
	
	@Override
	public String toString() {
		return "Reservation [reservationId=" + reservationId + ", dateIn=" + dateIn + ", dateOut=" + dateOut
				+ ", noOfRooms=" + noOfRooms + ", totalRent=" + totalRent + ", reservationStatus=" + reservationStatus
				+ "]";
	}
	
}
