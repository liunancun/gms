package com.lnc.gms.user.service;

import java.util.List;

import com.lnc.gms.user.po.UserPo;

public interface UserService {

	List<UserPo> query(UserPo user);

	UserPo queryById(String id);

	void save(UserPo user);

	void delete(String id);

	void update(UserPo user);

}
