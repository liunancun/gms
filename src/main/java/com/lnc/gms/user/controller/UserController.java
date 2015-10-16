package com.lnc.gms.user.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lnc.gms.user.po.UserPo;
import com.lnc.gms.user.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {

	@Resource
	private UserService userService;

	@RequestMapping("list")
	public String list(Model model, UserPo user) {

		List<UserPo> users = userService.query(user);

		model.addAttribute("users", users);

		return "user/list";
	}

	@RequestMapping("initAdd")
	public String initAdd() {
		return "user/add";
	}

	@RequestMapping("add")
	public String add(UserPo user) {

		userService.save(user);

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
