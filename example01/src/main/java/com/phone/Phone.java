package com.icia.example08.phone;

import com.icia.example08.battery.Battery;
import com.icia.example08.usim.Usim;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@AllArgsConstructor
public class Phone {
	private Battery battery;
	private Usim usim;
	private int price;
	public void introduce() {
		log.info("배터리:{}, 유심:{}, 가격:{}", battery.getBatteryMaker() , usim.getMobile(), this.price);
	}
}
