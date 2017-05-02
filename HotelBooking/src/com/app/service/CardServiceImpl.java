package com.app.service;

import java.time.Month;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;

import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.springframework.stereotype.Service;

@Service
public class CardServiceImpl implements CardService {
	private Map<Integer, String> months;
	private ArrayList<Integer> years = new ArrayList<>();

	public CardServiceImpl() {
		GregorianCalendar gc = new GregorianCalendar();
		int yr = gc.get(Calendar.YEAR);
		for (int i = 0; i < 10; i++)
			years.add(yr++);
		months = Stream.of(Month.values()).collect(
				Collectors.toMap(Month::getValue, Month::name));
		System.out.println("month map "+months);
	}

	

	public Map<Integer, String> getMonths() {
		return months;
	}



	public ArrayList<Integer> getYears() {
		return years;
	}

}
