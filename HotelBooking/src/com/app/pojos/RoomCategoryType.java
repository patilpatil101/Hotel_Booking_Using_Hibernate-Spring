package com.app.pojos;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="room_category_type")
public class RoomCategoryType {
	private Integer categoryID;
	private String categoryType;
	private String categorySubtype;
	
	private RoomDetails roomDetails;
	
	public RoomCategoryType() {
	
	}

	public RoomCategoryType(String categoryType, String categorySubtype) {
		super();
		this.categoryType = categoryType;
		this.categorySubtype = categorySubtype;
	}

	@Id
	@GeneratedValue
	public Integer getCategoryID() {
		return categoryID;
	}

	public void setCategoryID(Integer categoryID) {
		this.categoryID = categoryID;
	}

	public String getCategoryType() {
		return categoryType;
	}

	public void setCategoryType(String categoryType) {
		this.categoryType = categoryType;
	}

	public String getCategorySubtype() {
		return categorySubtype;
	}

	public void setCategorySubtype(String categorySubtype) {
		this.categorySubtype = categorySubtype;
	}

	@OneToOne(mappedBy="categoryType")
	public RoomDetails getRoomDetails() {
		return roomDetails;
	}

	public void setRoomDetails(RoomDetails roomDetails) {
		this.roomDetails = roomDetails;
	}

	@Override
	public String toString() {
		return "RoomCategoryType [categoryID=" + categoryID + ", categoryType=" + categoryType + ", categorySubtype="
				+ categorySubtype + "]";
	}
	
}
