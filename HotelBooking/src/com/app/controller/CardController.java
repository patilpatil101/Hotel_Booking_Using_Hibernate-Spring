package com.app.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import com.app.pojos.Payment;
import com.app.service.CardService;

@Controller
@RequestMapping("/hotelbooking")
public class CardController {
	@Autowired
	private CardService service;
	
	@RequestMapping(value="/payment/{resId}",method = RequestMethod.GET)  
	public String showpayment(@PathVariable int resId,Model map,HttpSession hs)
	{
		map.addAttribute("months", service.getMonths());
		map.addAttribute("years", service.getYears());
		 map.addAttribute(new Payment());
	     return "User/payment";
	}
	
	@RequestMapping(value="/payment/{resId}", method = RequestMethod.POST)
	public String verifyTransaction(RestTemplate rest, @Valid Payment card, BindingResult res, Model map, HttpSession hs) {
		System.out.println("in verify tx");
		if (res.hasErrors()) {
			System.out.println("p.l errs");
			return "User/payment";
		}
		System.out.println("sending card " + card);

//		int merchantId = 1;// In entire web app, ONLY this is hard coded, can be
//							// later replace it  by value from DB.
//
//		double amount = (double) hs.getAttribute("bill");
//		String resp = null;
//		try {
//			resp = rest.postForObject(URL.concat("/card/verify/{id}/{amount}"),
//					card, String.class, merchantId, amount);
//		} catch (Exception e) {
//			System.out.println("err in verify tx " + e);
//			resp = e.getMessage();
//		}
//		System.out.println("resp " + resp);
//		hs.setAttribute("tx_sts", resp);

		return "User/payment";
	}

}
