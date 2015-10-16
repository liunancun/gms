package com.lnc.gms.user.mapper;

import java.util.List;

import com.lnc.gms.user.po.UserPo;

public interface UserMapper {

	List<UserPo> query(UserPo user);

	UserPo queryById(String id);

	void insert(UserPo user);

	void delete(String id);

	void update(UserPo user);

}
