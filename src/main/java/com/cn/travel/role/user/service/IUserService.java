package com.cn.travel.role.user.service;

import com.cn.travel.cms.order.entity.Order;
import com.cn.travel.cms.scenicSpotComment.entity.ScenicSpotComment;
import com.cn.travel.role.user.entity.Porvice;
import com.cn.travel.role.user.entity.User;
import com.cn.travel.web.base.PageParam;

import java.util.List;

public interface IUserService {

    public long count()throws Exception;

    public User findById(String id)throws Exception;

    public User findByUserName(String userName)throws Exception;

    public List<User> findList()throws Exception;

    public void save(User user)throws Exception;

    public void update(User user)throws Exception;

    public void deleteByid(String id)throws Exception;

    public List<User> findByPage(int currentPage,int pageSize, String query)throws Exception;

    public List<Porvice> countPorvice()throws Exception;

    public User login(String userName, String password)throws Exception;

    public PageParam<ScenicSpotComment> findByPageByUserId(int currentPage, int pageSize, String pjyh)throws Exception;

}
