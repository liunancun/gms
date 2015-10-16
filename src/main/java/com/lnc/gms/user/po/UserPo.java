package com.lnc.gms.user.po;

import java.sql.Timestamp;

public class UserPo {

	private String id;

	private String username;

	private String password;

	private Timestamp createTime;

	private String desc;

	public UserPo() {
	}

	public UserPo(String id, String username) {
		this.id = id;
		this.username = username;
	}

	public UserPo(String id, String username, Timestamp createTime, String desc) {
		this.id = id;
		this.username = username;
		this.createTime = createTime;
		this.desc = desc;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Timestamp getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	@Override
	public String toString() {
		return "UserPo [id=" + id + ", username=" + username + ", password=" + password + ", createTime=" + createTime
				+ ", desc=" + desc + "]";
	}

}
