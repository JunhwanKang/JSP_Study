package com.icia.example03_1;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.icia.example03_1.editor.CustomLocalDateEditor;
import com.icia.example03_1.vo.User;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/sample3")
@Controller
public class SampleController {
	@Autowired
	private CustomLocalDateEditor customLocalDateEditor;
	
	@InitBinder
	public void init(WebDataBinder binder) {
		binder.registerCustomEditor(LocalDate.class, "birthday", customLocalDateEditor);
	}
	// username=spring&birthday=1990-10-25 이렇게 값을 받아오겠다.
	@RequestMapping("/test1")
	//아래 처럼 하면 birthday를 보내도 되고 안보내도 됨 (선택 입력이 된다)
//	public ModelAndView sample(@RequestParam String username, @RequestParam(required = false) LocalDate birthday) {
	public ModelAndView sample(@RequestParam String username, @RequestParam LocalDate birthday) {
		log.info("{}, {}", username, birthday);
		return null;
	}
	@RequestMapping("/user/join")
	public ModelAndView join() {
		return new ModelAndView("join");
	}
	
	@RequestMapping(value="/user/join", method=RequestMethod.POST)
	public ModelAndView join(@ModelAttribute User user, @RequestParam(required = false) MultipartFile sajin) {
		user.setProfile(sajin.getOriginalFilename());
		File file = new File("c/upload", sajin.getOriginalFilename());
		try {
			FileCopyUtils.copy(sajin.getBytes(), file);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
