package com.lnc.gms.common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping("login")
	public String login(HttpServletRequest request, HttpSession session) {

		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if ("admin".equals(username) && "admin".equals(password)) {
			session.setAttribute("login", "login");
		}

		return "redirect:main.action";
	}

}
