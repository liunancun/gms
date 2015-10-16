package com.lnc.gms.user.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.lnc.gms.common.utils.DateUtils;
import com.lnc.gms.user.mapper.UserMapper;
import com.lnc.gms.user.po.UserPo;
import com.lnc.gms.user.service.UserService;

public class UserServiceImpl implements UserService {

	@Resource
	private UserMapper userMapper;

	@Override
	public List<UserPo> query(UserPo user) {

		List<UserPo> users = userMapper.query(user);

		return users;
	}

	@Override
	public UserPo queryById(String id) {

		UserPo user = userMapper.queryById(id);

		return user;
	}

	@Override
	public void save(UserPo user) {

		// 设置创建时间
		user.setCreateTime(DateUtils.currentTime());

		userMapper.insert(user);
	}

	@Override
	public void delete(String id) {
		userMapper.delete(id);
	}

	@Override
	public void update(UserPo user) {
		userMapper.update(user);
	}

}
