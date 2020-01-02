/**
 * Copyright &copy; 2012-2014 <a href="http://www.huayingsoft.com">JGGFrame</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.sys.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.sys.entity.UserPublic;

import java.util.List;

/**
 * 用户DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
@MyBatisDao
public interface UserPublicDao extends CrudDao<UserPublic> {
	
	/**
	 * 根据登录名称查询用户
	 * @param loginName
	 * @return
	 */
	public UserPublic getByLoginName(UserPublic userPublic);

	/**
	 * 根据手机号查询用户
	 * @param loginName
	 * @param passWord
	 * @return
	 */
	public UserPublic getByMobile(UserPublic userPublic);
	/**
	 * 通过OfficeId获取用户列表，仅返回用户id和name（树查询用户时用）
	 * @param userPublic
	 * @return
	 */
	public List<UserPublic> findUserByOfficeId(UserPublic userPublic);
	
	/**
	 * 查询全部用户数目
	 * @return
	 */
	public long findAllCount(UserPublic userPublic);
	
	/**
	 * 更新用户密码
	 * @param userPublic
	 * @return
	 */
	public int updatePasswordById(UserPublic userPublic);
	
	/**
	 * 更新登录信息，如：登录IP、登录时间
	 * @param userPublic
	 * @return
	 */
	public int updateLoginInfo(UserPublic userPublic);

	/**
	 * 删除用户角色关联数据
	 * @param userPublic
	 * @return
	 */
	public int deleteUserRole(UserPublic userPublic);
	
	/**
	 * 插入用户角色关联数据
	 * @param userPublic
	 * @return
	 */
	public int insertUserRole(UserPublic userPublic);
	
	/**
	 * 更新用户信息
	 * @param userPublic
	 * @return
	 */
	public int updateUserInfo(UserPublic userPublic);

}
