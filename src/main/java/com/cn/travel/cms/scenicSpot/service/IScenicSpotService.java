package com.cn.travel.cms.scenicSpot.service;

import com.cn.travel.cms.scenicSpot.entity.ScenicSpot;
import com.cn.travel.cms.scenicSpotComment.entity.ScenicSpotComment;

import java.util.List;

public interface IScenicSpotService {

    public long count()throws Exception;

    public long count2()throws Exception;

    public ScenicSpot findById(String id)throws Exception;

    public List<ScenicSpot> findList()throws Exception;

    public void save(ScenicSpot scenicSpot)throws Exception;

    public void update(ScenicSpot scenicSpot)throws Exception;

    public void deleteByid(String id)throws Exception;

    public List<ScenicSpot> findByPage(int currentPage, int pageSize, String query)throws Exception;

    public List<ScenicSpot> findByPage(int currentPage, int pageSize)throws Exception;

    public boolean addComment(ScenicSpotComment scenicSpotComment);

    public List<ScenicSpotComment> findCommentById(String id, String s);

    public long commentcount();

    public List<ScenicSpotComment> findCommentByPage(int pageNumber, int pageSize, String query);

    public ScenicSpotComment findScenicCommentById(String id);

    public void deleteComentByid(String id);
}
