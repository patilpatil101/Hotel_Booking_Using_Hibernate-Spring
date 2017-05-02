package com.app.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.Login;
import com.app.pojos.RoomDetails;
import com.app.pojos.Users;
import com.app.service.IAdminService;

@Controller
@RequestMapping("/hotelbooking")
public class adminController {

	@Autowired
	private IAdminService service;    //to getUserList
	
	@RequestMapping("/adminhome")
	//if users role is "ADMIN"
	public String showAdminHomePage(HttpSession hs)
	{
		Login login2=(Login)hs.getAttribute("login");
		if(login2==null){
			return "login";
		}
		System.out.println("adminHome");
		return "Admin/adminHome";			//Admin's Home Page
	}
	
	
	//to display userlist of Users
	@RequestMapping("/userlist")
	public String showUserList(Model map)
	{
		System.out.println("userList");
		map.addAttribute(new Users());
		map.addAttribute("usersList",service.listofUsers());
		return "Admin/userList";
	}
	
										/*admin to add new room   */
	@RequestMapping(value="/addroom")
	public String showAddRoomForm(Model map)
	{
		map.addAttribute(new RoomDetails());
		return "Admin/addRoom";
	}
	
	
	@RequestMapping(value="/addroom" , method=RequestMethod.POST)
	public String processAddRoomForm(Model map,RedirectAttributes flashMap,RoomDetails roomDetails)
	{
		System.out.println(roomDetails);
		System.out.println(roomDetails.getCategoryType());
		flashMap.addAttribute(service.addRoom(roomDetails));
		map.addAttribute("mesg", "room added");
		return "redirect:/hotelbooking/showroom";
	}
	
									/*admin to add show room  Details  */
	
	@RequestMapping(value="/showroom")
	public String RoomDetails(Model map)
	{
		System.out.println(service.listOfRooms());
		map.addAttribute("roomList",service.listOfRooms());
		map.addAttribute(new RoomDetails());
		return "Admin/showRoomDetails";
	}
	
	@RequestMapping(value="/showroomtoguest")
	public String RoomDetailstoGuest(Model map)
	{
		System.out.println(service.listOfRooms());
		map.addAttribute("roomList",service.listOfRooms());
		map.addAttribute(new RoomDetails());
		return "showRoomDetails";
	}
										/*user to add show room  Details  */
	@RequestMapping(value="/usershowroom")
	public String ShowToUserRoomDetails(Model map)
	{
		System.out.println(service.listOfRooms());
		map.addAttribute("roomList",service.listOfRooms());
		map.addAttribute(new RoomDetails());
		return "User/showRoomDetails";
	}
	
	 @RequestMapping(value="/deleteroom/{roomNo}",method = RequestMethod.GET)  
     public String delete(@PathVariable int roomNo){  
		 System.out.println("-----"+roomNo);
		 service.remove(roomNo);
        return "redirect:/hotelbooking/showroom";  
    }  
	 
	@RequestMapping(value="/deleteuser/{userId}",method = RequestMethod.GET)
	public String processUserList(@PathVariable int userId)
	{
		System.out.println("user"+userId);
		service.unsubscribeUsers(userId);
		return "redirect:/hotelbooking/userlist";
	}

	@RequestMapping(value="/updateroom/{roomNo}",method = RequestMethod.GET)  
    public String updateRoom(@PathVariable int roomNo,Model map){  
		 System.out.println("-----"+roomNo);
		 RoomDetails details=service.fetchRoomDetails(roomNo);
		 map.addAttribute(details);
       return "Admin/addRoom";  
   }  
	@RequestMapping(value="/updateroom/{roomNo}",method = RequestMethod.POST)  
    public String updateRoomInfo(RoomDetails roomDetails){  
		 System.out.println("-----"+roomDetails);
		 service.updateRoom(roomDetails);
		 return "redirect:/hotelbooking/showroom"; 
   }  
}
