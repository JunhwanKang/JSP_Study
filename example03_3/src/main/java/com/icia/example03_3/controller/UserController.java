package com.icia.example03_3.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.icia.example03_3.dto.UserJoinDto;
import com.icia.example03_3.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService service;
	
	@GetMapping("/")
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	
	@GetMapping("/user/join")
	public ModelAndView join() {
		return new ModelAndView("join");
	}
	
	@PostMapping("/user/join")
	public ModelAndView join(@ModelAttribute UserJoinDto dto, RedirectAttributes ra) {
		service.join(dto);
		ra.addFlashAttribute("msg", "가입을 환영합니다.");
		return new ModelAndView("redirect:/user/login");
	}
	
	@GetMapping("/user/login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
	
	@PostMapping("/user/login")
	public ModelAndView login(@RequestParam String username, @RequestParam String password, HttpSession session,
			RedirectAttributes ra) {
		boolean result = service.login(username, password);
		if(result==true) {
			session.setAttribute("username", username);
			return new ModelAndView("redirect:/");
		} else {
			ra.addFlashAttribute("msg", "로그인에 실패했습니다");
			return new ModelAndView("redirect:/user/login");
		}
	}
	
	@GetMapping("/user/password_check")
	public ModelAndView passwordCheck() {
		return new ModelAndView("password_check");
	}
	
	@PostMapping("/user/password_check")
	public ModelAndView passwordCheck(@RequestParam String password, HttpSession session,
			RedirectAttributes ra) {
		String username = (String)session.getAttribute("username");
		boolean result = service.passwordCheck(username, password);
		if(result==true) {
			session.setAttribute("passwordCheck", true);
			return new ModelAndView("redirect:/user/info");
		} else {
			ra.addFlashAttribute("msg", "비밀번호를 확인하지 못 했습니다");
			return new ModelAndView("redirect:/user/password_check");
		}
	}
	
	@GetMapping("/user/info")
	public ModelAndView info(HttpSession session) {
		if(session.getAttribute("passwordCheck")==null) {
			return new ModelAndView("redirect:/user/password_check");
		} else {
			String username = (String)session.getAttribute("username");
			return new ModelAndView("info").addObject("user", service.info(username));
		}
	}
}
