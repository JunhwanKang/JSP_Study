package com.icia.example03_2.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.icia.example03_2.editor.CustomLevelEditor;
import com.icia.example03_2.editor.CustomLocalDateEditor;
import com.icia.example03_2.vo.Attachment;
import com.icia.example03_2.vo.Level;
import com.icia.example03_2.vo.User;
import com.icia.example03_2.vo.UserJoinDto;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class UserController {
	@Autowired
	private CustomLocalDateEditor customLocalDateEditor;
	@Autowired
	private CustomLevelEditor customLevelEditor;
	
	@InitBinder
	public void init(WebDataBinder wdb) {
		wdb.registerCustomEditor(LocalDate.class,"birthday", customLocalDateEditor);
		wdb.registerCustomEditor(Level.class,"level", customLevelEditor);
	}
	
	@GetMapping("/user/join")
	public ModelAndView join() {
		return new ModelAndView("join");
	}
	
	@PostMapping("/user/join")
	public ModelAndView join(@ModelAttribute UserJoinDto dto, RedirectAttributes ra ) {
		User user = User.builder().username(dto.getUsername()).password(dto.getPassword())
				.email(dto.getEmail()).birthday(dto.getBirthday()).irum(dto.getIrum())
				.joinday(LocalDate.now()).level(Level.NORMAL).loginFailureCnt(0)
				.enabled(true).build();
		if(dto.getSajins()!=null) {
			List<String> profiles = new ArrayList<>();
			for(MultipartFile sajin : dto.getSajins()) {
				profiles.add(sajin.getOriginalFilename());
			}
			user.setProfiles(profiles);
		}
		ra.addFlashAttribute("user", user);
		ra.addFlashAttribute("msg", "가입을 환영합니다");
		return new ModelAndView("redirect:/user/login");
	}
	
	@GetMapping("/user/login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
}
