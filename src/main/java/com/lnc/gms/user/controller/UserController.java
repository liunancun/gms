package com.lnc.gms.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("user")
public class UserController {

	@RequestMapping("list")
	public String list() {
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
