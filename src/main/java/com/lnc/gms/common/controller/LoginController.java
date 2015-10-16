package com.lnc.gms.common.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lnc.gms.user.po.UserPo;
import com.lnc.gms.user.service.UserService;

@Controller
public class LoginController {

	@Resource
	private UserService userService;

	@RequestMapping("login")
	public String login(HttpSession session, String username, String password) {

		if (!StringUtils.isEmpty(username) || !StringUtils.isEmpty(password)) {
			UserPo user = userService.queryByUsername(username);
			if (user != null && password.equals(user.getPassword())) {
				session.setAttribute("user", user);
			}
		}

		return "redirect:main.action";
	}

}
