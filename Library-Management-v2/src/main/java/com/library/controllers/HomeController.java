package com.library.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.library.dtos.LoginDTO;
import com.library.dtos.PasswordResetDTO;
import com.library.entities.Student;
import com.library.entities.User;
import com.library.services.StudentService;
import com.library.services.UserService;

@Controller
public class HomeController {

	@Autowired private HttpSession session;
	@Autowired private UserService uservice;
	@Autowired private StudentService sservice;

	@GetMapping("/")
	public String login() {
		return "login";
	}

	@PostMapping("/validate")
	public String validate(LoginDTO dto,RedirectAttributes ra) {
		User user=uservice.validate(dto);
		if(user==null) {
			ra.addFlashAttribute("error", "Invalid username or password");
			return "redirect:/";
		}else {
			session.setAttribute("uname", user.getUname());
			session.setAttribute("userid", user.getUserid());
			session.setAttribute("role", user.isIsadmin()?"Admin":"Student");
			session.setAttribute("id",user.isIsadmin()? null : user.getStudent().getId());
			return "redirect:/dashboard";
		}
	}

	@GetMapping("/register")
	public String studentRegister() {
		return "register";
	}


	@GetMapping("/logout")
	public String logout() {
		session.invalidate();
		return "redirect:/";
	}

	@PostMapping("/register")
	public String register(Student std,RedirectAttributes ra) {
		sservice.saveStudent(std);
		ra.addFlashAttribute("msg", "Student registered");
		return "redirect:/users";
	}

	@GetMapping("/ChangePwd")
	public String changepassword() {
		return "ChangePwd";
	}

	@PostMapping("/ChangePwd")
	public String updatePwd(PasswordResetDTO dto, RedirectAttributes ra) {
		dto.setUserid(session.getAttribute("userid").toString());
		if(uservice.verifyUser(dto)) {
			uservice.updatePassword(dto);
			ra.addFlashAttribute("msg", "Password updated");
		}else {
			ra.addFlashAttribute("error", "Invalid current password");
		}
		return "redirect:/ChangePwd";
	}
}
