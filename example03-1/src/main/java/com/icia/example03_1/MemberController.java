package com.icia.example03_1;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.icia.example03_1.editor.CustomLocalDateEditor;
import com.icia.example03_1.vo.Level;
import com.icia.example03_1.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member")
@Slf4j
public class MemberController {
	@Autowired
	private CustomLocalDateEditor customLocalDateEditor; 
	
	@InitBinder
	public void init(WebDataBinder binder) {
		binder.registerCustomEditor(LocalDate.class, "birthday", customLocalDateEditor);
	}
	@GetMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("register");
	}
	
	@PostMapping("/register")
	public ModelAndView register(@ModelAttribute Member member, @RequestParam MultipartFile sajin,
			RedirectAttributes ra) {
		// spring => spring   아이디와 사진의 이름을 같게 하자(확장자에 주의 .jpg, .png 등등)
		String originalFileName = sajin.getOriginalFilename();
		int indexOfLastDot = originalFileName.lastIndexOf(".");
		String extension = originalFileName.substring(indexOfLastDot);
		String profile = member.getId() + extension;
		member.setEnabled(true).setLevel(Level.NORMAL).setLoginFailurecnt(0)
			.setJoindate(LocalDate.now()).setProfile(profile);
		log.info("{}", member);
		ra.addFlashAttribute("msg", "가입을 환영합니다");
		return new ModelAndView("redirect:/member/login");
	}
	@GetMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
}
