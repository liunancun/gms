package com.lnc.gms.user.mapper;

import java.util.List;

import com.lnc.gms.user.po.UserPo;

public interface UserMapper {

	List<UserPo> query(UserPo user);

	UserPo queryById(int id);

	UserPo queryByUsername(String username);

	void insert(UserPo user);

	void delete(int id);

	void update(UserPo user);

}
