package com.lnc.gms.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lnc.gms.user.po.UserPo;

@Controller
@RequestMapping("user")
public class UserController {

	@RequestMapping("list")
	public String list(Model model, HttpServletRequest request) {

		String username = request.getParameter("username");
		model.addAttribute("username", username);

		List<UserPo> users = new ArrayList<UserPo>();
		UserPo user = null;
		for (int i = 1; i <= 100; i++) {
			user = new UserPo("编号-" + i, "用户-" + i + i, null, "描述-" + i);
			if (StringUtils.isEmpty(username) || user.getUsername().contains(username)) {
				users.add(user);
			}
		}

		model.addAttribute("users", users);

		return "user/list";
	}

	@RequestMapping("initAdd")
	public String initAdd() {
		return "user/add";
	}

	@RequestMapping("add")
	public String add() {
		return "redirect:list.action";
	}

	@RequestMapping("initEdit")
	public String initEdit() {
		return "user/edit";
	}

	@RequestMapping("edit")
	public String edit() {
		return "redirect:list.action";
	}

	@RequestMapping("delete")
	public String delete() {
		return "redirect:list.action";
	}

}
